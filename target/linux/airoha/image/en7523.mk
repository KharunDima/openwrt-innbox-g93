define Target/Description
	Build firmware images for Airoha EN7523 ARM based boards.
endef

define Device/innbox_g93
  DEVICE_VENDOR := Innbox
  DEVICE_MODEL := G93
  DEVICE_DTS := en7523-innbox-g93
  KERNEL := kernel-bin | lzma | fit lzma $$(KDIR)/image-$$(DEVICE_DTS).dtb
  KERNEL_INITRAMFS := kernel-bin | lzma | fit lzma $$(KDIR)/image-$$(DEVICE_DTS).dtb
endef
TARGET_DEVICES += innbox_g93
