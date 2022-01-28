# Contributing

The development of AFC is published on [this website](https://github.com/dominiksalvet/asus-fan-control) and **everyone is welcome to contribute**.

## Add New Device

If you want to test a new device and be declared its first tester, you should know that **none of AFC authors is responsible for possible damage** it can cause. Nevertheless, even in case of any problems, uninstalling AFC and rebooting the system should help.

### Basic Configuration

If everything works after the installation (you can use custom temperatures and they affect your fan speed), try to find suitable temperatures for your device using `sudo asus-fan-control set-temps <temps>` command and continue as stated in the [Suggestions](#suggestions) section.

### Advanced Configuration

If something does not work after the installation, do not despair. Whether it does not work at all or not all fans are controlled, it might be caused by different base ACPI fan addresses of your device. Please visit [afc-scout](https://github.com/dominiksalvet/afc-scout) to find your base addresses. Once you have the addresses, you will be able to set temperatures using the following command:

```
sudo FALLBACK_ADDRS='<addrs>' FALLBACK_TEMPS='<temps>' asus-fan-control set-temps default
```

> Keep in mind that until the support for your device is added, you have to use the `FALLBACK` environment variables for any `asus-fan-control` invocation with root permissions. Then, you will be able to use `asus-fan-control` normally.

Once it works, try to find suitable temperatures and continue as stated in the [Suggestions](#suggestions) section.

### It Does Not Work

Unfortunately, AFC might not work on some devices even after trying the above. If that is your case, creating an issue most likely will not result in adding the support for your device into AFC immediately but it may create a good place for gathering people with the same device. Eventually, that may end up with a community contribution or recommendation to other tools that work. If you decide to go this way, follow the steps in the [Suggestions](#suggestions) section.

## Suggestions

If you have any suggestions or bug reports for AFC, follow these steps:

1. Make sure the same is not already reported in [issues](https://github.com/dominiksalvet/asus-fan-control/issues).
2. Open a [new issue](https://github.com/dominiksalvet/asus-fan-control/issues/new/choose). Choose an appropriate issue type.

> If you are intentionally creating a possibly duplicate issue, state why your particular case is different.

## Pull Requests

If you want to contribute directly, it may be a good idea to [create an issue](https://github.com/dominiksalvet/asus-fan-control/issues/new/choose) first to discuss it. Then follow the steps:

1. [Fork](https://github.com/dominiksalvet/asus-fan-control/fork) AFC repository.
2. Create a new branch with a descriptive name.
3. Make your changes in the branch.
4. Add notable changes to the [changelog.md](changelog.md) file.
5. Make sure your changes are consistent with used conventions.
6. Push all your changes to the branch.
7. Submit a [new pull request](https://github.com/dominiksalvet/asus-fan-control/pulls) to the master branch.

## Wiki

In case you are interested in creating wiki content, feel free to take a look at our [community-driven AFC wiki](https://github.com/dominiksalvet/asus-fan-control/wiki). It is open to the public and everyone can contribute as they wish.
