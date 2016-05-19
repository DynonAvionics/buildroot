################################################################################
#
# amd-catalyst-driver
#
################################################################################

AMD_CATALYST_DRIVER_VERSION = 15.9
AMD_CATALYST_DRIVER_VERBOSE_VER = 15.201.1151
AMD_CATALYST_DRIVER_SITE = http://www2.ati.com/drivers/linux
AMD_CATALYST_DRIVER_DL_REFERER = http://support.amd.com/en-us/kb-articles/Pages/latest-linux-beta-driver.aspx
AMD_CATALYST_DRIVER_SOURCE = amd-catalyst-$(AMD_CATALYST_DRIVER_VERSION)-linux-installer-$(AMD_CATALYST_DRIVER_VERBOSE_VER)-x86.x86_64.zip

$(eval $(generic-package))
