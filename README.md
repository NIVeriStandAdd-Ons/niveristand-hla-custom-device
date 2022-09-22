# HLA Custom Device

The **HLA Custom Device** allows users to use a Veristand based system as an [HLA](https://en.wikipedia.org/wiki/High_Level_Architecture) federate on a RTI network.

The custom device supports the folloiwng functionality:
- *Federation Management*: Connect/disconnect federate from RTI, create and join federation executions
- *Declaration Management*: Publish/Subscribe Object class attributes and Interaction Parameters
- *Object Management*: Reserve/Register object instances, Update/Reflect Attribute values, Send/Receive interactions
- *Ownership Management*: not implemented yet
- *Time Management*: not implemented yet
- *Data Distribution Management*: not implemented yet
- *Management Object Model*: not implemented yet

The custom device supports the following vendors of RTI/LRC:

- [MAK Technologies](https://www.mak.com/solutions-category/index.php?option=com_content&view=article&id=81&Itemid=108)

The custom device supports the following Operating Systems:

- [NI Linux RT](https://www.ni.com/it-it/shop/linux/introduction-to-ni-linux-real-time.html)

To request a new feature, feel free to contribute yourself or ask for it through the [issues](https://github.com/NIVeriStandAdd-Ons/niveristand-hla-custom-device/issues) page by labelling your request as an `enhancement`

## Using the custom device

- Download the latest package/zip file from the [Releases page](https://github.com/NIVeriStandAdd-Ons/niveristand-hla-custom-device/releases)
- See the [User Guide](Docs/User%20Guide.md) for a walthrough of using the custom device
- See the [FOM import documentation]() for configuring the list of object/attributes that the custom device will exchange inside the federation

## Requirements

- Any Linux RT controller (cRIO or PXI) with 19.x system image
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
