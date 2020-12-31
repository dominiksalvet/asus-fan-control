# asus-fan-control

[![CI status](https://github.com/dominiksalvet/asus-fan-control/workflows/CI/badge.svg)](https://github.com/dominiksalvet/asus-fan-control/actions)
[![GitPack](https://img.shields.io/badge/-GitPack-571997)](https://github.com/dominiksalvet/gitpack)
[![POSIX Shell](https://img.shields.io/badge/POSIX-Shell-111111)](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html)

> Fan control for ASUS devices running Linux.

In default, some ASUS devices running Linux control their system fans inappropriately. **Typical symptoms** include:

* Running fans even when not under any load
* Not running fans under load appropriately
* Spinning up fans in short performance peaks

Asus-fan-control solves the problems above and even more. **Tested devices** with links to their first testers:

| ASUS          | ASUS TUF Gaming | ASUS VivoBook       | ASUS ZenBook       | ASUSPRO      | ROG            |
|---------------|-----------------|---------------------|--------------------|--------------|----------------|
| [FX553VD][12] | [FX505GM][15]   | [15 X510UA][4]      | [Flip UX360UAK][6] | [B9440UA][1] | [G752VL][2]    |
| [X507UF][17]  |                 | [15 X512FA][5]      | [UX410UA][7]       |              | [GL502VSK][10] |
|               |                 | [15 X542UF][16]     | [UX410UQ][9]       |              | [GL553VD][3]   |
|               |                 | [Pro 15 N580VD][14] | [UX430UA][8]       |              | [GL553VE][11]  |
|               |                 | [S15 S530UA][13]    |                    |              |                |

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
[15]: https://github.com/Rakesh-rules
[16]: https://github.com/FadeMind
[17]: https://github.com/vaibhav-hexa

> Your device is not in the table yet? Take a look at [contributing.md](contributing.md) file and you can easily add it yourself.

## Table of Contents

* [Install](#install)
  * [Dependencies](#dependencies)
  * [Using GitPack](#using-gitpack)
  * [From AUR](#from-aur)
* [Usage](#usage)
  * [Custom Temperatures](#custom-temperatures)
  * [GUI](#gui)
* [Useful Resources](#useful-resources)

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

We have an [AUR package](https://aur.archlinux.org/packages/asus-fan-control) available. Global installation/update:

```sh
mkdir -p /tmp/asus-fan-control/ && cd /tmp/asus-fan-control/ &&
git clone https://aur.archlinux.org/asus-fan-control.git . &&
sudo makepkg -si
```

It may be a good idea to also enable running asus-fan-control automatically:

```sh
sudo systemctl enable asus-fan-control
```

## Usage

Asus-fan-control does not run in the background (i.e., it is not a daemon process). It is **executed automatically whenever necessary** (e.g., on OS boots) to keep the effect of a permanent change. It is also possible to invoke it manually as shown below:

```sh
sudo asus-fan-control
```

> It uses custom temperatures if previously set, otherwise the default temperatures are used.

### Custom Temperatures

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

### GUI

Did you know that asus-fan-control has a **graphical user interface** extension? Visit [afc-gui](https://github.com/Greifent/afc-gui) for more details.

## Useful Resources

* [support.md](support.md) – questions, answers, help
* [contributing.md](contributing.md) – get involved, suggestions, bug reports
* [license](license) – author, license text
