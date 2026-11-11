#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021-2026 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# OrangeFox-specific settings
AERA_USE_GREEN_LED := 0
AERA_DONT_PATCH_ENCRYPTED_DEVICE := 1
AERA_NO_TREBLE_COMPATIBILITY_CHECK := 1
AERA_NO_MIUI_PATCH_WARNING := 1

AERA_ENABLE_LPTOOLS := 1
AERA_QUICK_BACKUP_LIST := /boot;/data;

# avb 2.0
AERA_PATCH_AVB20 := 1

# try to prevent potential data format errors
AERA_UNBIND_SDCARD_F2FS := 1

# maximum permissible splash image size (in kilobytes); do *NOT* increase!
AERA_SPLASH_MAX_SIZE := 130

# screen settings
AERA_SCREEN_H := 2400
AERA_STATUS_H := 100
AERA_STATUS_INDENT_LEFT := 48
AERA_STATUS_INDENT_RIGHT := 48
AERA_HIDE_NOTCH := 1
AERA_CLOCK_POS := 1

# number of list options before scrollbar creation
AERA_OPTIONS_LIST_NUM := 9

# build all the partition tools
AERA_ENABLE_ALL_PARTITION_TOOLS := 1

# we need lzma because of the sizes of ramdisks produced by 14.1
AERA_USE_LZMA_COMPRESSION := 1

# use dmctl in the data formatting process
AERA_USE_DMCTL := 1

# don't keep log history - only use for Stable releases
ifeq ($(AERA_BUILD_TYPE),Stable)
   AERA_DONT_KEEP_LOG_HISTORY := 1
endif

# FRP
AERA_ENABLE_FRP_ADDON := 1
#
