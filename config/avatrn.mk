# Settings for compiling waipio camera architecture

# Localized KCONFIG settings
# Camera: Remove for user build
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
CONFIG_CCI_DEBUG_INTF := y
CONFIG_MOT_SENSOR_PRE_POWERUP := y
ccflags-y += -DCONFIG_CCI_DEBUG_INTF=1
endif
CONFIG_CAM_SENSOR_PROBE_DEBUG := y

ccflags-y += -DCONFIG_MOT_DONGWOON_OIS_AF_DRIFT=1
ccflags-y += -DCONFIG_MOT_OIS_EARLY_UPGRADE_FW=1
ccflags-y += -DCONFIG_MOT_CUSTOM_CTLE_PARAM=1
ccflags-y += -DCONFIG_MOT_SM7435_AVATRN=1
# Flags to pass into C preprocessor
CONFIG_MOT_OIS_DW9784_ACTIVE_OIS := y
ccflags-y += -DCONFIG_MOT_OIS_DW9784_ACTIVE_OIS=1
ccflags-y += -DCONFIG_MOT_OIS_AFTER_SALES_SERVICE=1
ccflags-y += -DCONFIG_MOT_SENSOR_PRE_POWERUP=1
ccflags-y += -DCONFIG_CAM_SENSOR_PROBE_DEBUG=1
