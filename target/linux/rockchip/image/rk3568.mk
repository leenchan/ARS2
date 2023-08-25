define Device/rk3568
  SOC := rk3568
  DEVICE_DTS_DIR := ../rk3568/dts
  DEVICE_DTS = $$(SOC)-$$(lastword $$(subst _, ,$$(DEVICE_NAME)))
  UBOOT_DEVICE_NAME := easepi-rk3568
  IMAGE/sysupgrade.img.gz := boot-common | boot-script rk3568 | pine64-img | gzip | append-metadata
endef

define Device/rk3566
$(call Device/rk3568)
  SOC := rk3566
endef

define Device/rk3568_combined
  IMAGE/combined.img.gz := boot-combined | boot-script rk3568-cb | pine64-img | gzip | append-metadata
  IMAGES := combined.img.gz
endef

define Device/rk3568_combined_friendlyelec
  IMAGE/combined.img.gz := boot-combined | boot-script rk3568-friendlyelec | pine64-img | gzip | append-metadata
  IMAGES := combined.img.gz
endef

define Device/rk3568_combined_hinlink
  IMAGE/combined.img.gz := boot-combined | boot-script rk3568-hinlink | pine64-img | gzip | append-metadata
  IMAGES := combined.img.gz
endef

define Device/fastrhino_common
$(call Device/rk3568)
  DEVICE_VENDOR := FastRhino
  DEVICE_PACKAGES := kmod-r8125
endef

define Device/fastrhino_r66s
$(call Device/fastrhino_common)
  DEVICE_MODEL := R66S
endef
TARGET_DEVICES += fastrhino_r66s

define Device/fastrhino_r68s
$(call Device/fastrhino_common)
  DEVICE_MODEL := R68S
endef
TARGET_DEVICES += fastrhino_r68s

define Device/fastrhino_r6xs
$(call Device/fastrhino_common)
$(call Device/rk3568_combined)
  DEVICE_MODEL := R68s/R66s combined
  SUPPORTED_DEVICES += fastrhino,r66s fastrhino,r68s
  DEVICE_DTS := rk3568-r66s rk3568-r68s
endef
TARGET_DEVICES += fastrhino_r6xs

define Device/hinlink_common
$(call Device/rk3568)
  DEVICE_VENDOR := HINLINK
  DEVICE_PACKAGES := kmod-r8125 kmod-nvme kmod-scsi-core
endef

define Device/hinlink_opc-h6xk
$(call Device/hinlink_common)
$(call Device/rk3568_combined_hinlink)
  DEVICE_MODEL := OPC-H69K/H68K/H66K combined
  SUPPORTED_DEVICES += hinlink,opc-h66k hinlink,opc-h68k hinlink,opc-h69k
  DEVICE_DTS := rk3568-opc-h66k rk3568-opc-h68k rk3568-opc-h69k
endef
TARGET_DEVICES += hinlink_opc-h6xk

define Device/friendlyarm_nanopi-r5s
$(call Device/rk3568)
$(call Device/rk3568_combined_friendlyelec)
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R5S/R5C combined
  SUPPORTED_DEVICES += friendlyelec,nanopi-r5s friendlyarm,nanopi-r5s friendlyelec,nanopi-r5c
  DEVICE_DTS := rk3568-nanopi-r5s rk3568-nanopi-r5c
  DEVICE_PACKAGES := kmod-r8125 kmod-nvme kmod-scsi-core kmod-hwmon-pwmfan kmod-thermal
endef
TARGET_DEVICES += friendlyarm_nanopi-r5s

define Device/firefly_station-p2
$(call Device/rk3568)
  DEVICE_VENDOR := Firefly
  DEVICE_MODEL := Station P2 / ROC PC
  DEVICE_DTS := rk3568-firefly-roc-pc
  SUPPORTED_DEVICES += firefly,rk3568-roc-pc firefly,station-p2
  DEVICE_PACKAGES := kmod-r8125 kmod-nvme kmod-scsi-core
endef
TARGET_DEVICES += firefly_station-p2

define Device/lyt_t68m
$(call Device/rk3568)
  DEVICE_VENDOR := LYT
  DEVICE_MODEL := T68M
  SUPPORTED_DEVICES += lyt,t68m
  DEVICE_PACKAGES := kmod-r8125 kmod-nvme kmod-scsi-core
endef
TARGET_DEVICES += lyt_t68m

define Device/hsa_bh2
  $(call Device/rk3568)
  DEVICE_VENDOR := HSA
  DEVICE_MODEL := BH2
  DEVICE_DTS := rk3568-hsa-bh2
  SUPPORTED_DEVICES += hsa,bh2
  DEVICE_PACKAGES := kmod-scsi-core
endef
TARGET_DEVICES += hsa_bh2

define Device/hinlink_unibox
  $(call Device/rk3568)
  DEVICE_VENDOR := HINLINK
  DEVICE_MODEL := UniBox
  SUPPORTED_DEVICES += hinlink,unibox
  DEVICE_PACKAGES := kmod-nvme kmod-scsi-core
endef
TARGET_DEVICES += hinlink_unibox

define Device/ynn_ynnnas
  $(call Device/rk3566)
  DEVICE_VENDOR := YingNiuNiu
  DEVICE_MODEL := NAS
  SUPPORTED_DEVICES += ynn,nas
  DEVICE_PACKAGES := kmod-scsi-core
endef
TARGET_DEVICES += ynn_ynnnas
