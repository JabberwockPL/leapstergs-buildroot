################################################################################
#
# LIBRETRO_ARMSNES
#
################################################################################
LIBRETRO_ARMSNES_VERSION = ca2fcbb55b83b18ef7a14618be318b9b226fda69
LIBRETRO_ARMSNES_SITE = $(call github,rmaz,ARMSNES-libretro,$(ARMSNES_VERSION))

LIBRETRO_ARMSNES_TARGET = libarmsnes.so

define LIBRETRO_ARMSNES_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" \
		CFLAGS="$(TARGET_CFLAGS)" LD="$(TARGET_LD)" \
		TARGET="$(ARMSNES_TARGET)" -C $(@D) all
endef

define LIBRETRO_ARMSNES_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/$(ARMSNES_TARGET) \
		$(TARGET_DIR)/usr/lib/libretro/$(ARMSNES_TARGET)
endef

$(eval $(generic-package))
