# Contributing

The development of asus-fan-control is published on [this website](https://github.com/dominiksalvet/asus-fan-control) and **everyone is welcome to contribute**. Here is described how.

## Test a new laptop model

If you are about to test a new laptop model that has not been tested yet, you should know that **none of asus-fan-control authors is responsible for possible damage** it can cause to your device as the program uses ACPI calls and it modifies data on some addresses. Nevertheless, target addresses should be set to their default values on tested models when rebooting the system.

Provided the program is working on your device, try to find the best temperature configuration for your device using the `sudo asus-fan-control set-temps TEMPERATURES` command. Then follow the steps described in the [Suggestions](#suggestions) section and add the output of `sudo asus-fan-control get-temps` and `sudo dmidecode -s system-product-name` commands to the issue text. In case you had to change the ACPI base address or the number of temperatures, state this fact in the issue as well. If the issue is approved, your laptop will be added to tested models in [*README.md*](README.md) file and the program will recognize it.

## Suggestions

If you have any suggestions (or questions) about the development of the project, follow these steps:

1. Make sure the same suggestion has not been already reported in [issues](https://github.com/dominiksalvet/asus-fan-control/issues).
2. Open a [new issue](https://github.com/dominiksalvet/asus-fan-control/issues/new/choose).
3. In the issue, try to provide as much relevant information as possible.

## Pull requests

Except for pull requests with bug fixes, every pull request must be preceded by creating an issue as described in the [previous section](#suggestions) and must be approved. Then continue as described below:

1. [Fork](https://github.com/dominiksalvet/asus-fan-control/fork) asus-fan-control.
2. Create a new branch with a meaningful name.
3. Make your changes in the branch.
4. Add notable changes to the [*CHANGELOG.md*](CHANGELOG.md) file.
5. Make sure **all changes are POSIX-friendly and consistent** with used formatting and conventions.
6. Push all your changes to the branch.
7. Submit a [new pull request](https://github.com/dominiksalvet/asus-fan-control/pulls) to the `master` branch.
8. In the pull request, provide a clear description of the problem and its solution.
9. In the pull request, provide relevant issue numbers if any exist.

## License

By contributing, you agree that your contributions will be licensed under the same license as the affected files. In case of creating a new file, choose the most appropriate license with respect to the project [licensing policy](README.md#license) and the type of created file.
