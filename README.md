# asus-fan-control

> Set up fan speed policy of ASUS devices to make them more quiet on Linux.

In the default setup of some ASUS devices running Linux, the system fan is driven very aggressively. Even when the affected devices are not under any load, the fan keeps running quite loudly and it nearly never turns off.

The described problem can be solved with this project. The project is easy to install.

## Table of Contents

* [Install](#install)
  * [Software requirements](#software-requirements)
  * [Tested notebook models](#tested-notebook-models)
  * [Instructions](#instructions)
* [Usage](#usage)
  * [Set up custom fan speed policy](#set-up-custom-fan-speed-policy)
* [Contribute](#contribute)
* [License](#license)

## Install

### Software requirements

* **Linux** operating system
* **systemd** init system
* **Debian** packaging system

### Tested notebook models

It appears that this project could work with a **whole range of ASUS notebook models**. However, they first need to be tested to being added to the following list. If you are interested in trying this project with an ASUS notebook model that hasn't been tested yet and adding it to the following list, see the [*CONTRIBUTING.md*](CONTRIBUTING.md) file first. The list of tested notebook models follows:

* ASUS ZenBook UX430UA ([Dominik Salvet](https://gitlab.com/dominiksalvet))
* ASUS ROG Strix GL553VD ([Sergio Andrés Ñustes](https://gitlab.com/infinito84))

### Instructions

This project is [gim](https://gitlab.com/dominiksalvet/gim) compliant since version 2.0.0. And so to **automatically install it's latest stable release**, open a terminal emulator and use the following command:

```sh
sudo gim install https://gitlab.com/dominiksalvet/asus-fan-control.git
```

To **automatically update the project** from version 2.0.0 and higher to **it's latest version**, use the following command:

```sh
sudo gim update https://gitlab.com/dominiksalvet/asus-fan-control.git
```

If it is required to **automatically uninstall your current release** with version 2.0.0 and higher, use the following command:

```sh
sudo gim uninstall https://gitlab.com/dominiksalvet/asus-fan-control.git
```

---

If it is required to **update or uninstall project, whose version is lower than 2.0.0**, see the [README.md](https://gitlab.com/dominiksalvet/asus-fan-control/blob/1.1.2/README.md) file of the 1.1.2 version, the latest version with previously used installation system.

## Usage

The program is executed after the installation for the first time. Then, **it is automatically executed whenever necessary** to keep the effect of permanent change. Nevertheless, it is possible to apply changes manually by running it as shown:

```sh
sudo asus-fan-control
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
sudo asus-fan-control -set-temps:'45 50 55 60 65 70 75 80'
```

## Contribute

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
