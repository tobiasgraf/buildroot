#######################################################
#
#   knxd
#
#######################################################
KNXD_VERSION = master
KNXD_SITE = git@github.com:knxd/knxd.git
KNXD_SITE_METHOD = git
KNXD_INSTALL_STAGING = YES
KNXD_INSTALL_TARGET = YES
KNXD_DEPENDENCIES = libusb libev

KNXD_CONF_OPTS += --disable-systemd

#define LIBHOMEEPLUGINFUNCTIONS_BUILD_CMDS
#	$(MAKE) CC=$(TARGET_CC) LD=$(TARGET_LD) -C $(@D) all
#endef
#
# define KNXD_INSTALL_STAGING_CMDS
# 	$(INSTALL) -D -m 0755 $(@D)/src/KNXD $(STAGING_DIR)/usr/bin/KNXD
# endef

# define KNXD_INSTALL_TARGET_CMDS
# 	$(INSTALL) -D -m 0755 $(@D)/src/KNXD $(TARGET_DIR)/usr/bin/KNXD
# endef

#  define KNXD_PRE_CONFIGURE_HOOKS_BOOTSTRAP
#          $(@D)/bootstrap.sh
#  endef

#  KNXD_PRE_CONFIGURE_HOOKS += KNXD_PRE_CONFIGURE_HOOKS_BOOTSTRAP

$(eval $(call autotools-package))
