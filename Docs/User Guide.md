# Using the HLA Custom Device Custom Device

This guide demonstrates how to configure and deploy the HLA Custom Device custom device. After having properly configured the [RTI](https://en.wikipedia.org/wiki/Run-time_infrastructure_(simulation)) of your HLA federation, you can use your system as a federate through this custom device.

## Configure RTI (Run Time Infrastructure)

The custom device turn your system into a HLA Federate, which requires an RTI (Run Time Infrastructure) to connect to. Each RTI vendor implements has its own process and tools to use, and we report here below a section for each vendor that we have tested so far.

The goal of this configuration is to provide the so called *local settings designator string* to connect your system to the HLA federation through the custom device. 
 
### MAK 

The [MÄK High Performance RTI](https://www.mak.com/mak-one/infrastructure/mak-rti#the-mak-rti-unlicensed-mode-allows-limited-free-use) uses .mtl files to configure the connection to the RTI. For the custom device that we are using here there is a sample file found in `Docs/Assets/mtl/testDev_force_manual.mtl` where you should edit the following line:

```
(setqb RTI_tcpForwarderAddr "10.100.1.22")
```

with 

```
(setqb RTI_tcpForwarderAddr "<IP of the Desktop PC with Xplane>")
```

Refer to the MAK documentation (e.g. the RTIx.yUsersGuide.pdf) to get more information about how to work with MTL (MAK Technologies Lisp) files.

## Configure the Custom Device

This guide shows two options for configuring the custom device:
- Importing a Parameters file in System Explorer
- Scripting the custom device configuration

### Importing a Parameters file in System Explorer
The Parameters file is generated from an XML schema for configuring the custom device. More information about the Parameters file XML schema can be found in `Docs/Parameters XML File/Parameters XML File.md`.

This example uses a simple example Parameters file found at `Assets/Parameters.xml`.

The file is configured with three simulated terminals:
- **0**: Bus Controller
- **1**: Remote Terminal 1
- **15**: Remote Terminal 15

These terminals send and receive messages of each type supported by the Custom Device:
- **BC to RT** - Bus Controller to Remote Terminal
- **RT to BC** - Remote Terminal to Bus Controller
- **RT to RT** - Remote Terminal to Remote Terminal
- **MC** - Mode Code

Each pair of messages (BC to RT, RT to BC, and RT to RT) is configured with similar settings. Message `BC to RT1 (SA2)` does not define parameters under the message, which will result in VeriStand channels for as many U16 datatype words as are found in the `<numberOfWords>` tag. Message `BC to RT15 (SA3)` defines two unscaled 32-bit parameters with BNR encoding, one signed and the other unsigned. Below is the configuration of the two BC to RT messages:

```xml
<message>
	<name>BC to RT1 (SA2)</name>
	<address>
		<terminalAddress>1</terminalAddress>
		<subAddress>2</subAddress>
		<direction>Rx</direction>
	</address>
	<messageType>BC to RT</messageType>
	<numberOfWords>4</numberOfWords>
	<createTimestampChannel>true</createTimestampChannel>
</message>
<message>
	<name>BC to RT15 (SA3)</name>
	<address>
		<terminalAddress>15</terminalAddress>
		<subAddress>3</subAddress>
		<direction>Rx</direction>
	</address>
	<messageType>BC to RT</messageType>
	<numberOfWords>4</numberOfWords>
	<createTimestampChannel>true</createTimestampChannel>
	<parameters>
		<parameter>
			<encoding>BNR</encoding>
			<signed>true</signed>
			<startBit>0</startBit>
			<numberOfBits>32</numberOfBits>
			<scale>1</scale>
			<offset>0.0</offset>
			<name>Parameter 0</name>
			<defaultValue>0</defaultValue>
		</parameter>
		<parameter>
			<encoding>BNR</encoding>
			<signed>false</signed>
			<startBit>32</startBit>
			<numberOfBits>32</numberOfBits>
			<scale>1</scale>
			<offset>0.0</offset>
			<name>Parameter 1</name>
			<defaultValue>0</defaultValue>
		</parameter>
	</parameters>
</message>
```

For each message in the Parameters configuration file, the Custom Device creates corresponding VeriStand channels under the simulated terminals contained in the file. For these two example messages, the Bus Controller has the Tx channels, so the words and parameters under the Bus Controller are outputs. Corresponding input channels are created under Remote Terminal 1 and Remote Terminal 15. The resulting System Definition tree and screen contents can be seen in later sections of this guide.

This example Parameters file contains other message types, as well as Acyclic Frames. When its trigger channel is toggled, Acyclic Frame `acyclicFrame1` sends these messages referenced in the Parameters file:
- MC 17
- BC to RT15 (SA3)
- RT1 to BC (SA5)
- RT15 to RT1 (SA21)

The remaining messages are cyclic messages scheduled in a Minor Frame and sent at the period defined in the Parameters file:
- MC 16
- BC to RT1 (SA2)
- RT15 to BC (SA6)
- RT1 to RT15 (SA20)

### Configure the Custom Device in System Explorer

1. Create a new VeriStand Project and configure your PXI Linux RT target.
2. Navigate to the `Targets\Controller\Hardware\Custom Devices` entry in the tree.
3. Right-click the **Custom Devices** entry and add a new instance of the **NI\AIM MIL-STD-1553** custom device.
4. Use the Main Page to set the **PXI Slot Number** and **BIU Number** accordingly.
![System Explorer Main Page](Screenshots/System_Explorer_main_configured.PNG)
5. Navigate to the **Configuration Files** page.
6. Use the browse button to select the example parameters file at `niveristand-aim-milStd1553-custom-device\Docs\User Guide\Assets\Parameters.xml`
![System Explorer Configuration Files](Screenshots/System_Explorer_configuration_files_configured.PNG)

Note: After configuring the custom device, all of the configuration under `Channel` is read-only except for the `Description` field on each page.

![System Explorer Parameter](Screenshots/System_Explorer_parameter_configured.PNG)

### Scripting the Custom Device Configuration

The AIM MIL-STD-1553 custom device includes a LabVIEW scripting API to configure the custom device programmatically. This allows users to parse an existing MIL-STD-1553 database into a working custom device configuration without the need to create a Parameters file. It also allows importing a Parameters file programmatically instead of through System Explorer.

To use the scripting API, the optional scripting package must be installed:
`ni-aim-mil-std-1553-veristand-20xx-labview-support`

The scripting API includes two example files inside a LabVIEW example project found at the following directory: `C:\Program Files (x86)\National Instruments\LabVIEW 20xx\examples\NI VeriStand Custom Devices\AIM MIL-STD-1553`. It contains two example VIs:

- `Import Parameters Configuration to New AIM MIL-STD-1553 Custom Device.vi` - Demonstrates using the AIM MIL-STD-1553 scripting API to configure the custom device by importing a parameters configuration file.
- `Build New AIM MIL-STD-1553 Custom Device.vi` - Demonstrates using the AIM MIL-STD-1553 scripting API to configure the custom device by building from configuration clusters.

![Scripting Examples Project](Screenshots/Scripting_examples_project.PNG)

## Deploy the System Definition

After configuring the System Definition with the custom device, deploy the System Definition using VeriStand. Once the deployment state reaches **Connected**, use a VeriStand screen to display the custom device inputs and outputs. This example uses VeriStand 2020 R6, so your screen controls may behave differently depending on version.

1. Open a VeriStand Screen
2. Highlight the **System Definition** tree in the left rail
3. Expand the tree to `Targets\Controller\Hardware\Custom Devices\AIM MIL-STD-1553\CH00`
4. Drag the **Bus Controller\BC to RT1 (SA2)** item onto the screen
5. Drag the **Remote Terminal 01\Subaddress 02** item onto the screen
6. Change the values written to the words in the outgoing message (**Bus Controller\BC to RT1 (SA2)\Word 0x**) and see the values received by the Remote Terminal

![VeriStand Screen](Screenshots/VeriStand_screen_deployed.PNG)

To send the acyclic messages:

1. Drag the **Bus Controller\BC to RT15 (SA3)** item onto the screen
2. Drag the **Remote Terminal 15\Subaddress 03** item onto the screen
3. Change the values written to the parameters in the outgoing message (**Bus Controller\BC to RT15 (SA3)\Parameter 0x**)
4. Toggle the **Bus Controller\Acyclic Frames\Trigger (acyclicFrame1)** value to non-zero and see the values received by the Remote Terminal

## Modifying the Custom Device Configuration

Once the custom device is configured, you can change the configuration using the **Configuration Files** page in System Explorer. If the Parameters file changes on disk, use the **Refresh** button. If you need to select a new file, press the button to load a new path into the dialog.

Each time the configuration is changed, the **AIM MIL-STD-1553 Refresh** dialog will be displayed to compare the current and new configurations. Press **Apply** to accept the changes, or **Cancel** to exit without reconfiguring.