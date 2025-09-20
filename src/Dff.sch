v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 490 -190 510 -190 {lab=#net1}
N 490 -220 490 -190 {lab=#net1}
N 490 -220 650 -300 {lab=#net1}
N 650 -320 650 -300 {lab=#net1}
N 630 -320 650 -320 {lab=#net1}
N 490 -300 510 -300 {lab=D_n}
N 490 -300 490 -280 {lab=D_n}
N 490 -280 650 -190 {lab=D_n}
N 650 -190 650 -170 {lab=D_n}
N 630 -170 650 -170 {lab=D_n}
N 440 -150 510 -150 {lab=D}
N 650 -320 710 -320 {lab=#net1}
N 650 -170 710 -170 {lab=D_n}
N 440 -410 460 -410 {lab=CLK}
N 460 -410 460 -320 {lab=CLK}
N 460 -320 510 -320 {lab=CLK}
N 490 -340 510 -340 {lab=#net2}
N 490 -360 490 -340 {lab=#net2}
N 490 -360 650 -470 {lab=#net2}
N 650 -490 650 -470 {lab=#net2}
N 630 -490 650 -490 {lab=#net2}
N 460 -490 510 -490 {lab=CLK}
N 460 -490 460 -410 {lab=CLK}
N 680 -400 710 -400 {lab=#net2}
N 680 -490 680 -400 {lab=#net2}
N 650 -490 680 -490 {lab=#net2}
C {devices/code.sym} 30 -445 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opin.sym} 180 -230 0 0 {name=p4 lab=Q}
C {ipin.sym} 110 -250 0 0 {name=p12 lab=D}
C {ipin.sym} 110 -190 0 0 {name=p21 lab=CLK}
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan R"}
C {lab_pin.sym} 550 -360 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 550 -280 0 1 {name=p9 sig_type=std_logic lab=GND}
C {ipin.sym} 110 -280 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -160 0 0 {name=p5 lab=GND}
C {lab_pin.sym} 550 -130 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 550 -210 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {opin.sym} 180 -180 0 0 {name=p7 lab=Q_N}
C {lab_pin.sym} 440 -150 0 0 {name=p8 sig_type=std_logic lab=D}
C {/foss/designs/PLL2_4/src/SR_NAND2.sym} 570 -530 0 0 {name=x3}
C {lab_pin.sym} 550 -600 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 550 -460 0 1 {name=p15 sig_type=std_logic lab=GND}
C {/foss/designs/PLL2_4/src/SR_NAND2.sym} 770 -360 0 0 {name=x4}
C {lab_pin.sym} 750 -430 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 750 -290 0 1 {name=p17 sig_type=std_logic lab=GND}
C {/foss/designs/PLL2_4/src/NAND3.sym} 570 -320 0 0 {name=x5}
C {lab_pin.sym} 440 -410 0 0 {name=p10 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 710 -170 0 1 {name=p11 sig_type=std_logic lab=D_n}
C {lab_pin.sym} 510 -570 0 0 {name=p13 sig_type=std_logic lab=D_n}
C {lab_pin.sym} 830 -400 0 1 {name=p18 sig_type=std_logic lab=Q}
C {lab_pin.sym} 830 -320 0 1 {name=p19 sig_type=std_logic lab=Q_N}
C {/foss/designs/PLL2_4/src/NAND3.sym} 570 -170 0 0 {name=x1}
C {ipin.sym} 110 -220 0 0 {name=p20 lab=RST_N}
C {lab_pin.sym} 510 -170 0 0 {name=p22 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 510 -530 0 0 {name=p23 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 710 -360 0 0 {name=p24 sig_type=std_logic lab=RST_N}
