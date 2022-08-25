# HLA Custom Device

The **HLA Custom Device** allows users to use a Veristand based system as an HLA federate on a RTI network.

## Using the custom device

- Download and install dependencies on RT target. Refer to the [Dependency list](https://github.com/NIVeriStandAdd-Ons/niveristand-hla-custom-device/releases/tag/v0.9)
- Download the latest package/zip file from the [Releases page](https://github.com/NIVeriStandAdd-Ons/niveristand-hla-custom-device/releases)

## Requirements

- Any Linux RT controller (cRIO or PXI)
- A valid MAK RTI License for Linux systems, as described in the [MAK RTI User Guide](https://www.mak.com/product-user-guides/932-mak-rti-4-6-users-guide/file). 

## LabVIEW Source Code Version

LabVIEW 2019

## Dependencies

### Running the custom device

- [VeriStand 2019 or later](https://www.ni.com/en-us/support/downloads/software-products/download.veristand.html)
- A valid MAK RTI License for Linux systems, as described in the [MAK RTI User Guide](https://www.mak.com/product-user-guides/932-mak-rti-4-6-users-guide/file). 

### Developing or building from source

The additional software listed below is required to develop or build this custom device from source. Manual build instructions are located [here](docs/Manual%20Build%20Instructions.md).

- [LabVIEW 2019 or later](https://www.ni.com/en-us/support/downloads/software-products/download.labview.html)
- [LabVIEW Real-Time Module](https://www.ni.com/en-us/support/downloads/software-products/download.labview-real-time-module.html)
- [VeriStand Custom Device Development Tools](https://github.com/ni/niveristand-custom-device-development-tools)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-development-tools/releases)
- [HLA Custom Device dependencies](https://github.com/NIVeriStandAdd-Ons/niveristand-hla-custom-device/releases/tag/v0.9)

## Git History & Rebasing Policy
Branch rebasing and other history modifications will be listed here, with several notable exceptions:
- Branches prefixed with `dev/` may be rebased, overwritten, or deleted at any time.
- Pull requests may be squashed on merge.

## License

The HLA Custom Device is licensed under an MIT-style license (see LICENSE). Other incorporated projects may be licensed under different licenses. All licenses allow for non-commercial and commercial use.
