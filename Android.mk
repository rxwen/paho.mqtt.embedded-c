# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/MQTTPacket/src \
	$(LOCAL_PATH)/MQTTClient-C/src/linux \
	$(LOCAL_PATH)/MQTTClient-C/src

LOCAL_CFLAGS +=

LOCAL_SRC_FILES := \
	MQTTPacket/src/MQTTUnsubscribeClient.c \
	MQTTPacket/src/MQTTPacket.c \
	MQTTPacket/src/MQTTSubscribeClient.c \
	MQTTPacket/src/MQTTUnsubscribeServer.c \
	MQTTPacket/src/MQTTConnectClient.c \
	MQTTPacket/src/MQTTConnectServer.c \
	MQTTPacket/src/MQTTDeserializePublish.c \
	MQTTPacket/src/MQTTSerializePublish.c \
	MQTTPacket/src/MQTTSubscribeServer.c \
	MQTTPacket/src/MQTTFormat.c \
	MQTTClient-C/src/linux/MQTTLinux.c \
	MQTTClient-C/src/MQTTClient.c

LOCAL_SHARED_LIBRARIES := \

LOCAL_MODULE := libpahomqtt
include $(BUILD_SHARED_LIBRARY)
