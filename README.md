# ASUS ZenBook UX430UA Fan Speed Setup *(ux430ua-fan-control)*

> Set up fan speed policy of ASUS ZenBook UX430UA to make it more quiet on Linux.

In the default setup of the ASUS ZenBook UX430UA running Linux, the system fan is driven very aggressively. Even when the device is not under any load, the fan keeps running quite loudly, it nearly never turns off.

The described problem can be solved with this program. The program includes an intelligently designed makefile for easier installation.

## Table of Contents

* [Install](#install)
* [Usage](#usage)
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

To **automatically install the latest stable release** of this program, open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd ux430ua-fan-control/ 2>/dev/null; then # check if local repository exists
    git checkout master && # checkout the master for the pull command
    git pull && # get the most recent state of the repository
    git fetch --tags # in case of any release commit change
else
    git clone https://gitlab.com/dominiksalvet/ux430ua-fan-control.git && # clone it
    cd ux430ua-fan-control/ # and change directory to the downloaded repository
fi &&
git checkout "$(git describe --abbrev=0)" && # use the latest repository tag
sudo make install-deps && # install dependencies
sudo make install # install the program
```

After the installation, the *~/Downloads/ux430ua-fan-control* directory won't be required for the program to be working and so it can be removed.

---

If it is required to **automatically uninstall your current release** of this program installed in the default installation directory (the [commands](#instructions) stated above do so), open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd ux430ua-fan-control/ 2>/dev/null; then # check if local repository exists
    git checkout master && # checkout the master for the pull command
    git pull && # get the most recent state of the repository
    git fetch --tags # in case of any release commit change
else
    git clone https://gitlab.com/dominiksalvet/ux430ua-fan-control.git && # clone it
    cd ux430ua-fan-control/ # and change directory to the downloaded repository
fi &&
git checkout "$(ux430ua-fan-control -version)" && # use the program version as a tag
sudo make uninstall # uninstall the program (it doesn't uninstall dependencies)
```

However, it will not work when the program is **not installed in the default installation directory**. In this case manual `git checkout <installed_version>` command must be executed before the `sudo make uninstall` command.

---

To **update the program**, uninstall it and install it again using the steps stated above.

### Choose the installation directory

The default installation directory is */usr/local/bin* as it should be included in the `$PATH` variable. However, for the program to work, it is not required that and so to change it, pass your desired installation directory path in `INSTALL_DIR` variable to the `sudo make install` command. For example:

```sh
sudo make install INSTALL_DIR=/opt
```

In case of uninstalling from a custom installation directory, this variable is not required; the uninstaller automatically detects where the installation directory is.

## Usage

The program is executed after the installation for the first time. Then, **it is automatically executed whenever necessary** to keep the effect of permanent change. Nevertheless, it is possible to apply changes manually by running it as shown:

```sh
sudo ux430ua-fan-control
```

### Set up custom fan speed policy

The fan speed policy is defined by 8 numbers that represent temperature boundaries in degrees Celsius between individual fan speed levels. Those numbers are expected to be increasing as they increase the fan speed level.

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

**Custom temperatures won't be removed during uninstallation process** of this program and so they persist in case of updating the program. They are stored in the */etc/ux430ua-fan-control-config/temps* file.

## Contribute

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
