v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -250 540 -200 {lab=#net1}
N 440 -400 440 -370 {lab=Out}
N 440 -370 650 -370 {lab=Out}
N 650 -400 650 -370 {lab=Out}
N 540 -370 540 -310 {lab=Out}
N 540 -340 770 -340 {lab=Out}
C {devices/code.sym} 30 -445 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opin.sym} 210 -200 0 0 {name=p4 lab=Out}
C {ipin.sym} 110 -220 0 0 {name=p12 lab=A}
C {ipin.sym} 110 -190 0 0 {name=p21 lab=B}
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan R"}
C {lab_pin.sym} 440 -460 3 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 650 -460 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 540 -140 1 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 400 -430 0 0 {name=p10 sig_type=std_logic lab=A}
C {lab_pin.sym} 500 -280 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_pin.sym} 690 -430 0 1 {name=p14 sig_type=std_logic lab=B}
C {lab_pin.sym} 500 -170 0 0 {name=p15 sig_type=std_logic lab=B}
C {lab_pin.sym} 770 -340 0 1 {name=p16 sig_type=std_logic lab=Out}
C {sky130_fd_pr/pfet3_01v8.sym} 420 -430 0 0 {name=M1
W=1
L=1
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 670 -430 0 1 {name=M3
W=1
L=1
body=VDD
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
C {sky130_fd_pr/nfet3_01v8.sym} 520 -170 0 0 {name=M4
W=1
L=1
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 520 -280 0 0 {name=M5
W=1
L=1
body=GND
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
C {ipin.sym} 110 -250 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -160 0 0 {name=p5 lab=GND}
