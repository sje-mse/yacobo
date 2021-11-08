# yacobo
Yet Another Control Board for IBM Model M

## Components:
- 1x[16 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/6-520415-6/2294505)
- 1x[8 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/5-520315-8/688639)
- 1x[4 Position Ribbon Connector](https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/5-520315-4/2262309)
- 1x[USB B Connector](https://www.digikey.com/en/products/detail/on-shore-technology-inc/USB-B1HSB6/2677744)
- 3x[120 Ohm Resitor](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-120R/9138050)
- 2x[22 Ohm Resistor](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-22R/9138099)
- 1x[Blue Pill Development Board](https://www.amazon.com/Teyleten-Robot-Development-STM32F103C8T6-Learning/dp/B08THXZ6XK/ref=sr_1_3)

## The Blue Pill Development Board
The Blue Pill development board houses the STM32F103C8T6, which is to be flashed with QMK firmware.
Blue Pills are very common, but can be sometimes difficult to source. One reliabe source is linked above.
Many blue pills ship with incorrect USB D+ pullup resistances in R10. The correct resistance is 1.5 KOhm,
which should be marked `152` on the resistor. Common incorrect resistances are 10 KOhm (marked `103`),
or 4.7 KOhm (marked `472`). The `R0` spot on the Yacobo board can be populated with one of the following corrective
resistors to bring the equivalent resistence to the proper value of 1.5 KOhm:


## Corrective Resistors:
- 10 KOhm: [1.8 KOhm](https://www.digikey.com/en/products/detail/yageo/MFR-25FTE52-1K8/13921251)
- 4.7 KOhm: [2.2 KOhm](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-2K2/9138108)
