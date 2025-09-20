v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 430 -220 450 -220 {lab=Q}
N 430 -250 430 -220 {lab=Q}
N 430 -250 590 -330 {lab=Q}
N 590 -350 590 -330 {lab=Q}
N 570 -350 590 -350 {lab=Q}
N 430 -330 450 -330 {lab=nQ}
N 430 -330 430 -310 {lab=nQ}
N 430 -310 590 -220 {lab=nQ}
N 590 -220 590 -200 {lab=nQ}
N 570 -200 590 -200 {lab=nQ}
N 380 -370 450 -370 {lab=R}
N 380 -180 450 -180 {lab=S}
N 590 -350 650 -350 {lab=Q}
N 590 -200 650 -200 {lab=nQ}
C {/foss/designs/PLL2_4/src/NAND2.sym} 510 -200 0 0 {name=x1}
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
C {ipin.sym} 110 -190 0 0 {name=p21 lab=S}
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan R"}
C {lab_pin.sym} 490 -390 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 490 -310 0 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 380 -370 0 0 {name=p10 sig_type=std_logic lab=R}
C {ipin.sym} 110 -250 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -160 0 0 {name=p5 lab=GND}
C {/foss/designs/PLL2_4/src/NAND2.sym} 510 -350 0 0 {name=x2}
C {lab_pin.sym} 490 -160 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 490 -240 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {opin.sym} 180 -180 0 0 {name=p7 lab=nQ}
C {lab_pin.sym} 380 -180 0 0 {name=p8 sig_type=std_logic lab=S}
C {lab_pin.sym} 650 -350 2 0 {name=p11 sig_type=std_logic lab=Q}
C {lab_pin.sym} 650 -200 2 0 {name=p13 sig_type=std_logic lab=nQ}
