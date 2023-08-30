# asus-fan-control (AFC)

[![CI status](https://github.com/dominiksalvet/asus-fan-control/workflows/CI/badge.svg)](https://github.com/dominiksalvet/asus-fan-control/actions)
[![GitPack](https://img.shields.io/badge/-GitPack-571997)](https://github.com/topics/gitpack)
[![POSIX Shell](https://img.shields.io/badge/POSIX-Shell-111111)](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html)
[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdominiksalvet%2Fasus-fan-control&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)

In default, some ASUS devices running Linux control their system fans inappropriately. **Typical symptoms** include:

* Running fans even when not under any load
* Not running fans under load appropriately
* Spinning up fans in short performance peaks

AFC solves the problems above and even more. **Tested devices** with links to their first testers:

| ASUS VivoBook | ASUS ZenBook   | ASUS ROG       | Others         |
|---------------|----------------|----------------|----------------|
| [N580VD][14]  | [UX310UA][18]  | [G751JY][25]   | [B9440UA][1]   |
| [S530UA][13]  | [UX330UAK][24] | [G752VL][2]    | [FX505GM][15]  |
| [X507UF][17]  | [UX360UAK][6]  | [GL502VMK][21] | [FX505GT][22]  |
| [X510UA][4]   | [UX410UA][7]   | [GL502VSK][10] | [FX553VD][12]  |
| [X512FA][5]   | [UX410UQ][9]   | [GL553VD][3]   | [TP550LAB][23] |
| [X542UF][16]  | [UX430UA][8]   | [GL553VE][11]  |                |
|               | [UX430UN][20]  | [GL702VSK][19] |                |

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
[18]: https://github.com/theamarin
[19]: https://github.com/bonezinger
[20]: https://github.com/klausenbusk
[21]: https://github.com/Errivincenz
[22]: https://github.com/zukurnaz
[23]: https://github.com/HamzaLakhani01
[24]: https://github.com/a-johnston
[25]: https://github.com/nick-dimitrov

> **ProTip!** Your device is not in the table? Take a look at [contributing.md](contributing.md) file and you can easily add it.
>
> Compatibility notes:
>
> * Devices with AMD processors do not work with AFC.
> * Devices with the 7th gen Intel processors work well.
> * Other devices may vary.

## Table of Contents

- [asus-fan-control (AFC)](#asus-fan-control-afc)
  - [Table of Contents](#table-of-contents)
  - [Install](#install)
    - [Dependencies](#dependencies)
    - [Using GitPack](#using-gitpack)
    - [From AUR](#from-aur)
  - [Usage](#usage)
    - [Custom Temperatures](#custom-temperatures)
    - [GUI](#gui)
  - [Useful Resources](#useful-resources)

## Install

### Dependencies

* **systemd** suite
* **acpi_call** module (see below)

### Using GitPack

AFC supports [GitPack](https://github.com/dominiksalvet/gitpack). Global installation/update:

```sh
sudo gitpack install github.com/dominiksalvet/asus-fan-control
```

> If your system has APT, GitPack will install acpi_call automatically.

### From AUR

We have an [AUR package](https://aur.archlinux.org/packages/asus-fan-control) available. Global installation/update:

```sh
mkdir -p /tmp/asus-fan-control/ && cd /tmp/asus-fan-control/ &&
git clone https://aur.archlinux.org/asus-fan-control.git . &&
makepkg -si
```

For AUR installations, enable running AFC automatically:

```sh
sudo systemctl enable afc
```

## Usage

AFC does not run in the background (i.e., it is not a daemon process). It is **executed automatically whenever necessary** (e.g., on OS boots) to keep the effect of a permanent change. It is also possible to invoke it manually as shown below:

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

Did you know that AFC has a **graphical user interface** extension? Visit [afc-gui](https://github.com/Greifent/afc-gui) for more details.

## Useful Resources

* [support.md](support.md) – questions, answers, help
* [contributing.md](contributing.md) – get involved, suggestions, bug reports
* [license](license) – author, license text
