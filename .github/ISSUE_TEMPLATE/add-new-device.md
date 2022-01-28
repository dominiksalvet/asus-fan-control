---
name: Add new device
about: Propose adding support for a new device
title: Add support for <device>
labels: add new device
assignees: dominiksalvet

---

**Environment**
State your AFC version, OS version, and CPU name.

**Basic configuration**
If only temperatures were set and they worked, add output of:
* `sudo asus-fan-control get-temps` (new default temperatures for your device)
* `sudo asus-fan-control model-info`

**Advanced configuration**
If advanced configuration was used, add output of:
* `sudo FALLBACK_ADDRS='<addrs>' FALLBACK_TEMPS='<temps>' asus-fan-control model-info`

**It does not work**
If neither configuration was working for your device, community involvement is required. Please provide some information so the community can build on something. Why does AFC not work? What have you tried?

**Additional context**
Add any additional context.
