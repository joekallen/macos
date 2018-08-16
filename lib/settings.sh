#! /usr/bin/env bash

# DESCRIPTION
# Defines global settings.

# SETTINGS
# General
set -o nounset
set -o errexit
set -o pipefail
IFS=$'\n\t'

# Globals
export MACOS_BOOT_DISK_CREATOR="/Applications/Install macOS High Sierra.app/Contents/Resources/createinstallmedia"
export MACOS_BOOT_DISK_PATH="/Volumes/Untitled"
export MACOS_INSTALLER_PATH="/Applications/Install macOS High Sierra.app"
export MACOS_WORK_PATH=/tmp/downloads
export MACOS_CONFIG_PATH="../macos-config"

# Java
export JAVA_LABEL="Java SE Development Kit"
export JAVA_DOWNLOAD_URL="http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html"
