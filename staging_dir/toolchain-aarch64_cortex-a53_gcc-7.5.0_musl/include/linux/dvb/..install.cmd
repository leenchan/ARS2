cmd_/home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/dvb/.install := bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/dvb ./include/uapi/linux/dvb audio.h ca.h dmx.h frontend.h net.h osd.h version.h video.h; bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/dvb ./include/linux/dvb ; bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/dvb ./include/generated/uapi/linux/dvb ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/dvb/$$F; done; touch /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/dvb/.install
