# asus-fan-control

[![CI status](https://github.com/dominiksalvet/asus-fan-control/workflows/CI/badge.svg)](https://github.com/dominiksalvet/asus-fan-control/commits)
[![GitPack](https://img.shields.io/badge/-GitPack-571997)](https://github.com/dominiksalvet/gitpack)
[![standard-readme compliant](https://img.shields.io/badge/readme_style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)

> Fan control for ASUS devices running Linux.

In default, some ASUS devices running Linux control their system fans inappropriately. **Typical symptoms** include:

* Running fans even when not under any load
* Not running fans under load appropriately
* Spinning up fans in short performance peaks

Asus-fan-control solves the problems above and even more. It is also very easy to understand as it communicates with hardware exclusively using ACPI calls. **Tested devices** with links to their first testers:

| ASUS          | ASUSPRO      | ROG            | ASUS VivoBook       | ASUS ZenBook       |
|---------------|--------------|----------------|---------------------|--------------------|
| [FX553VD][12] | [B9440UA][1] | [G752VL][2]    | [15 X510UA][4]      | [Flip UX360UAK][6] |
|               |              | [GL553VD][3]   | [15 X512FA][5]      | [UX410UA][7]       |
|               |              | [GL502VSK][10] | [S15 S530UA][13]    | [UX410UQ][9]       |
|               |              | [GL553VE][11]  | [Pro 15 N580VD][14] | [UX430UA][8]       |

[1]: https://github.com/fzwoch
[2]: https://github.com/icegood
[3]: https://gitlab.com/infinito84
[4]: https://github.com/agura-lex
[5]: https://github.com/MartinMyr
[6]: https://github.com/afilipovich
[7]: https://github.com/fsanzdev
[8]: https://github.com/dominiksalvet
[9]: https://github.com/gobenavides
[10]: https://github.com/Mikarox
[11]: https://github.com/arruor
[12]: https://github.com/Greifent
[13]: https://github.com/nigelwarning
[14]: https://github.com/AntonisKl

> Your device is not in the table yet? Take a look at [*contributing.md*](contributing.md) file and you can easily add it yourself.

## Table of Contents

* [Install](#install)
  * [Dependencies](#dependencies)
  * [Using GitPack](#using-gitpack)
  * [From AUR](#from-aur)
* [Usage](#usage)
  * [Custom temperatures](#custom-temperatures)
* [Contributing](#contributing)
* [License](#license)

## Install

### Dependencies

* **systemd** suite
* **acpi_call** module (see below)
* **dmidecode** tool (see below)

### Using GitPack

Asus-fan-control supports [GitPack](https://github.com/dominiksalvet/gitpack). Global installation/update:

```sh
sudo gitpack install github.com/dominiksalvet/asus-fan-control
```

> If your system has APT, GitPack will install acpi_call and dmidecode automatically.

### From AUR

If you are using Arch Linux or an Arch-based distribution, there is an [AUR package](https://aur.archlinux.org/packages/asus-fan-control) available. Just [install](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_packages) asus-fan-control from AUR. It may be a good idea to also enable running asus-fan-control automatically:

```sh
sudo systemctl enable asus-fan-control
```

## Usage

Asus-fan-control is **executed automatically whenever necessary** to keep the effect of a permanent change. Nevertheless, it is possible to invoke it manually as shown below:

```sh
sudo asus-fan-control
```

> It uses custom temperatures if previously set, otherwise the default temperatures are used.

### Custom temperatures

The fan speed policy is usually defined by 8 increasing numbers representing temperature boundaries in degrees Celsius between individual fan speed levels. E.g., UX430UA's default temperatures are `55 60 62 65 68 72 76 80` as shown:

| Speed level | Temperature (C°) |
|-------------|------------------|
| 0 (off)     | 54 and less      |
| 1           | 55 to 59         |
| 2           | 60 to 61         |
| 3           | 62 to 64         |
| 4           | 65 to 67         |
| 5           | 68 to 71         |
| 6           | 72 to 75         |
| 7           | 76 to 79         |
| 8 (max)     | 80 and more      |

To use your custom temperatures, use the `set-temps` command. For example:

```sh
sudo asus-fan-control set-temps 45 50 55 60 65 70 75 80
```

## Contributing

Do you want to contribute? Do you have any questions? Then the [*contributing.md*](contributing.md) file is here for you.

## License

Asus-fan-control is licensed under the [MIT License](license).
