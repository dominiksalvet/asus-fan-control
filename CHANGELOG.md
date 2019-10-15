# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

The changes not yet present in any release are listed in this section.

### Added

* Support for GitPack's offline mode has been added.

### Fixed

* Tab completion is no longer able to prevent from launching a terminal emulator.

## 2.8.2 (2019-09-17)

### Changed

* Stop following REUSE Specification - Version 3.0.

## 2.8.1 (2019-08-21)

### Changed

* Meet REUSE Specification - Version 3.0.

## 2.8.0 (2019-07-09)

### Added

* The support for models of which names contain a whitespace character has been added.
* Support for ASUS VivoBook 15 X512FA ([MartinMyr](https://github.com/MartinMyr)).

### Changed

* There is no error report on untested models when trying to set custom temperatures.

## 2.7.1 (2019-07-03)

### Fixed

* Execution permission of the */etc/rc.local* file has been fixed.

## 2.7.0 (2019-07-03)

### Added

* Support for [GitPack](https://github.com/dominiksalvet/gitpack).

### Removed

* Support for gim has been removed.
* *Makefile* has been removed.

## 2.6.1 (2019-06-19)

### Changed

* Temperatures for UX410UA has been improved ([Petr](https://github.com/xtelcz)).

## 2.6.0 (2019-06-17)

### Added

* Support for ASUS ZenBook Flip UX360UAK ([Aleh Filipovich](https://github.com/afilipovich)).

### Changed

* Debian packaging system is no longer required.

## 2.5.0 (2019-06-09)

### Added

* Support for ASUS ZenBook UX410UA ([Fernando Sanz](https://github.com/fsanzdev)).

## 2.4.1 (2019-05-21)

### Changed

* Move from GitLab to GitHub.

## 2.4.0 (2019-04-17)

### Added

* The native support for gim 7.0.0 has been added.

### Changed

* Make default target does not have any effect.

## 2.3.2 (2019-01-12)

### Changed

* No output is generated if the installation is successful.

## 2.3.1 (2018-11-27)

### Fixed

* ACPI availability is no longer checked twice.

## 2.3.0 (2018-10-11)

### Changed

* Option `-get-temps` no longer ends the program.

### Fixed

* Try to create a directory for configuration files whenever run to prevent copying old configuration files when updating.

## 2.2.0 (2018-10-11)

### Added

* The changes are again applied immediately after the installation due to recent gim changes in the installation process.
* When updating from `ux430ua-fan-control`, configuration files will be copied to the current project, `asus-fan-control`.
* Add support for TAB completion for bash shell of all possible arguments.

### Changed

* Installation/uninstallation process no longer prints make recipes before executing them.

## 2.1.1 (2018-09-19)

### Fixed

* Stop applying temperatures immediately after the installation using makefile because gim hasn't copied the configuration files yet.

## 2.1.0 (2018-09-19)

### Added

* Add mechanisms to support multiple notebook models.
* Support for ASUS ROG Strix GL553VD ([Sergio Andrés Ñustes](https://gitlab.com/infinito84)).

### Changed

* The program has been renamed from `ux430ua-fan-control` to `asus-fan-control`.

## 2.0.3 (2018-09-09)

### Fixed

* When uninstalling, only lines calling the program from supplied installation directory are removed from the */etc/rc.local* file.

## 2.0.2 (2018-09-05)

### Fixed

* The installation directory path is defined in one place, in the *makefile* file.

## 2.0.1 (2018-09-04)

### Fixed

* The processing of options now behaves like declared in output of the `-help` flag.

## 2.0.0 (2018-08-25)

### Changed

* The project is [gim](https://github.com/dominiksalvet/gim) complaint and so it uses a new installation manager.
* The configuration directory is now */etc/ux430ua-fan-control*.

### Removed

* Support for custom installation directory due to gim compliance. The used installation directory is `/usr/local/bin`.

## 1.1.2 (2018-08-11)

### Changed

* The `-set-temps:NUMBERS` flag has a new `-set-temps:<numbers>` format now.
* This project licensing policy is compliant with [REUSE Practices](https://reuse.software/practices/2.0/).
* The *README.md* file is [Standard-Readme](https://github.com/RichardLitt/standard-readme) compliant.

## 1.1.1 (2018-08-11)

### Changed

* Temperatures obtained from the `-get-temps` flag are read directly from ACPI rather than from stored configuration or using default values.

## 1.1.0 (2018-07-26)

### Added

* Support relative paths across all delivered software with the program and within the program itself.
* Support for custom temperature values. Associated flags are `-get-temps`, `-set-temps:NUMBERS`, `-set-default-temps`.

### Changed

* No need of reboot device after the installation, changes are applied immediately.
* The program has been renamed from `ux430ua-fan-speed` to `ux430ua-fan-control`.
* The installation manager now creates a configuration file */etc/ux430ua-fan-control/install-dir* where the installation directory path is stored rather than parsing the */etc/rc.local* file.

### Fixed

* Check if `acpi_call` module is loaded before applying new configuration.

## 1.0.0 (2018-07-21)

### Added

* Flags are accepted, recognized options are `-help`, `-about`, `-version`.
* Check for root permissions with a warning message.
* Check for ascending values for temperature boundaries of fan speed levels.

### Changed

* All scrips use SH environment instead of previously used BASH.
* ACPI calls are executed with integer argument in decimal form rather than previously used hexadecimal form.
