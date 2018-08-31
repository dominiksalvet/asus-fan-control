# ASUS ZenBook UX430UA Fan Speed Setup *(ux430ua-fan-control)*

> Set up fan speed policy of ASUS ZenBook UX430UA to make it more quiet on Linux.

In the default setup of the ASUS ZenBook UX430UA running Linux, the system fan is driven very aggressively. Even when the device is not under any load, the fan keeps running quite loudly, it nearly never turns off.

The described problem can be solved with this project. The project uses an intelligent installation manager.

## Table of Contents

* [Install](#install)
  * [System requirements](#system-requirements)
  * [Tested operating systems](#tested-operating-systems)
  * [Instructions](#instructions)
* [Usage](#usage)
  * [Set up custom fan speed policy](#set-up-custom-fan-speed-policy)
* [Contribute](#contribute)
* [License](#license)

## Install

### System requirements

* **Linux** operating system
* **systemd** init system
* **Debian** packaging system

### Tested operating systems

* Ubuntu 18.04
* Ubuntu 16.04
* Linux Mint 18.3
* Linux Mint 18.2

### Instructions

This project is [gim](https://gitlab.com/dominiksalvet/gim) compliant since version 2.0.0. And so to **automatically install it's latest stable release**, open a terminal emulator and use the following command:

```sh
sudo gim install https://gitlab.com/dominiksalvet/ux430ua-fan-control.git
```

If it is required to **automatically uninstall your current release** with version 2.0.0 and higher, use the following command:

```sh
sudo gim uninstall https://gitlab.com/dominiksalvet/ux430ua-fan-control.git
```

To **automatically update the project** from version 2.0.0 and higher to **it's latest version**, use the following command:

```sh
sudo gim update https://gitlab.com/dominiksalvet/ux430ua-fan-control.git
```

---

If it is required to **update or uninstall project, whose version is lower than 2.0.0**, see the [README.md](https://gitlab.com/dominiksalvet/ux430ua-fan-control/blob/1.1.2/README.md) file of the 1.1.2 version, last version with previously used installation management system.

## Usage

The program is executed after the installation for the first time. Then, **it is automatically executed whenever necessary** to keep the effect of permanent change. Nevertheless, it is possible to apply changes manually by running it as shown:

```sh
sudo ux430ua-fan-control
```

### Set up custom fan speed policy

The fan speed policy is defined by 8 numbers that represent temperature boundaries in degrees Celsius between individual fan speed levels. These numbers are expected to be increasing as they increase the fan speed level.

The default values are `55 60 62 65 68 72 76 80`, their table representation follows:

| Speed level   | Temperatures (C°) |
| ------------- | ----------------- |
| 0 (off)       | 54 and less       |
| 1             | 55 to 59          |
| 2             | 60 to 61          |
| 3             | 62 to 64          |
| 4             | 65 to 67          |
| 5             | 68 to 71          |
| 6             | 72 to 75          |
| 7             | 76 to 79          |
| 8 (max)       | 80 and more       |

To customize these temperatures, use the program's `-set-temps:<numbers>` flag. For more information, use the `-help` flag. An example how to change the temperatures follows:

```sh
sudo ux430ua-fan-control -set-temps:'45 50 55 60 65 70 75 80'
```

---

The custom temperatures won't be removed during the uninstallation process nor the update process. They are stored in the */etc/ux430ua-fan-control/custom-temps* file.

## Contribute

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
