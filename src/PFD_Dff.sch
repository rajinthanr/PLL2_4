v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 500 -450 610 -450 {lab=UP}
N 500 -240 610 -240 {lab=DN}
N 590 -340 600 -340 {lab=UP}
N 600 -450 600 -340 {lab=UP}
N 590 -300 600 -300 {lab=DN}
N 600 -300 600 -240 {lab=DN}
C {devices/code.sym} 30 -445 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opin.sym} 180 -230 0 0 {name=p4 lab=UP}
C {ipin.sym} 110 -220 0 0 {name=p12 lab=F_REF}
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan R"}
C {ipin.sym} 110 -250 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -160 0 0 {name=p5 lab=GND}
C {opin.sym} 180 -180 0 0 {name=p7 lab=DN}
C {lab_pin.sym} 390 -400 0 0 {name=p10 sig_type=std_logic lab=F_REF}
C {ipin.sym} 110 -190 0 0 {name=p20 lab=F_VCO}
C {/foss/designs/PLL2_4/src/Dff.sym} 450 -420 0 0 {name=x1}
C {/foss/designs/PLL2_4/src/Dff.sym} 450 -210 0 0 {name=x2}
C {lab_pin.sym} 440 -480 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -360 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 440 -270 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -150 0 1 {name=p8 sig_type=std_logic lab=GND}
C {lab_pin.sym} 390 -440 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 -230 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 -190 0 0 {name=p13 sig_type=std_logic lab=F_VCO}
C {lab_pin.sym} 610 -450 0 1 {name=p14 sig_type=std_logic lab=UP}
C {lab_pin.sym} 610 -240 0 1 {name=p15 sig_type=std_logic lab=DN}
C {/foss/designs/PLL2_4/src/NAND2.sym} 530 -320 0 1 {name=x3}
C {lab_pin.sym} 470 -320 0 0 {name=p16 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 390 -420 0 0 {name=p17 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 390 -210 0 0 {name=p18 sig_type=std_logic lab=RST_N}
C {code_shown.sym} 720 -505 0 0 {name=SPICE only_toplevel=false value=
"
.option temp=27

* power supplies
VDD vdd 0 1.8


* reference clock (20 ns period = 50 MHz)
Vref F_VCO 0 pulse(0 1.8 0 1n 1n 30n 100n)

* VCO clock (slightly different frequency, 100 ns period ~10 MHz)
Vvco F_REF 0 pulse(0 1.8 0 1n 1n 30n 94n)

* analysis
.tran 1n 2500n
.control
run
plot v(F_REF) v(F_VCO) v(UP)+2 v(DN)+4

.endc
"}
C {lab_pin.sym} 550 -360 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 550 -280 0 0 {name=p21 sig_type=std_logic lab=GND}
