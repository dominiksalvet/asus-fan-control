# asus-fan-control

[![gim ready](https://img.shields.io/badge/gim-ready-571997.svg)](https://github.com/dominiksalvet/gim)
[![reuse compliant](https://reuse.software/badge/reuse-compliant.svg)](https://reuse.software/)
[![standard-readme compliant](https://img.shields.io/badge/readme_style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)

> Fan control program for ASUS devices running Linux.

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

It appears that this project could work with a **whole range of ASUS notebook models**. However, they first need to be tested to being added to the following list. If you are interested in trying this project with an ASUS notebook model that hasn't been tested yet and adding it to the following list, see the [*CONTRIBUTING.md*](docs/CONTRIBUTING.md) file first. The list of tested notebook models follows:

* ASUS ZenBook UX430UA ([Dominik Salvet](https://github.com/dominiksalvet))
* ASUS ROG Strix GL553VD ([Sergio Andrés Ñustes](https://gitlab.com/infinito84))

### Instructions

This project is [gim](https://github.com/dominiksalvet/gim) ready **since version 2.0.0**. Install it by:

```sh
sudo gim install github.com/dominiksalvet/asus-fan-control
```

---

If it is required to work with the project, whose **version is lower than 2.0.0**, see the [README.md](https://github.com/dominiksalvet/asus-fan-control/blob/1.1.2/README.md) file of the 1.1.2 version, the latest version with previously used installation system.

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

## Contributing

See the [*CONTRIBUTING.md*](docs/CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/).

The preferred license is the **MIT License** as stated in the [*LICENSE.txt*](LICENSE.txt) file.
