# Contribution Guide

The development of this project is published on [this website](https://gitlab.com/dominiksalvet/asus-fan-control) and **everyone is welcome to contribute**. Here is described how.

## Testing a new notebook model

If you are about to test an ASUS notebook model that hasn't been tested before, you should know that **none of asus-fan-control authors is responsible for possible damage** that it can cause to your device because the program uses ACPI calls and it modifies data on some addresses. Nevertheless, target addresses should be set to their default values on tested models when rebooting the system.

Provided you are aware of the fact above and the program is working on your device, try to find the best temperature configuration for your device using the `sudo asus-fan-control -set-temps:<numbers>` command. Then follow the steps described in the [Suggestions](#suggestions) section and add the outputs of `sudo asus-fan-control -get-temps` and `sudo dmidecode -s system-product-name` commands to the issue text. If the issue is approved, your model will be added to the [Tested notebook models](#tested-notebook-models) list.

## Suggestions

If you have any suggestions on development of the project, follow these steps:

1. Take a look at [issues](https://gitlab.com/dominiksalvet/asus-fan-control/issues) of the project and **make sure that the same suggestion wasn't already reported**.
2. If not, open a [new issue](https://gitlab.com/dominiksalvet/asus-fan-control/issues/new). In the issue, **try to provide as much relevant information as possible**.

## Merge requests

**Except the merge requests with bug fixes**, every merge request must precede creating an issue as described in the [previous section](#suggestions) and also must be approved. Then, continue as described below:

1. Fork this project.
2. Create a new branch with descriptive name according to your changes.
3. Note your changes to the [Unreleased](CHANGELOG.md#unreleased) section in the [*CHANGELOG.md*](CHANGELOG.md) file.
4. Commit and push your changes to the branch.
5. Submit a [new merge request](https://gitlab.com/dominiksalvet/asus-fan-control/merge_requests/new) with **clear description of the problem and it's solution**. Also include the relevant issue number if applicable.

---

If you edit any source code, retain its original formatting.

## License

By contributing, you agree that your contributions will be licensed under the same license as the affected files. In case of creating a new file, choose the most appropriate license with respect to the project [licensing policy](README.md#license) and the type of created file.
