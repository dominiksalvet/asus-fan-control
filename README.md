# asus-fan-control

[![CI status](https://github.com/dominiksalvet/asus-fan-control/workflows/CI/badge.svg)](https://github.com/dominiksalvet/asus-fan-control/commits)
[![GitPack](https://img.shields.io/badge/-GitPack-571997)](https://github.com/dominiksalvet/gitpack)
[![standard-readme compliant](https://img.shields.io/badge/readme_style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)

> Fan control for ASUS devices running Linux.

In the default setup of some ASUS devices running Linux, the system fan is driven very aggressively. Even when the affected devices are not under any load, the fan keeps running quite loudly and it nearly never turns off.

The described problem can be solved with this project.

## Table of Contents

* [Install](#install)
  * [Tested notebook models](#tested-notebook-models)
  * [Software requirements](#software-requirements)
  * [Instructions](#instructions)
    * [Via GitPack](#via-gitpack)
    * [From AUR (for Arch-based distros)](#from-aur-for-arch-based-distros)
* [Usage](#usage)
  * [Set up custom fan speed policy](#set-up-custom-fan-speed-policy)
* [Thanks](#thanks)
* [Contributing](#contributing)
* [License](#license)

## Install

### Tested notebook models

It appears that this project could work with a **whole range of ASUS notebook models**. However, they first need to be tested to being added to the following list. If you are interested in trying this project with an ASUS notebook model that hasn't been tested yet and adding it to the following list, see the [*CONTRIBUTING.md*](CONTRIBUTING.md) file first. The list of tested notebook models follows:

* ASUS ROG G752VL ([Sergey](https://github.com/icegood))
* ASUS ROG Strix GL553VD ([Sergio Andrés Ñustes](https://gitlab.com/infinito84))
* ASUS VivoBook 15 X510UA ([Alexander Agura](https://github.com/agura-lex))
* ASUS VivoBook 15 X512FA ([MartinMyr](https://github.com/MartinMyr))
* ASUS ZenBook Flip UX360UAK ([Aleh Filipovich](https://github.com/afilipovich))
* ASUS ZenBook UX410UA ([Fernando Sanz](https://github.com/fsanzdev) + [Petr](https://github.com/xtelcz))
* ASUS ZenBook UX430UA ([Dominik Salvet](https://github.com/dominiksalvet))

### Software requirements

* **systemd** to start it at boot
* **acpi_call** kernel module
  * If your system has `apt-get`, it will be installed automatically.

### Instructions

#### Via GitPack

This project uses [GitPack](https://github.com/dominiksalvet/gitpack). Global installation/update:

```sh
sudo gitpack install github.com/dominiksalvet/asus-fan-control
```

#### From AUR (for Arch-based distros)

If you're using Arch Linux or Arch-based distribution, there's an [AUR package](https://aur.archlinux.org/packages/asus-fan-control) available, just install `asus-fan-control` with your AUR helper of choice or run the following (you should have `base-devel` and `git` installed in order to be able to build AUR packages):

```sh
git clone https://aur.archlinux.org/asus-fan-control.git
cd asus-fan-control
makepkg -si
```

AUR package doesn't automatically enable starting the service at boot (since Arch packages generally don't do that), to enable it at boot:

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
