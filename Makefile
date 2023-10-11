# Determine the operating system
ifeq ($(OS),Windows_NT)
    OS_TARGET := windows
else
    OS_TARGET := macos
endif

# Include the platform-specific Makefile based on the detected OS
ifeq ($(OS_TARGET),windows)
    include Makefile_windows
else ifeq ($(OS_TARGET),macos)
    include Makefile_macos
endif
