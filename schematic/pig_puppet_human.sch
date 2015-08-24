<Qucs Schematic 0.0.18>
<Properties>
  <View=-89,-36,786,843,1,0,62>
  <Grid=10,10,1>
  <DataSet=pig_pupped_human.dat>
  <DataDisplay=pig_pupped_human.dpl>
  <OpenDisplay=1>
  <Script=pig_pupped_human.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.PortSym 40 20 2 0>
  <.PortSym 40 60 1 0>
  <.PortSym 70 100 3 0>
  <.PortSym 70 140 4 0>
  <.PortSym 70 180 5 0>
</Symbol>
<Components>
  <Vdc V_power 1 560 570 18 -26 0 1 "12 V" 1>
  <GND * 1 560 600 0 0 0 0>
  <R R9 1 80 700 -26 15 0 0 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 170 760 0 0 0 0>
  <Lib D1 1 140 700 -23 -35 0 2 "LEDs" 0 "red" 0>
  <_BJT T1 1 170 620 14 24 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <Lib Led_230V 1 230 620 17 -12 0 1 "LEDs" 0 "blue" 0>
  <Relais Relay_1 1 200 560 49 -26 0 0 "0.5 V" 0 "0.1 V" 0 "0" 0 "1e12" 0 "26.85" 0>
  <Vac V_ac 1 350 620 24 -7 0 1 "230 V" 1 "1 GHz" 0 "0" 0 "0" 0>
  <R R8 1 110 620 -60 -54 0 0 "4.7k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 430 490 0 0 0 0>
  <R R6 1 530 350 -26 -52 0 2 "2 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <L L1 1 470 350 -26 -25 0 2 "1 nH" 0 "" 0>
  <Diode D1_ 1 500 390 -14 18 0 2 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R7 1 300 390 -84 8 0 2 "4.7 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R10 1 370 450 -71 13 0 3 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <_BJT T1_tip120 1 430 420 15 18 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <_BJT T2 1 370 390 -23 -81 0 0 "npn" 1 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <GND * 1 180 60 0 0 0 0>
  <R R2 1 300 40 -9 26 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R5 1 360 40 -22 -54 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R1 1 240 40 -63 -56 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Lib OP2 1 230 140 -70 -84 0 2 "OpAmps" 0 "tl081(TI)" 0>
  <GND * 1 410 240 0 0 0 0>
  <R LDR1 1 410 150 15 -26 0 1 "3 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R LDR2 1 410 210 15 -26 0 1 "3 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vdc V_logic 1 530 150 18 -26 0 1 "5 V" 1>
  <GND * 1 530 180 0 0 0 0>
  <Lib OP1 1 230 300 -70 -84 0 2 "OpAmps" 0 "tl081(TI)" 0>
  <Port Out_neg 1 20 140 -69 -42 0 0 "1" 0 "analog" 0>
  <Port Out_pos 1 20 300 -74 -37 0 0 "2" 0 "analog" 0>
  <Port P1 1 20 440 -44 -31 0 0 "3" 0 "analog" 0>
  <Port P3 1 20 620 -45 -37 0 0 "5" 0 "analog" 0>
  <Lib D2 1 110 200 -23 20 0 0 "LEDs" 0 "red" 0>
  <Lib D3 1 110 360 -23 20 0 0 "LEDs" 0 "red" 0>
  <GND * 1 20 380 0 0 0 0>
  <GND * 1 20 220 0 0 0 0>
  <R R12 1 50 360 -35 -50 0 2 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R11 1 50 200 -38 -49 0 2 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Port PB0 1 20 700 -51 -32 0 0 "4" 0 "analog" 0>
</Components>
<Wires>
  <170 700 170 760 "" 0 0 0 "">
  <400 540 560 540 "" 0 0 0 "">
  <170 650 170 700 "" 0 0 0 "">
  <400 510 400 540 "" 0 0 0 "">
  <170 510 400 510 "" 0 0 0 "">
  <170 510 170 530 "" 0 0 0 "">
  <230 530 350 530 "" 0 0 0 "">
  <230 650 350 650 "" 0 0 0 "">
  <350 530 350 590 "" 0 0 0 "">
  <430 480 430 490 "" 0 0 0 "">
  <560 350 560 390 "" 0 0 0 "">
  <560 390 560 540 "" 0 0 0 "">
  <530 390 560 390 "" 0 0 0 "">
  <430 390 470 390 "" 0 0 0 "">
  <430 360 430 390 "" 0 0 0 "">
  <370 480 430 480 "" 0 0 0 "">
  <430 450 430 480 "" 0 0 0 "">
  <370 420 400 420 "" 0 0 0 "">
  <370 360 430 360 "" 0 0 0 "">
  <330 390 340 390 "" 0 0 0 "">
  <430 350 440 350 "" 0 0 0 "">
  <430 350 430 360 "" 0 0 0 "">
  <180 40 210 40 "" 0 0 0 "">
  <180 40 180 60 "" 0 0 0 "">
  <390 40 530 40 "" 0 0 0 "">
  <270 40 270 100 "" 0 0 0 "">
  <270 180 410 180 "" 0 0 0 "">
  <410 70 410 120 "" 0 0 0 "">
  <530 40 530 70 "" 0 0 0 "">
  <530 70 530 120 "" 0 0 0 "">
  <410 70 530 70 "" 0 0 0 "">
  <270 180 270 260 "" 0 0 0 "">
  <330 40 330 340 "" 0 0 0 "">
  <270 340 330 340 "" 0 0 0 "">
  <200 390 270 390 "" 0 0 0 "">
  <20 140 140 140 "" 0 0 0 "">
  <20 300 140 300 "" 0 0 0 "">
  <200 390 200 440 "" 0 0 0 "">
  <20 440 200 440 "" 0 0 0 "">
  <20 620 80 620 "" 0 0 0 "">
  <140 140 140 200 "" 0 0 0 "">
  <140 300 140 360 "" 0 0 0 "">
  <20 200 20 220 "" 0 0 0 "">
  <20 360 20 380 "" 0 0 0 "">
  <20 700 50 700 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
