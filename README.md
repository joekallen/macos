# macOS

[![Circle CI Status](https://circleci.com/gh/joekallen/macos.svg?style=svg)](https://circleci.com/gh/joekallen/macos)

Shell scripts for automated macOS machine setup.

This project is a framework for automating the setup of a macOS machine. In order to illustrate the
potential of what this project can do, please see the companion
[macOS Config](https://github.com/joekallen/macos-config) project for details. The *macOS Config*
project is an opinionated configuration which meets the needs of my development environment but is
also meant to serve as an example and guide for building your own personalized setup. Here is how
the two projects are meant to be used:

- **macOS** (this project) - The foundation framework for building customizated macOS machine
  setups.
- **[macOS Configuration](https://github.com/joekallen/macos-config)** - The layer on top of this
  *macOS* project which defines a custom machine setup and base implementation. The project is meant
  to be forked for as many custom machine setups as needed.

<!-- Tocer[start]: Auto-generated, don't remove. -->

## Table of Contents

  - [Features](#features)
  - [Screencast](#screencast)
  - [Requirements](#requirements)
  - [Setup](#setup)
  - [Usage](#usage)
    - [Customization](#customization)
  - [Versioning](#versioning)
  - [Code of Conduct](#code-of-conduct)
  - [Contributions](#contributions)
  - [License](#license)
  - [History](#history)
  - [Credits](#credits)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

## Features

- Provides a command line interface, written in Bash, with no additional dependencies for
  installation and management of a macOS machine.
- Supports macOS boot disk creation for fresh install of operating system.
- Downloads and installs development tools (required by Homebrew):
    - [Xcode Command Line Tools](https://developer.apple.com/xcode)
    - [Java SE Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
- Downloads, installs, and configures [Homebrew Formulas](http://brew.sh).
- Downloads, installs, and configures [Homebrew Casks](https://caskroom.github.io).
- Downloads, installs, and configures
  [App Store](http://www.apple.com/macosx/whats-new/app-store.html) software.
- Downloads, installs, and configures non-App Store software applications.
- Downloads, installs, and configures software application extensions.
- Applies basic and default software settings.
- Sets up and configures installed software for use.
- Supports restoration of machine backups.

## Screencast

[![asciicast](https://asciinema.org/a/155990.png)](https://asciinema.org/a/155990)

## Requirements

1. [macOS High Sierra](https://www.apple.com/macos) (with latest software updates applied)
1. [Xcode](https://developer.apple.com/xcode) (with accepted license agreement)

## Setup

Open a terminal window and execute one of the following setup sequences depending on your version
preference:

Current Version (stable):

    git clone https://github.com/joekallen/macos.git
    cd macos
    git checkout 5.0.0

Master Version (unstable):

    git clone https://github.com/joekallen/macos.git
    cd macos

## Usage

Run the following:

    bin/run

You will be presented with the following options (listed in order of use):

    Boot:
       B:  Create boot disk.
    Install:
       b:  Apply basic settings.
       t:  Install development tools.
      hf:  Install Homebrew Formulas.
      hc:  Install Homebrew Casks.
       m:  Install Mac App Store software.
       a:  Install application software.
       x:  Install application software extensions.
       d:  Apply default settings.
       s:  Setup installed software.
       i:  Install everything (i.e. executes all install options).
    Restore:
       R:  Restore settings from backup.
    Manage:
       c:  Check status of managed software.
       C:  Caffeinate machine.
      ua:  Uninstall application software.
      ux:  Uninstall application software extension.
      ra:  Reinstall application software.
      rx:  Reinstall application software extension.
       w:  Clean work (temp) directory.
       q:  Quit/Exit.

Choose option `i` to run a full install or select a specific option to run a single action. Each
option is designed to be re-run if necessary. This can also be handy for performing upgrades,
re-running a missing/failed install, etc.

The option prompt can be skipped by passing the desired option directly to the `bin/run` script. For
example, executing `bin/run i` will execute the full install process.

The machine should be rebooted after all install tasks have completed to ensure all settings have
been loaded.

It is recommended that the `macos` project directory not be deleted and kept on the local machine
in order to manage installed software and benefit from future upgrades.

### Customization

All executable scripts can be found in the `bin` folder:

- `bin/apply_basic_settings`: Applies basic, initial, settings for setting up a machine. *Can be
  customized.*
- `bin/apply_default_settings`: Applies useful system and application defaults. *Can be customized.*
- `bin/create_boot_disk`: Creates macOS boot disk.
- `bin/install_app_store`: Installs macOS, GUI-based, App Store applications. *Can be customized.*
- `bin/install_applications`: Installs macOS, GUI-based, non-App Store applications. *Can be
  customized.*
- `bin/install_dev_tools`: Installs macOS development tools required by Homebrew.
- `bin/install_extensions`: Installs macOS application extensions and add-ons. *Can be customized.*
- `bin/install_homebrew_casks`: Installs Homebrew Formulas. *Can be customized.*
- `bin/install_homebrew_formulas`: Installs Homebrew Casks. *Can be customized.*
- `bin/restore_backup`: Restores system/application settings from backup image. *Can be customized.*
- `bin/run`: The main script and interface for macOS setup.
- `bin/setup_software`: Configures and launches (if necessary) installed software. *Can be
  customized.*

The `lib` folder provides the base framework for installing, re-installing, and uninstalling
software. Everything provided via the [macOS Config](https://github.com/joekallen/macos-config)
project is built upon the functions found in the `lib` folder. See the
[macOS Config](https://github.com/joekallen/macos-config) project for further details.

  - `lib/settings.sh`: Defines global settings for software applications, extensions, etc.

## Versioning

Read [Semantic Versioning](https://semver.org) for details. Briefly, it means:

- Major (X.y.z) - Incremented for any backwards incompatible public API changes.
- Minor (x.Y.z) - Incremented for new, backwards compatible, public API enhancements/fixes.
- Patch (x.y.Z) - Incremented for small, backwards compatible, bug fixes.

## Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By
participating in this project you agree to abide by its terms.

## Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

## License

Copyright 2016 [Alchemists](https://www.alchemists.io).
Read [LICENSE](LICENSE.md) for details.

## History

Read [CHANGES](CHANGES.md) for details.
Built with [Bashsmith](https://github.com/joekallen/bashsmith).

## Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at
[Alchemists](https://www.alchemists.io).
