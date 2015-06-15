LOCAL_PATH := device/lge/palman

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
        $(LOCAL_KERNEL):kernel \
	$(LOCAL_PATH)/fstab.palman:root/fstab.palman

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := palman
PRODUCT_BRAND := LGE
