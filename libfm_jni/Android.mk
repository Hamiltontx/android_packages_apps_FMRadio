LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    FmIoctlsInterface.cpp \
    ConfigFmThs.cpp \
    FmPerformanceParams.cpp \
    ConfFileParser.cpp \
    FmRadioController.cpp \
    LibfmJni.cpp

LOCAL_C_INCLUDES := $(JNI_H_INCLUDE) \
    frameworks/base/include/media

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libdl \
    libmedia \
    libnativehelper \

ifeq ($(TARGET_QCOM_NO_FM_FIRMWARE),true)
    LOCAL_CFLAGS += -DQCOM_NO_FM_FIRMWARE
endif

LOCAL_MODULE := libfmjni
include $(BUILD_SHARED_LIBRARY)
