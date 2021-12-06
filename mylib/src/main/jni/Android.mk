LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := ${LOCAL_PATH}/include\

LOCAL_SRC_FILES := mylib.cpp \

LOCAL_MODULE := mylib


include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := mylib_shared

LOCAL_WHOLE_STATIC_LIBRARIES += mylib

LOCAL_LDLIBS += -llog

include ${ANDROID_GRADLE_NATIVE_BUNDLE_PLUGIN_MK} #must followed by "include $(BUILD_SHARED_LIBRARY)" or "include $(BUILD_STATIC_LIBRARY)"
include $(BUILD_SHARED_LIBRARY)

