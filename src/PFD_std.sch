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
C {devices/code.sym} 30 -455 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include /foss/pdks/ciel/sky130/versions/8afc8346a57fe1ab7934ba5a6056ea8b43078e71/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.global VDD GND

"
spice_ignore=false}
C {opin.sym} 180 -230 0 0 {name=p4 lab=UP}
C {ipin.sym} 110 -220 0 0 {name=p12 lab=F_REF}
C {ipin.sym} 110 -250 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -160 0 0 {name=p5 lab=GND}
C {opin.sym} 180 -180 0 0 {name=p7 lab=DN}
C {lab_pin.sym} 320 -450 0 0 {name=p10 sig_type=std_logic lab=F_REF}
C {ipin.sym} 110 -190 0 0 {name=p20 lab=F_VCO}
C {lab_pin.sym} 320 -430 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -220 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -240 0 0 {name=p13 sig_type=std_logic lab=F_VCO}
C {lab_pin.sym} 610 -450 0 1 {name=p14 sig_type=std_logic lab=UP}
C {lab_pin.sym} 610 -240 0 1 {name=p15 sig_type=std_logic lab=DN}
C {lab_pin.sym} 470 -320 0 0 {name=p16 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 320 -410 0 0 {name=p17 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 320 -200 0 0 {name=p18 sig_type=std_logic lab=RST_N}
C {code_shown.sym} 720 -505 0 0 {name=SPICE only_toplevel=false value=
"
.option temp=27

* power supplies
VDD vdd 0 1.8
VSS VSS 0 0


* reference clock 
Vref F_REF 0 pulse(0 1.8 0n 1n 1n 50n 100n)
*Vrst RST_N 0 pulse(0 1.8 18n 1n 1n 98n 100n)

* VCO clock (slightly different frequency, 100 ns period ~10 MHz)
Vvco F_VCO 0 pulse(0 1.8 15n 1n 1n 50n 100n)

* analysis
.tran 1n 2500n
.control
run
plot v(F_REF) v(F_VCO) v(UP)+2 v(DN)+4 v(RST_N)+6

.endc
"}
C {sky130_stdcells/dfrtp_1.sym} 410 -220 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_2.sym} 300 -320 2 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_8.sym} 530 -320 2 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 240 -320 0 0 {name=p2 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 360 -340 0 1 {name=p3 sig_type=std_logic lab=UP}
C {lab_pin.sym} 360 -300 0 1 {name=p6 sig_type=std_logic lab=DN}
C {sky130_stdcells/dfrtp_1.sym} 410 -430 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan R"}
