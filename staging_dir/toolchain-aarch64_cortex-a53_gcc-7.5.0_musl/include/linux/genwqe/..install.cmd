cmd_/home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/genwqe/.install := bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/genwqe ./include/uapi/linux/genwqe genwqe_card.h; bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/genwqe ./include/linux/genwqe ; bash scripts/headers_install.sh /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/genwqe ./include/generated/uapi/linux/genwqe ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/genwqe/$$F; done; touch /home/build/1296/rtd1296-openwrt-21.02.2/build_dir/toolchain-aarch64_cortex-a53_gcc-7.5.0_musl/linux-dev//include/linux/genwqe/.install
