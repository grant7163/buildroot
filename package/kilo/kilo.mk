################################################################################
#
# kilo
#
################################################################################
KILO_VERSION = next
KILO_SITE_METHOD = git
#KILO_SITE = $(call github, grant7163, kilo, $(KILO_VERSION))
KILO_SITE = https://github.com/grant7163/kilo

define KILO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define KILO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/kilo $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
