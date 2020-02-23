# Contributing

The development of asus-fan-control is published on [this website](https://github.com/dominiksalvet/asus-fan-control) and **everyone is welcome to contribute**.

## Test a new laptop

If you want to test a new laptop, you should know that **none of asus-fan-control authors is responsible for possible damage** it can cause. Nevertheless, even in case of any problems, uninstalling asus-fan-control and reboot the system should help.

### Basic configuration

If your device works out of the box, try to find suitable temperatures using `sudo asus-fan-control set-temps <temps>` command and continue as stated in the [Suggestions and questions](#suggestions-and-questions) section.

### Advanced configuration

If your device does not work out of the box, do not despair. It is most likely caused by a different base ACPI fan address of your device. So you need to find your ACPI address. For this purpose, [afc-scout](https://github.com/dominiksalvet/afc-scout) has been created and it should greatly help you. Once you have the ACPI address, you will be able to set temperatures using the following command:

```
sudo FALLBACK_ADDR=<addr> FALLBACK_TEMPS='<temps>' asus-fan-control set-temps default
```

> Keep in mind that until the support for your model is added, you have to use the `FALLBACK` environment variables for any asus-fan-control invocation with root permissions. Then, you will be able to use asus-fan-control normally.

Once it works, try to find suitable temperatures and continue as stated in the [Suggestions and questions](#suggestions-and-questions) section.

## Suggestions and questions

If you have any suggestions or questions about asus-fan-control, follow these steps:

1. Make sure the same is not already reported in [issues](https://github.com/dominiksalvet/asus-fan-control/issues).
2. Open a [new issue](https://github.com/dominiksalvet/asus-fan-control/issues/new/choose).

## Pull requests

If you want to contribute directly, it may be a good idea to [create an issue](https://github.com/dominiksalvet/asus-fan-control/issues/new/choose) first to discuss it. Then follow the steps:

1. [Fork](https://github.com/dominiksalvet/asus-fan-control/fork) asus-fan-control.
2. Create a new branch with a descriptive name.
3. Make your changes in the branch.
4. Add notable changes to the [*CHANGELOG.md*](CHANGELOG.md) file.
5. Make sure your changes are consistent with used conventions.
6. Push all your changes to the branch.
7. Submit a [new pull request](https://github.com/dominiksalvet/asus-fan-control/pulls) to the master branch.
