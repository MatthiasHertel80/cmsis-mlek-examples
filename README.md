# CMSIS-MLEK Examples

This repository shows the usage of the [CMSIS-MLEK](https://www.keil.arm.com/packs/cmsis-mlek-arm/overview/) and [tensorflow-lite-micro](https://www.keil.arm.com/packs/tensorflow-lite-micro-tensorflow/overview/) software packs.

It contains configured [CMSIS Reference Applications](https://open-cmsis-pack.github.io/cmsis-toolbox/ReferenceApplications/) that are stand-alone example projects. Each example is independently configured for directly running on the related hardware board. When using [Keil Studio for VS Code](https://www.keil.arm.com/) open directly the folder of the related project as otherwise the `.vscode` configuration files would conflict.

Configured Boards:

- [Alif Semiconductor Ensemble E7 AI/ML AppKit](./Alif) utilizing Ethos-U55 and dual core configurations.

## CI Verification

A [GitHub Workflow](https://github.com/Arm-Examples/cmsis-mlek-examples/blob/main/.github/workflows/test_audio.yaml) exemplifies a verification process in a CI system. It compiles the application for [Arm Virtual Hardware FVP](https://github.com/ARM-software/AVH) and executes it. The output is stored as artifact.

In a similar way it could be also compiled for the hardware target.

> TIP: You may fork this repository to explore this workflow.

## Issues

Please feel free to raise an [issue on GitHub](issues) to report misbehavior (i.e. bugs) or start discussions about enhancements. This is your best way to interact directly with the maintenance team and the community. We encourage you to append implementation suggestions as this helps to decrease the workload of the limited maintenance team.
