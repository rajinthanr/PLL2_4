v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
C {/foss/designs/PLL2_4/src/SR_NAND2.sym} 290 -170 0 0 {name=x1}
C {code_shown.sym} 530 -385 0 0 {name=SPICE only_toplevel=false value=
"
.option temp=27

* Testbench

* Simulation control
.tran 1n 200n

.control
run

plot V(S) V(R)+2 V(Q)+4 V(nQ)+6


.endc
"}
C {devices/code.sym} 10 -395 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 180 -360 0 0 {name=Vdd value=1.8 savecurrent=false}
C {lab_pin.sym} 180 -390 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 180 -330 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 230 -130 0 0 {name=p2 sig_type=std_logic lab=S}
C {lab_pin.sym} 230 -210 0 0 {name=p5 sig_type=std_logic lab=R}
C {lab_pin.sym} 350 -130 0 1 {name=p6 sig_type=std_logic lab=nQ}
C {lab_pin.sym} 350 -210 0 1 {name=p7 sig_type=std_logic lab=Q}
C {lab_pin.sym} 270 -240 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 270 -100 0 1 {name=p9 sig_type=std_logic lab=GND}
C {vsource.sym} 260 -360 0 0 {name=Vs value="PULSE(0 1.8 0 1n 1n 15n 25n)" savecurrent=false}
C {lab_pin.sym} 260 -390 0 1 {name=p10 sig_type=std_logic lab=S}
C {gnd.sym} 260 -330 0 0 {name=l1 lab=GND}
C {vsource.sym} 260 -460 0 0 {name=Vr value="PULSE(0 1.8 0 1n 1n 10n 20n)" savecurrent=false}
C {lab_pin.sym} 260 -490 0 1 {name=p11 sig_type=std_logic lab=R}
C {gnd.sym} 260 -430 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 230 -170 0 0 {name=p1 sig_type=std_logic lab=GND}
