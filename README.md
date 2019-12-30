# asus-fan-control

[![CI status](https://github.com/dominiksalvet/asus-fan-control/workflows/CI/badge.svg)](https://github.com/dominiksalvet/asus-fan-control/commits)
[![GitPack](https://img.shields.io/badge/-GitPack-571997)](https://github.com/dominiksalvet/gitpack)
[![standard-readme compliant](https://img.shields.io/badge/readme_style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)

> Fan control for ASUS devices running Linux.

In default, some ASUS laptops running Linux control their system fans inappropriately. Typical symptoms include:

* Running fans even when not under any load
* Not running fans under load appropriately
* Spinning up fans in short performance peaks

This program solves the problems above and even more. It is also very easy to understand as it communicates with hardware exclusively using ACPI calls. Tested models:

* ASUS ASUSPRO B9440UA ([Florian Zwoch](https://github.com/fzwoch))
* ASUS ROG G752VL ([Sergey](https://github.com/icegood))
* ASUS ROG Strix GL553VD ([Sergio Andrés Ñustes](https://gitlab.com/infinito84))
* ASUS VivoBook 15 X510UA ([Alexander Agura](https://github.com/agura-lex))
* ASUS VivoBook 15 X512FA ([MartinMyr](https://github.com/MartinMyr))
* ASUS ZenBook Flip UX360UAK ([Aleh Filipovich](https://github.com/afilipovich))
* ASUS ZenBook UX410UA ([Fernando Sanz](https://github.com/fsanzdev), [Petr](https://github.com/xtelcz))
* ASUS ZenBook UX430UA ([Dominik Salvet](https://github.com/dominiksalvet))

> Your laptop is not in the list yet? Take a look at [*CONTRIBUTING.md*](CONTRIBUTING.md) file and you can test it yourself.

## Table of Contents

* [Install](#install)
  * [Dependencies](#dependencies)
  * [Using GitPack](#using-gitpack)
  * [From AUR](#from-aur)
* [Usage](#usage)
  * [Set up custom fan speed policy](#set-up-custom-fan-speed-policy)
* [Thanks](#thanks)
* [Contributing](#contributing)
* [License](#license)

## Install

### Dependencies

* **systemd** suite
* **acpi_call** kernel module (see below)

### Using GitPack

This project supports [GitPack](https://github.com/dominiksalvet/gitpack). Global installation/update:

```sh
sudo gitpack install github.com/dominiksalvet/asus-fan-control
```

> If your system has `apt-get`, GitPack will install acpi_call automatically.

### From AUR

If you are using Arch Linux or an Arch-based distribution, there is an [AUR package](https://aur.archlinux.org/packages/asus-fan-control) available. Just [install](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_packages) asus-fan-control from AUR. Feel free to also enable starting the asus-fan-control at boot:

```sh
sudo systemctl enable asus-fan-control
```

## Usage

The program is executed after the installation for the first time. Then, **it is automatically executed whenever necessary** to keep the effect of permanent change. Nevertheless, it is possible to apply changes manually by running it as shown:

```sh
sudo asus-fan-control
```

### Set up custom fan speed policy

The fan speed policy is defined by 8 numbers that represent temperature boundaries in degrees Celsius between individual fan speed levels. These numbers are expected to be increasing as they increase the fan speed level.

The default asus-fan-control values are `55 60 62 65 68 72 76 80` (UX430UA model), their table representation follows:

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

## Thanks

The very core of this project stands on [Aleh Filipovich](https://github.com/afilipovich)'s [observation](https://github.com/daringer/asus-fan/issues/44#issuecomment-307589414).

## Contributing

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

This project is licensed under the [MIT License](LICENSE).
