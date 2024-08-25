# yacobo
Yet Another Control Board for IBM Model M

![Yacobo CAD](/pictures/yacobo-cad.png)

![Yacobo Assembled](/pictures/populated-unpopulated-1-1.jpg)

## Inspired by Others
This project is inspired by the Model H project by John Hawthorn (https://modelh.club/)
and the LevelOneTechs Model M boards (https://level1techs.com/).
Additionally, the firmware in largely adapted from the Model H -
the only modifications are the pinouts and the keymaps, as well as some other
changes to keep it building against the tip of QMK.

## Purpose
The purpose of this project is to provide a drop-in replacement Model M control board with modern QMK firmware
that users can source, solder, and program themselves. If said goals are not important to user, they should
definitely check out the above inspirations, as those represent more complete and professional products.

## Components:
- 1x[16 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/6-520415-6/2294505)
- 1x[8 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/5-520315-8/688639)
- 1x[4 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/5-520315-4/2262309)
- 1x[USB B Connector](https://www.digikey.com/en/products/detail/on-shore-technology-inc/USB-B1HSB6/2677744)
- 3x[120 Ohm Resistor](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-120R/9138050)
- 2x[22 Ohm Resistor](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-22R/9138099)
- 1xBlue Pill Development Board

If your Model M membrane uses a single 12-terminal ribbon for both the matrix rows and the LEDs, use the following
part instead of the 8- and 4-Position Ribbon Connectors:

- 1x[12 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/6-520315-2/1137020)

### Corrective Resistors:
Many blue pills ship with incorrect USB D+ pullup resistances in R10. The correct resistance is 1.5 KOhm,
which should be marked `152` on the resistor. Common incorrect resistances are 10 KOhm (marked `103`),
or 4.7 KOhm (marked `472`). The `R0` spot on the Yacobo board can be populated with one of the following corrective
resistors to bring the equivalent resistence to the proper value of 1.5 KOhm:

- 10 KOhm: [1.8 KOhm](https://www.digikey.com/en/products/detail/yageo/MFR-25FTE52-1K8/13921251)
- 4.7 KOhm: [2.2 KOhm](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-2K2/9138108)

# The Blue Pill Development Board

![Blue Pill](/pictures/blue-pill.jpg)

The Blue Pill development board houses the STM32F103C8T6, which is to be flashed with QMK firmware.
Blue Pills are very common, but can be sometimes difficult to source. One reliabe source is linked above.

The Blue Pill was chosen for three reasons:
1. It contains the STM32F103C8T6, which is supported by QMK.
2. It contains all components necessary to support the STM32F103C8T6 and presents them in an easy-to-use
   break-out through-hole board.
3. It is common and inexpensive. In these times of semiconductor shortages, thousands of pre-assembled Blue Pills
   already flood the market.

That said, the Blue Pill presents several challenges, which we will address in this README.

1. Most available Blue Pills do not ship with a bootloader that is capable of being flashed using USB.
   This can be addressed using instructions found later in this README.
2. For some reason, there are many counterfeit Blue Pills on the market. Some of these are perfectly
   functional, but others do not contain the STM32F103C8T6 they advertise, and it can be impossible to
   spot the difference while sourcing.
3. Early Blue Pills ship with an incorrect USB pullup resistor. This can be corrected by following the instructions
   found earlier in this guide.

### Selecting an Alternative
**Be careful** when selecting an alternative to the Blue Pill. Be sure that it is **pin-compatible**
with the blue pill and contains the STM32F103C8T6 chip. For reference, here is the pin diagram for the Blue Pill:

![Blue Pill Pin Diagram](/pictures/blue-pill-diagram.jpg)

## Blue Pill Flashing Guide

Before the the yacobo firmware can be flashed to the STM32F103C8T6 on the Blue Pill, we must flash
the chip with bootloader that enables USB programming. If we have acquired a Blue Pill (or equivalent)
that already has such a bootloader, we can skip all the way down to the section labeled "Flashing the QMK Firmware".

### The Bootloader
Flashing the STM32F103C8T6 with a new bootloader requires that we procure three additional items:

- Hardware: A ST-Link V2  Emulator Downloader Programmer
- Software: STM32 ST-LINK Utility
- Firmware: The bootloader binary

#### Hardware: ST-LINK V2 Emulator Downloader/Programmer Device

Official ST-LINK V2 hardware exists, but it's expensive and overkill for our purposes.
Hobbiests use the common ST-LINK V2 Emulator Downloader/Programmer.

![ST-LINK V2 Device](/pictures/stl-device.jpg)

Much like the Blue Pill itself, the market is flooded with them. They are easy to find on Amazon, AliExpress,
Ebay, etc, and will usually run around 10 USD. These devices are often bundled with the Blue Pills themselves,
which is convenient.

The device should come with hookup wires. These wires connect the pins on the ST-LINK V2 device to the programming
pins at rear of the Blue Pill labeled `3v3`, `SWIO`, `SWCLK`, and `GND`. (The exact labels may differ by manufacturer.)

![ST-LINK V2 Plugged In](/pictures/stl-plugged-in.jpg)

There are more than 4 pins on the ST-LINK V2 device. Fortunately, the pinouts on ST-LINK V2 are labeled.

Unfortunately, much like the Blue Pill, some ST-LINK V2 devices are a little weird, and may have inaccurate pinout
labels on their outer shell. It is easy to check this - simply pull the cover off in the direction of the USB
connector and examine the pins on the underlying circuit board:

![ST-LINK V2 Uncovered Top](/pictures/stl-uncovered-1.jpg)

![ST-LINK V2 Uncovered Bottom](/pictures/stl-uncovered-2.jpg)

This particular unit appears to be accurate.

#### Software: STM32 ST-LINK Utility

##### Windows
ST provides several pieces of software that are capable of programming the Blue Pill. I have had success with the
free [STSW-LINK004](https://www.st.com/en/development-tools/stsw-link004.html).

##### Linux
ST-Link V2 can be used to program Blue Pills on Linux. For Ubuntu:
```
apt install --yes stm32flash libstlink1 libstlink-dev stlink-gui stlink-tools
```

#### Firmware: The bootloader binaries

Github user rogerclarkemelbourne provides the following repo:

[STM32duino-bootloader](https://github.com/rogerclarkmelbourne/STM32duino-bootloader)

Images are provided in the `binaries` and the `bootloader_only_binaries` folders. The images in the former folder
also load a "blink" sketch onto the chips, which can be a nice way to check that the flashing process worked.

The correct bootloader binary follows the name format `generic_boot20_*.bin`, where `*` stands for the pin
designated as the status LED. This can be determined by examining the front of the blue pill board.

![Blue Pill Status LED](/pictures/blue-pill-led.jpg)

In the case of of this board, the correct bootloader is `generic_boot20_pc13.bin`.

#### Flashing the Bootloader

Once we have gathered the required hardware, software, and firmware, we are ready to flash the
bootloader.

**Step 0:** Boot into Windows

I would love to get the STM32CubePro software working on Linux. If anyone can get that working, please submit a PR!

**Step 1:** Connect the ST-LINK V2 Emulator Device to the Blue Pill

![ST-LINK V2 Plugged In](/pictures/stl-plugged-in.jpg)

**Step 2:** Plug the ST-LINK V2 Emulator Device into a USB Port

Also, make sure that both the `BOOT0` and `BOOT1` jumpers are in the 0 position on the Blue Pill.

**Step 3:** Launch the STM32 ST-LINK Utility

**Step 4:** Use the `Open File` menu option to load the firmware.

![ST-LINK Software Open Firmware](/pictures/st-link-open.png)

**Step 5:** Connect to the ST-Link Device.

![ST-LINK Software Connect](/pictures/st-link-connect.png)

**Important:** Press the "RESET" button on the Blue Pill just before clicking Connect.
Connection must occur during a narrow boot window.

![ST-LINK Software Connected](/pictures/st-link-connected.png)

**Step 6:** Click the `Program` menu option under the `Target` menu.

![ST-LINK Software Program](/pictures/st-link-program.png)

**Step 7:** Click the `Start` button on the popup dialog.

![ST-LINK Software Program Start](/pictures/st-link-program-start.png)

**Step 8:** On completion, unplug the ST-LINK V2 Device.

![ST-LINK Software Program Complete](/pictures/st-link-complete.png)

The program will report that it lost connection with the target. This is normal.

**Step 9:** Use the USB-Micro port on the Blue Pill to reconnect with the host computer.
A notification may pop up about an unrecognized device. If so, press the reset button.
Eventually, Windows should report the device as a "Maple LLM 003" serial comms device.

This is an artifact of the origins of the Blue Pill. The original Blue Pills
were produced by a company named LeafLabs under the product name "Maple."
The product line was discontinued, but the knockoffs lived on in the form of the Blue Pills.

### Flashing the QMK Firmware
Now that we have a functioning bootloader, we can flash our QMK firmware onto the STM32F103C8T6 on the Blue Pill.
First, we should set up a QMK build environment. QMK is a rich and healthy project with many ways to program.

**Author's Note:**
I now direct the reader to QMK's excellent documentation for setting up their own build environment.
I got this working on Linux Mint), but I encourage you to do what works best for you.

> See the [build environment setup](https://docs.qmk.fm/#/getting_started_build_tools) and the [make instructions](https://docs.qmk.fm/#/getting_started_make_guide) for more information. Brand new to QMK? Start with our [Complete Newbs Guide](https://docs.qmk.fm/#/newbs).

Now that we have a QMK environment set up, it's time to start building and flashing.

**Step 0:** Copy the contents of the `firmware` folder of this repo into a new directory under
`qmk_firmware/keyboards` called `yacobo`.

Possible example command:
```
$ cp -r firmware ~/qmk_firmware/keyboards/yacobo
```

**Step 1:** Build the desired keyboard and keymap.

Possible example command:
```
$ qmk compile -kb yacobo -km default
```

**Step 2:** Connect the Blue Pill to the host computer using the USB port

On Linux systems, you can use the `dmesg` command to check whether it has been successfully connected.
![dmesg Maple detected](/pictures/maple-detected.png)

**Important**
If your Linux distribution does not recognize the Blue Pill, you may have to copy the file
`50-qmk.rules` into the proper `udev` directory.

Possible example command:
```
$ sudo cp misc/50-qmk.rules /etc/udev/rules.d
```

**Step 3:** Flash the firmware.

Possible example command:
```
$ qmk flash -kb yacobo -km default
```
Wait until the qmk starts printing out `...`, and then press the `RESET` button the Blue Pill.
This will allow the flashing to commence.

**Step 4:** Unplug and replug the Blue Pill via USB

If the flashing was successful, the os should recognize the Blue Pill as a keyboard controller!

![dmesg Yacobo detected](/pictures/yacobo-detected.png)

**Author's Note:**
I recommend putting `RESET` somewhere in your keymap. That way, if you want to re-program your control board after
reassembling your Model M case, you won't have to use your socket driver to open the case again. See
`firmware/keymaps/sje/keymap.c` as an example.

**Step 5:** Complete assembly!
Remember to solder the Blue Pill with its USB Micro port facing to the right, **away** from the USB-B
port on the Yacobo PCB:

![Yacobo Comparison](/pictures/yacobo-2.png)

#### IMPORTANT
There is not enough room in the Model M case to accommodate a removable configuration of the
Blue Pill using standard socket headers, so the Blue Pill must be soldered directly to the PCB
via its pin headers. For this reason, it is recommended that the Blue Pill be fully programmed
before it is soldered to the PCB. That way, should the Blue Pill prove to be defective, it can
be replaced without having to desolder 40 pins. (If the Blue Pill shipped with an incorrect resistor,
it cannot be flashed with QMK via USB until the resistance is corrected. In this case,
flash the bootloader before soldering to the PCB where the resistance can be corrected.
If the bootloader successfully flashes, there is a good chance that the firmware will work as well.)

## Completion

The completed Yacobo Control Board can now be dropped right back into the case where the old one was.

![Drop In](/pictures/drop-in.jpg)

**Author's Note:**
Since the Yacobo does not include the original's heavy grounding cable, a small piece of tape may be required
to keep the PCB in place if it must endure a bumpy ride somewhere.
