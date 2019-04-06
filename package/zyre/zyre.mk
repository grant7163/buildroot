################################################################################
#
# zyre
#
################################################################################

ZYRE_VERSION = 1d949e4bf79b694ea883c325f5813e87ddc2a687
ZYRE_SITE = $(call github,zeromq,zyre,$(ZYRE_VERSION))
ZYRE_LICENSE = MPLv2.0
ZYRE_LICENSE_FILES = LICENSE
ZYRE_INSTALL_STAGING = YES
ZYRE_DEPENDENCIES = czmq zeromq host-pkgconf
ZYRE_AUTORECONF = YES

define ZYRE_CREATE_CONFIG_DIR
	mkdir -p $(@D)/config
endef

ZYRE_POST_PATCH_HOOKS += ZYRE_CREATE_CONFIG_DIR

$(eval $(autotools-package))
