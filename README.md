% Temperature Controller using ATmega16 %
--------------------------------------------------------------------------------
-----Principal & Application-----

-> Intro to Temperature Controller:

Temperature controllers are devices used to accurately control process temperature without extensive operator involvement. It is a control system which accepts data from temperature sensors such as thermocouples or Resistance Temperature Detectors (RTD) and compares the actual temperature to the desired set-point temperature, to operate temperature controlling elements like coolers or heaters.

--------------------------------------------------------------------------------

-> Why do we need temperature controller?

In recent advanced era the temperature measurement and its control has become an integral part of any control system operating in a temperature sensitive environment. e. g.
- The temperature of food items can be controlled to minimize the bacterial growth without affecting its nutrition value.
- For boilers, temperature is important for water and air preheat, fuel oil viscosity, and steam superheat control.
- The temperature control in cold stores reduces the contamination and degradation rate in pharmaceutical, biochemical, beverage and food industries.
- The temperature control in plant growth chambers is important for studying the effect of hybridization, genetic engineering and plant growth regulators.

Due to the above reason we have to go for this project.

--------------------------------------------------------------------------------

An ATmega16 AVR Microcontroller is used for carrying out all the required computations and control. It has an in-built Analog to Digital converter. Hence an external ADC is not required for converting the analog temperature input into digital value. An inexpensive temperature sensor LM35 is used for sensing the ambient temperature. The system will get the temperature from the sensor IC and will display the temperature on the LCD. This temperature is compared with the set point temperature declared by the user. We are implementing On/Off control for controlling the temperature. The temperature must be within a certain range otherwise continuous on/off of the controlling elements (heater & cooler) will cause damage to them. We consider the temperature range to be ±2oC compared to the set temperature. If the Room/Chamber temperature goes beyond the upper limit then cooler will be switched ON and if temperature goes below the lower limit then heater will be switched ON. At the set range both the heater and the fan will be OFF.
