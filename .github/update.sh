#!/bin/sh

get_last_file() {
	# sdk / imagebuilder
	__HTML=$(curl -skL "https://fw.koolcenter.com/iStoreOS/ars2/" | tr -d '\n' | sed -E -e 's/ +/ /g' -e 's/(<tr[^>]*>)/\n\1/g' | grep -Eo '^<tr.*</tr>' | grep "openwrt-${1}")
	__LAST_UPDATE_AT=""
	while read LINE
	do
		__TIME=$(echo "$LINE" | grep -Eo '[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9:]+')
		if [ -z "$__LAST_UPDATE_AT" ]; then
			__LAST_UPDATE_AT="$__TIME"
			__FIND="$LINE"
		else
			__TIME_COMPARE=$(echo  "$__TIME" | awk -v "LAST=$__LAST_UPDATE_AT" '{
				split($0,curr,/[- :]/); split(LAST,prev,/[- :]/);
				for (i=0;i<length(curr);i++) {
					if (curr[i] < prev[i] && curr[i-1] <= prev[i-1]) {
						print "-"; break;
					}
					if (curr[i] > prev[i] && curr[i-1] >= prev[i-1]) {
						print "+"; break;
					}
					if (i == length(curr) - 1) {
						print "=";
					}
				}
			}')
			[ "$__TIME_COMPARE" = "+" -o "$__TIME_COMPARE" = "=" ] && {
				__LAST_UPDATE_AT="$__TIME"
				__FIND="$LINE"
			}
		fi
	done <<-EOF
	$__HTML
	EOF
	[ -z "$__FIND" ] || {
		__FILE_NAME=$(echo "$__FIND" | grep -Eo 'href="[^"]+"' | awk '{gsub(/"/,"",$0); gsub(/^href=/,"",$0); print $0}')
		__FILE_PATH="/binary/ars2/$__FILE_NAME"
		__FILE_LINK="https://fw.koolcenter.com${__FILE_PATH}"
		__FILE_HASH=$(curl -skL "https://fw.koolcenter.com/binary/ars2/README.md" | grep "$__FILE_NAME")
		__FILE_MD5=$(echo "$__FILE_HASH" | awk -F'|' '{print $4}' | tr -d ' ')
		__FILE_SHA256=$(echo "$__FILE_HASH" | awk -F'|' '{print $3}' | tr -d ' ')
		return 0
	}
	return 1
}

update_source() {
	__VERSION_FILE=".github/version"
	eval $(cat "$__VERSION_FILE" 2>/dev/null)
	if [ "$__FILE_SHA256" = "$SHA256" ]; then
		echo "[INFO] Your source code is already up to date."
	else
		ls | while read F_D; do echo "$F_D" | grep -Eq '^(README\.md|\.git|\.github)$' || rm -rf "$F_D"; done
		wget -O "/tmp/$__FILE_NAME" "$__FILE_LINK" 2>/dev/null && tar -xf "/tmp/$__FILE_NAME" --strip-components 1 && {
			cat <<-EOF > "$__VERSION_FILE"
			FILE_NAME="$__FILE_NAME"
			LINK="$__FILE_LINK"
			UPDATE_AT="$__LAST_UPDATE_AT"
			MD5="$__FILE_MD5"
			SHA256="$__FILE_SHA256"
			EOF
			echo "[OK] Your source code is updated to (${__LAST_UPDATE_AT})"
			return 0
		} || {
			echo "[ERR] Failed to download source code."
		}
	fi
	return 1
}

github_push() {
    git config --local user.email "$GITHUB_REPOSITORY_EMAIL" && \
    git config --local user.name "$GITHUB_REPOSITORY_OWNER" && \
	git add * .github/version && \
    git commit -m "$__LAST_UPDATE_AT" && \
	git push && \
	echo "[OK] Pushed update." && return 0
	echo "[ERR] Failed to push update."
	return 1
}

UPDATED_SOURCE="false"
while read BRANCH
do
	git checkout "$BRANCH"
	get_last_file "$BRANCH" && update_source && github_push && UPDATED_SOURCE="true"
done <<-EOF
$(git branch -r | tr -d ' ' | sed -E 's/^origin\///')
EOF

echo "UPDATED_SOURCE=$UPDATED_SOURCE" >> $GITHUB_ENV
