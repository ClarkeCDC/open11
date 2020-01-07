include $(THEOS)/makefiles/common.mk

TOOL_NAME = open
open_FRAMEWORKS = MobileCoreServices
open_FILES = main.mm
open_ARCHS = arm64
open_CODESIGN_FLAGS=-Sentitlements.xml

include $(THEOS_MAKE_PATH)/tool.mk
