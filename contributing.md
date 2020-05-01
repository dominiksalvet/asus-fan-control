# Contributing

The development of asus-fan-control is published on [this website](https://github.com/dominiksalvet/asus-fan-control) and **everyone is welcome to contribute**.

## Add new device

If you want to test a new device and be declared its first tester, you should know that **none of asus-fan-control authors is responsible for possible damage** it can cause. Nevertheless, even in case of any problems, uninstalling asus-fan-control and rebooting the system should help.

### Basic configuration

If everything works after the installation, try to find suitable temperatures using `sudo asus-fan-control set-temps <temps>` command and continue as stated in the [Suggestions](#suggestions) section.

### Advanced configuration

If something does not work after the installation, do not despair. Whether it does not work at all or not all fans are controlled, it is most likely caused by different ACPI fan addresses of your device. Please visit [afc-scout](https://github.com/dominiksalvet/afc-scout) to find your ACPI addresses. Once you have the addresses, you will be able to set temperatures using the following command:

```
sudo FALLBACK_ADDRS='<addrs>' FALLBACK_TEMPS='<temps>' asus-fan-control set-temps default
```

> Keep in mind that until the support for your device is added, you have to use the `FALLBACK` environment variables for any asus-fan-control invocation with root permissions. Then, you will be able to use asus-fan-control normally.

Once it works, try to find suitable temperatures and continue as stated in the [Suggestions](#suggestions) section.

## Suggestions

If you have any suggestions or bug reports for asus-fan-control, follow these steps:

1. Make sure the same is not already reported in [issues](https://github.com/dominiksalvet/asus-fan-control/issues).
2. Open a [new issue](https://github.com/dominiksalvet/asus-fan-control/issues/new/choose).

## Pull requests

If you want to contribute directly, it may be a good idea to [create an issue](https://github.com/dominiksalvet/asus-fan-control/issues/new/choose) first to discuss it. Then follow the steps:

1. [Fork](https://github.com/dominiksalvet/asus-fan-control/fork) asus-fan-control.
2. Create a new branch with a descriptive name.
3. Make your changes in the branch.
4. Add notable changes to the [*changelog.md*](changelog.md) file.
5. Make sure your changes are consistent with used conventions.
6. Push all your changes to the branch.
7. Submit a [new pull request](https://github.com/dominiksalvet/asus-fan-control/pulls) to the master branch.

## Wiki

In case you are interested in creating wiki content, feel free to take a look at our [community-driven asus-fan-control wiki](https://github.com/dominiksalvet/asus-fan-control/wiki). It is open to the public and everyone can contribute as they wish.
