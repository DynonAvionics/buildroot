################################################################################
#
# amd-catalyst-driver
#
################################################################################

AMD_CATALYST_DRIVER_VERSION = 15.9
AMD_CATALYST_DRIVER_AMDVER = 15.201.1151
AMD_CATALYST_DRIVER_SITE = http://www2.ati.com/drivers/linux
AMD_CATALYST_DRIVER_DL_REFERER = \
	http://support.amd.com/en-us/kb-articles/Pages/latest-linux-beta-driver.aspx
AMD_CATALYST_DRIVER_SOURCE = \
	amd-catalyst-$(AMD_CATALYST_DRIVER_VERSION)-linux-installer-$(AMD_CATALYST_DRIVER_AMDVER)-x86.x86_64.zip
AMD_CATALYST_DRIVER_BIN = \
	AMD-Catalyst-$(AMD_CATALYST_DRIVER_VERSION)-Linux-installer-$(AMD_CATALYST_DRIVER_AMDVER)-x86.x86_64.run

define AMD_CATALYST_DRIVER_EXTRACT_CMDS
	unzip $(DL_DIR)/$(AMD_CATALYST_DRIVER_SOURCE) -d $(@D)
	sh $(@D)/$(AMD_CATALYST_DRIVER_BIN) --extract $(@D)
endef

$(eval $(generic-package))
