# Lucette

Le projet Luce est à l’origine du développement de la carte électronique Lucette.
Cette petite carte qui fonctionne sur batterie permet de contrôler plusieurs Lulu.

![alt tag](https://farm2.staticflickr.com/1562/25915319424_2622f2de8f_z_d.jpg)

## Lucette caractéristiques
- Interrupter ON/OFF
- Microcontroller Atmeg328 at 8MHz
- Contrôleur 16 PWM 12bits (TLC5940)
 - Courant de sortie max : 3.3V - 60 mA
- Chargeur lithium-ion intégré

## Important
- Avant de brancher une LED il faut relever le courant MAXIMUM qu'elle consomme, puis en fonction de cette valeur ajuster la résistance R5 sur la carte (cf: capture d'écran ci-joint).
 - La formule qui permet de calculer la valeur de cette résistance est a la page 14 du datasheet : http://www.ti.com/lit/gpn/tlc5940

#Flashing the bootloader

Localize avrdude
```
cd ~/Applications/arduino-1.6.11/hardware/tools/avr/bin
```
Read fuses
```
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -pm328p -c usbtiny -v
```
Write fuses
```
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -cusbtiny -pm328p -v -F -B10 -U lfuse:w:0xE2:m
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -pm328p -cusbtiny -v -F -B10 -U hfuse:w:0xDA:m
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -pm328p -cusbtiny -v -F -B10 -U efuse:w:0x05:m
```
Flash bootoader
```
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -cusbtiny -pm328p -v -F -B10 -U flash:w:~/Applications/arduino-1.6.11/hardware/arduino/avr/bootloaders/atmega/ATmegaBOOT_168_atmega328_pro_8MHz.hex
```
Arduino lock fuse
```
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -cusbtiny -pm328p -v -F -B10 -U lock:w:0x3f:m
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -cusbtiny -pm328p -v -F -B10 -U lock:w:0x0f:m
```

## Troubleshooting
If you cant read the fuses you will nead an extra Arduino board to feed the Lucette with 8MHz clock.

Set the Arduino fuse to activate clock out on Digital Pin 8
```
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -cusbtiny -pm328p -v -F -B10 -U lfuse:w:0xBF:m
```
Set the Arduino original fuse (see : http://www.engbedded.com/fusecalc)
```
./avrdude -C ~/Applications/arduino-1.6.11/hardware/tools/avr/etc/avrdude.conf -cusbtiny -pm328p -v -F -B10 -U lfuse:w:0xFF:m
```

# TODO
- add auto-reset with external components
- replace the MAX 1555 by the MCP73831
- add unused pins on the edge of the PCB