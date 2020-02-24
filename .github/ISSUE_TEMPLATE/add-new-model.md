---
name: Add new model
about: Propose adding support for a new device
title: Add support for <model>
labels: add new model
assignees: dominiksalvet
---

**Environment**
State asus-fan-control version and OS information.

**Basic configuration**
If only temperatures were configured, add output of:
* `sudo asus-fan-control get-temps`
* `sudo asus-fan-control model-info`

**Advanced configuration**
If advanced configuration was used, add output of:
* `sudo FALLBACK_ADDR=<addr> FALLBACK_TEMPS='<temps>' asus-fan-control model-info`

**Additional context**
Add any additional context.
