$regfile = "m16def.dat"
$crystal = 8000000
$hwstack = 32
$swstack = 8
$framesize = 40

Config Lcdpin = Pin , E = Portc.4 , Rs = Portc.5 , Db4 = Portc.3 , Db5 = Portc.2 , Db6 = Portc.1 , Db7 = Portc.0

Config Lcd = 16 * 2

Config Adc = Single , Prescaler = Auto , Reference = Avcc
Start Adc

Config Portb.0 = Output                                     'led1 that indicates heater is on
Config Portb.1 = Output                                     'led2 that indicates cooler is on
Config Portd.3 = Output
Config Portd.4 = Output

Dim W As Word
Dim A As Single

Cursor Off
Cls

Locate 1 , 3
Lcd "Temperature_"
Locate 2 , 4
Lcd "Controller"
Wait 2
Cls
Locate 1 , 6
Lcd "using"
Locate 2 , 5
Lcd "ATmega16"
Wait 2
Cls

Do


'Reset Portb.1
'Reset Portb.0
'Reset Portd.3
'Reset Portd.4

W = Getadc(0)
A = W / 1.98

Locate 1 , 2
Lcd "Temp = "
Locate 1 , 9
Lcd A
Locate 1 , 14
Lcd "'C "
Waitms 200


If A > 30 And A < 40 Then
        Cls
      Reset Portb.1
      Reset Portb.0
      Reset Portd.3
      Reset Portd.4
End If

If A > 40 Then

   Gosub Abc



   End If

If A < 30 Then

   Gosub Xyz



   End If


Loop
End

Abc:
         Locate 2 , 3
         Lcd "Cooler is ON"
         Wait 1
         Set Portb.1
         Reset Portb.0
         Set Portd.4
         Reset Portd.3
         'Wait 2
         Return

Xyz:

         Locate 2 , 3
         Lcd "Heater is ON"
         Wait 1
         Reset Portb.1
         Set Portb.0
         Reset Portd.4
         Set Portd.3
         Return