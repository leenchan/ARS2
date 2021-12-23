cmd_arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dtb := mkdir -p arch/arm64/boot/dts/realtek/rtd129x/ ; ccache_cc -E -Wp,-MD,arch/arm64/boot/dts/realtek/rtd129x/.rtd-1295-milii-2GB.dtb.d.pre.tmp -nostdinc -I./arch/arm64/boot/dts -I./arch/arm64/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/realtek/rtd129x/.rtd-1295-milii-2GB.dtb.dts.tmp arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dtb -b 0 -i arch/arm64/boot/dts/realtek/rtd129x/ -Wno-unit_address_vs_reg -d arch/arm64/boot/dts/realtek/rtd129x/.rtd-1295-milii-2GB.dtb.d.dtc.tmp arch/arm64/boot/dts/realtek/rtd129x/.rtd-1295-milii-2GB.dtb.dts.tmp ; cat arch/arm64/boot/dts/realtek/rtd129x/.rtd-1295-milii-2GB.dtb.d.pre.tmp arch/arm64/boot/dts/realtek/rtd129x/.rtd-1295-milii-2GB.dtb.d.dtc.tmp > arch/arm64/boot/dts/realtek/rtd129x/.rtd-1295-milii-2GB.dtb.d

source_arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dtb := arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dts

deps_arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dtb := \
    $(wildcard include/config/cma/areas.h) \
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
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295.dtsi \
  arch/arm64/boot/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm64/boot/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-common.dtsi \
  arch/arm64/boot/dts/include/dt-bindings/clock/rtk,clock-rtd129x.h \
  arch/arm64/boot/dts/include/dt-bindings/reset/rtk,reset.h \
  arch/arm64/boot/dts/include/dt-bindings/reset/rtk,reset-rtd129x.h \
  arch/arm64/boot/dts/include/dt-bindings/power/rtk,power-rtd129x.h \
  arch/arm64/boot/dts/include/dt-bindings/thermal/thermal.h \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-g2227-regulator.dtsi \
  arch/arm64/boot/dts/include/dt-bindings/regulator/gmt,g22xx.h \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-gpu-dvfs.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-cpu-dvfs.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-giraffe-common.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-pinctrl.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-irda.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-usb.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-usb.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-sata.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-sata.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-hdmirxEDID.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-dcsys-debug.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-pinctrl.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-irda.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-usb.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-usb.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-sata.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-sata.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-hdmirxEDID.dtsi \
  arch/arm64/boot/dts/realtek/rtd129x/rtd-129x-dcsys-debug.dtsi \

arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dtb: $(deps_arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dtb)

$(deps_arch/arm64/boot/dts/realtek/rtd129x/rtd-1295-milii-2GB.dtb):
