v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
C {vsource.sym} 200 -280 0 0 {name=Va value="PULSE(0 1.8 0 1n 1n 10n 20n)" savecurrent=false}
C {code_shown.sym} 580 -395 0 0 {name=SPICE only_toplevel=false value=
"
.option temp=27

* Testbench for NAND Gate

* Simulation control
.tran 1n 200n

.control
run

plot V(A) V(B)+2 V(C)+4 V(Out)+6


.endc
"}
C {lab_pin.sym} 290 -170 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_pin.sym} 200 -310 0 1 {name=p1 sig_type=std_logic lab=A}
C {gnd.sym} 200 -250 0 0 {name=l1 lab=GND}
C {vsource.sym} 200 -380 0 0 {name=Vb value="PULSE(0 1.8 0 1n 1n 20n 40n)" savecurrent=false}
C {lab_pin.sym} 200 -410 0 1 {name=p2 sig_type=std_logic lab=B}
C {gnd.sym} 200 -350 0 0 {name=l2 lab=GND}
C {vsource.sym} 410 -380 0 0 {name=Vdd value=1.8 savecurrent=false}
C {lab_pin.sym} 410 -410 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 410 -350 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 290 -150 0 0 {name=p5 sig_type=std_logic lab=B}
C {lab_pin.sym} 410 -150 0 1 {name=p6 sig_type=std_logic lab=Out}
C {devices/code.sym} 10 -395 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {ipin.sym} 90 -170 0 0 {name=p12 lab=VDD}
C {ipin.sym} 90 -140 0 0 {name=p4 lab=GND}
C {lab_pin.sym} 330 -190 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 -110 0 1 {name=p8 sig_type=std_logic lab=GND}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 410 -280 0 0 {name=Vc value="PULSE(0 1.8 0 1n 1n 30n 60n)" savecurrent=false}
C {gnd.sym} 410 -250 0 0 {name=Vc2 lab=GND
value="PULSE(0 1.8 0 1n 1n 30n 60n)"}
C {/foss/designs/PLL2_4/src/NAND3.sym} 350 -150 0 0 {name=x1}
C {lab_pin.sym} 290 -130 0 0 {name=p9 sig_type=std_logic lab=C}
C {lab_pin.sym} 410 -310 0 1 {name=p10 sig_type=std_logic lab=C}
