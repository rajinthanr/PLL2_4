v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 470 -310 490 -310 {lab=Q}
N 470 -340 470 -310 {lab=Q}
N 470 -340 630 -420 {lab=Q}
N 630 -440 630 -420 {lab=Q}
N 610 -440 630 -440 {lab=Q}
N 470 -420 490 -420 {lab=nQ}
N 470 -420 470 -400 {lab=nQ}
N 470 -400 630 -310 {lab=nQ}
N 630 -310 630 -290 {lab=nQ}
N 610 -290 630 -290 {lab=nQ}
N 420 -460 490 -460 {lab=R}
N 420 -270 490 -270 {lab=S}
N 630 -440 690 -440 {lab=Q}
N 630 -290 690 -290 {lab=nQ}
C {/foss/designs/PLL2_4/src/NAND2.sym} 550 -290 0 0 {name=x1}
C {devices/code.sym} 30 -445 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opin.sym} 180 -230 0 0 {name=p4 lab=Q}
C {ipin.sym} 110 -220 0 0 {name=p12 lab=R}
C {ipin.sym} 110 -190 0 0 {name=p21 lab=CLK}
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan R"}
C {lab_pin.sym} 530 -480 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 530 -400 0 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 420 -460 0 0 {name=p10 sig_type=std_logic lab=R}
C {ipin.sym} 110 -250 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -160 0 0 {name=p5 lab=GND}
C {/foss/designs/PLL2_4/src/NAND2.sym} 550 -440 0 0 {name=x2}
C {lab_pin.sym} 530 -250 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 530 -330 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {opin.sym} 180 -180 0 0 {name=p7 lab=nQ}
C {lab_pin.sym} 420 -270 0 0 {name=p8 sig_type=std_logic lab=S}
C {lab_pin.sym} 690 -440 2 0 {name=p11 sig_type=std_logic lab=Q}
C {lab_pin.sym} 690 -290 2 0 {name=p13 sig_type=std_logic lab=nQ}
C {/foss/designs/PLL2_4/src/SR_NAND2.sym} 560 -760 0 0 {name=x3}
C {lab_pin.sym} 540 -830 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 540 -690 0 1 {name=p15 sig_type=std_logic lab=GND}
C {/foss/designs/PLL2_4/src/SR_NAND2.sym} 860 -580 0 0 {name=x4}
C {lab_pin.sym} 840 -650 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 840 -510 0 1 {name=p17 sig_type=std_logic lab=GND}
