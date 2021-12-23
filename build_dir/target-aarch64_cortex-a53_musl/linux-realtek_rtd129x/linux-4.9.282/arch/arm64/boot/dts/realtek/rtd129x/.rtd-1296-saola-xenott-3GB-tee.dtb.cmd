cmd_arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dtb := mkdir -p arch/arm64/boot/dts/realtek/rtd129x/ ; ccache_cc -E -Wp,-MD,arch/arm64/boot/dts/realtek/rtd129x/.rtd-1296-saola-xenott-3GB-tee.dtb.d.pre.tmp -nostdinc -I./arch/arm64/boot/dts -I./arch/arm64/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/realtek/rtd129x/.rtd-1296-saola-xenott-3GB-tee.dtb.dts.tmp arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dtb -b 0 -i arch/arm64/boot/dts/realtek/rtd129x/ -Wno-unit_address_vs_reg -d arch/arm64/boot/dts/realtek/rtd129x/.rtd-1296-saola-xenott-3GB-tee.dtb.d.dtc.tmp arch/arm64/boot/dts/realtek/rtd129x/.rtd-1296-saola-xenott-3GB-tee.dtb.dts.tmp ; cat arch/arm64/boot/dts/realtek/rtd129x/.rtd-1296-saola-xenott-3GB-tee.dtb.d.pre.tmp arch/arm64/boot/dts/realtek/rtd129x/.rtd-1296-saola-xenott-3GB-tee.dtb.d.dtc.tmp > arch/arm64/boot/dts/realtek/rtd129x/.rtd-1296-saola-xenott-3GB-tee.dtb.d

source_arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dtb := arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dts

deps_arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dtb := \
  arch/arm64/boot/dts/include/dt-bindings/soc/rtd129x,memory.h \
    $(wildcard include/config/arch/rtd139x.h) \
  arch/arm64/boot/dts/include/dt-bindings/soc/../../soc/realtek/memory.h \
    $(wildcard include/config/cpu/v7.h) \
    $(wildcard include/config/arch/rtd16xx.h) \
    $(wildcard include/config/arch/rtd13xx.h) \
    $(wildcard include/config/rtk/vmx/ultra/ramfs/vendor.h) \
    $(wildcard include/config/rtk/vmx/ultra.h) \
    $(wildcard include/config/rtk/vmx/drm.h) \
    $(wildcard include/config/arch/rtd129x.h) \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-ion-2GB-tee.dtsi \
  arch/arm64/boot/dts/include/dt-bindings/soc/../../soc/realtek/../../../arch/arm/mach-rtd119x/include/mach/memory.h \
    $(wildcard include/config/arm/normal/world/os.h) \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-xen-common-domu.dtsi \
  arch/arm64/boot/dts/include/dt-bindings/clock/rtk,clock-rtd129x.h \
  arch/arm64/boot/dts/include/dt-bindings/reset/rtk,reset.h \
  arch/arm64/boot/dts/include/dt-bindings/reset/rtk,reset-rtd129x.h \
  arch/arm64/boot/dts/include/dt-bindings/power/rtk,power-rtd129x.h \
  arch/arm64/boot/dts/include/dt-bindings/thermal/thermal.h \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-cpu-dvfs.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-xen-hdmirxEDID.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-xen-usb-domu.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-usb.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-xen-pinctrl-domu.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-xen-irda.dtsi \

arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dtb: $(deps_arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dtb)

$(deps_arch/arm64/boot/dts/realtek/rtd129x/rtd-1296-saola-xenott-3GB-tee.dtb):
