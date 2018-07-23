# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html). Individual releases can be obtained using the [tags](https://gitlab.com/dominiksalvet/ux430ua-fan-speed/tags). Changes between their files can be viewed on [this website](https://gitlab.com/dominiksalvet/ux430ua-fan-speed/compare).

## Unreleased

The changes not yet present in any release are listed in this section.

### Changed

* No need of reboot device after the installation, changes are applied immediately.

## 1.0.0 (2018-07-21)

### Changed

* All scrips use SH environment instead of previously used BASH.
* ACPI calls are executed with integer argument in decimal form rather than previously used hexadecimal form.

### Added

* Flags are accepted, recognized options are `-help`, `-about`, `-version`.
* Check for root permissions with a warning message.
* Check for ascending values for temperature boundaries of fan speed levels.
