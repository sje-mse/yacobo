# yacobo
Yet Another Control Board for IBM Model M

![Yacobo Assembled](/pictures/yacobo-1.png)

## Inspired by Others
This project is inspired by the Model H project by John Hawthorn (www.modelh.club)
and the LevelOneTechs Model M boards (https://levelonetechs.com).
Additionally, the firmware in largely adapted from the Model H -
the only modifications are the pinouts and the keymaps, as well as some other
changes to keep it building against the tip of QMK.

## Purpose
The purpose of this project is to provide drop-in replacement Model M board with modern QMK firmware that users can
source, solder, and program themselves. If said goals are not important to user, they should definitely
check out the above inspirations, as those represent more complete and professional products.

## Components:
- 1x[16 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/6-520415-6/2294505)
- 1x[8 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/5-520315-8/688639)
- 1x[4 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/5-520315-4/2262309)
- 1x[USB B Connector](https://www.digikey.com/en/products/detail/on-shore-technology-inc/USB-B1HSB6/2677744)
- 3x[120 Ohm Resitor](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-120R/9138050)
- 2x[22 Ohm Resistor](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-22R/9138099)
- 1x[Blue Pill Development Board](https://www.amazon.com/Teyleten-Robot-Development-STM32F103C8T6-Learning/dp/B08THXZ6XK/ref=sr_1_3)

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
   spot the difference while sorting. Fortunately, there are some reputable sellers, one of which is linked above.
3. Early Blue Pills ship with an incorrect USB pullup resistor. This can be corrected by following the instructions
   found later in this README.

## The Black Pill
There do exist successors to the Blue Pill that address **all three** of the challenges presented above.

1. They ship with a bootloader which enables USB programming.
2. They house legitimate STM32F103C8T6 ICs.
3. They ship with the correct USB D+ pullup resistor.

Some of these are called Black Pills. One Black Pill is supplied by [RobotDyn]
(https://www.amazon.com/RobotDyn-BOOTLOADER-STM32F103C8T6-Development-Pinheaders/dp/B077SLHVNW).

It is slightly more expensive than the average Blue Pill, but well worth it for ease of use and peace of mind.

### Selecting an Alternative
**Be careful** when selecting an alternative to the Blue Pill. Be sure that it is **pin-compatible**
with the blue pill and contains the STM32F103C8T6 chip. For reference, here is the pin diagram for the Blue Pill:

![Blue Pill Pin Diagram](/pictures/blue-pill-diagram.jpg)

#### WARNING
There are other boards out there, which (confusingly) are
**also** called Black Pills which contain newer STM32F4xx series chips. These are not yet supported by QMK, and
(more importantly) are **not** pin-compatible with the Blue Pills. In fact, one of them has a 5V pin where the
Blue Pill has a Ground pin. It would be very dangerous to solder such a board to the Yacobo PCB and to
then plug in the usb cable!

## Blue Pill Flashing Guide
Before the the yacobo firmware can be flashed to the STM32F103C8T6 on the blue pill, we must flash
the chip with bootloader that enables USB programming. Fortunately, another project exists that provides
such images.

### The bootloader binaries

Github user rogerclarkemelbourne provides the following repo:

[STM32duino-bootloader](https://github.com/rogerclarkmelbourne/STM32duino-bootloader)

Images are provided in the `binaries` and the `bootloader_only_binaries` folders. The images in the former folder
also load a "blink" sketch onto the chips, which can be a nice way to check that the flashing process worked.

### Picking the correct bootloader image

The correct bootloader binary follows the name format `generic_boot20_*.bin`, where `*` stands for the pin
of the designated as the status LED. This can be determined by examining the front of the blue pill board.

![Blue Pill Status LED](/pictures/blu-pill-led.jpg)

In the case of of this board, the correct bootloader is `generic_boot20_pc13.bin`.

### Corrective Resistors:
Many blue pills ship with incorrect USB D+ pullup resistances in R10. The correct resistance is 1.5 KOhm,
which should be marked `152` on the resistor. Common incorrect resistances are 10 KOhm (marked `103`),
or 4.7 KOhm (marked `472`). The `R0` spot on the Yacobo board can be populated with one of the following corrective
resistors to bring the equivalent resistence to the proper value of 1.5 KOhm:

- 10 KOhm: [1.8 KOhm](https://www.digikey.com/en/products/detail/yageo/MFR-25FTE52-1K8/13921251)
- 4.7 KOhm: [2.2 KOhm](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-2K2/9138108)
