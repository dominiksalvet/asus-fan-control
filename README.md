# ASUS ZenBook UX430UA Fan Speed Setup

In the default setup of the ASUS ZenBook UX430UA running Linux, the system fan is driven very aggressively. Even when the device is not under any load, the fan keeps running quite loudly, it nearly never turns off.

The described problem can be solved with this program. The program includes an intelligently designed makefile for easier installation.

## System requirements

* **Linux** operating system
* **systemd** init system
* **Debian** packaging system

### Tested operating systems

* Ubuntu 16.04
* Linux Mint 18.2
* Linux Mint 18.3
* Ubuntu 18.04

## Installation

To **automatically install the latest stable release** of this program, open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd ux430ua-fan-control/; then # check if local repository exists
    git pull -q # get the most recent state of the repository
else
    git clone -q https://gitlab.com/dominiksalvet/ux430ua-fan-control.git && # clone it
    cd ux430ua-fan-control/ # and change directory to the downloaded repository
fi &&
git checkout -q "$(git describe --abbrev=0)" && # use the latest repository tag
sudo make install-deps && # install dependencies
sudo make install # install the program
```

After the installation, the *~/Downloads/ux430ua-fan-control* directory won't be required for the program to be working and so it can be removed.

---

If it is required to **automatically uninstall your current release** of this program installed in the default installation directory ([steps](#installation) stated above do so), open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd ux430ua-fan-control/; then # check if local repository exists
    git pull -q # get the most recent state of the repository
else
    git clone -q https://gitlab.com/dominiksalvet/ux430ua-fan-control.git && # clone it
    cd ux430ua-fan-control/ # and change directory to the downloaded repository
fi &&
git checkout -q "$(ux430ua-fan-control -version)" && # use the program version as a tag
sudo make uninstall # uninstall the program (it doesn't uninstall dependencies)
```

### Choose the installation directory

The default installation directory is */usr/local/bin* as it should be included in the `$PATH` variable. However, for the program to work, it is not required that and so to change it, pass your desired installation directory path as an absolute path in `INSTALL_DIR` variable to the `sudo make install` command. For example:

```sh
sudo make install INSTALL_DIR=/opt
```

In case of uninstalling from a custom installation directory, this variable is not required; the uninstaller automatically detects where the installation directory is.

## Use custom fan speed policy

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

To customize these temperatures, use the program's `-set-temps:NUMBERS` flag. For more information, use the `-help` flag. An example how to change the temperatures follows:

```sh
ux430ua-fan-control -set-temps:'45 50 55 60 65 70 75 80'
```

---

Custom temperatures won't be removed during uninstallation process of this program and so they persist in case of updating the program. They are stored in the */etc/ux430ua-fan-control-config/temps* file.

## Thanks

The very core of this program stands on [this issue comment](https://github.com/daringer/asus-fan/issues/44#issuecomment-307589414) from [afilipovich](https://github.com/afilipovich) user.

## License

This project is licensed under an [Open Source Initiative](https://opensource.org/) approved license, the MIT License. See the [*LICENSE.md*](LICENSE.md) file for details. Individual files contain the [SPDX](https://spdx.org/) license identifier instead of the full license text, and they are always licensed under the license defined by that license identifier even if it differs from the project license.
