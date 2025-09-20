v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 290 -210 310 -210 {lab=UP}
N -1270 -370 -1250 -370 {lab=CLKref}
N -1260 -40 -1240 -40 {lab=CLKvco}
N 320 420 340 420 {lab=DN}
N -100 -90 -50 -90 {lab=vdd}
N -110 90 -60 90 {lab=vss}
N -1270 -570 -1250 -570 {lab=vdd}
N -1250 610 -1230 610 {lab=vss}
C {code_shown.sym} 780 -205 0 0 {name=SPICE only_toplevel=false value=
"
.option temp=27

* power supplies
VDD vdd 0 1.8
VSS vss 0 0


* reference clock (20 ns period = 50 MHz)
Vref CLKref 0 pulse(0 1.8 0 1n 1n 10n 20n)

* VCO clock (slightly different frequency, 19 ns period ~52.6 MHz)
Vvco CLKvco 0 pulse(0 1.8 0 1n 1n 9.5n 19n)

* analysis
.tran 0.1n 500n
.control
run
plot v(CLKref) v(CLKvco) v(UP)+2 v(DN)+4

.endc
"}
C {devices/code.sym} 850 -455 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opin.sym} 310 -210 0 0 {name=p4 lab=UP}
C {ipin.sym} -1270 -370 0 0 {name=p12 lab=CLKref}
C {lab_pin.sym} -1250 -370 0 1 {name=p13 sig_type=std_logic lab=CLKref}
C {lab_pin.sym} 290 -210 0 0 {name=p18 sig_type=std_logic lab=UP}
C {ipin.sym} -1260 -40 0 0 {name=p21 lab=CLKvco}
C {lab_pin.sym} -1240 -40 0 1 {name=p22 sig_type=std_logic lab=CLKvco}
C {opin.sym} 340 420 0 0 {name=p29 lab=DN}
C {lab_pin.sym} 320 420 0 0 {name=p36 sig_type=std_logic lab=DN}
C {sky130_fd_pr/pfet_01v8.sym} -120 -90 0 0 {name=M17
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -50 -90 0 1 {name=p46 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -130 90 0 0 {name=M18
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -60 90 0 1 {name=p47 sig_type=std_logic lab=vss}
C {lab_pin.sym} -100 -120 3 1 {name=p48 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -110 120 1 1 {name=p51 sig_type=std_logic lab=vss}
C {ipin.sym} -1270 -570 0 0 {name=p34 lab=vdd}
C {lab_pin.sym} -1250 -570 0 1 {name=p52 sig_type=std_logic lab=vdd}
C {ipin.sym} -1250 610 0 0 {name=p53 lab=vss}
C {lab_pin.sym} -1230 610 0 1 {name=p54 sig_type=std_logic lab=vss}
