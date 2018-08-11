# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html). Individual releases can be obtained using the [tags](https://gitlab.com/dominiksalvet/ux430ua-fan-control/tags). Changes between their files can be viewed on [this website](https://gitlab.com/dominiksalvet/ux430ua-fan-control/compare).

## Unreleased

The changes not yet present in any release are listed in this section.

### Changed

* The `-set-temps:NUMBERS` flag has a new `-set-temps:<numbers>` format now.

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
