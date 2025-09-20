v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -360 540 -310 {lab=#net1}
N 410 -510 410 -480 {lab=Out}
N 680 -510 680 -480 {lab=Out}
N 540 -480 540 -420 {lab=Out}
N 540 -450 770 -450 {lab=Out}
N 410 -480 680 -480 {lab=Out}
N 540 -510 540 -480 {lab=Out}
N 540 -250 540 -210 {lab=#net2}
C {devices/code.sym} 30 -445 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opin.sym} 210 -200 0 0 {name=p4 lab=Out}
C {ipin.sym} 110 -250 0 0 {name=p12 lab=A}
C {ipin.sym} 110 -220 0 0 {name=p21 lab=B}
C {title.sym} 160 -30 0 0 {name=l1 author="Rajinthan R"}
C {lab_pin.sym} 410 -570 3 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 680 -570 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 540 -150 1 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 370 -540 0 0 {name=p10 sig_type=std_logic lab=A}
C {lab_pin.sym} 500 -390 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_pin.sym} 720 -540 0 1 {name=p14 sig_type=std_logic lab=C}
C {lab_pin.sym} 500 -180 0 0 {name=p15 sig_type=std_logic lab=C}
C {lab_pin.sym} 770 -450 0 1 {name=p16 sig_type=std_logic lab=Out}
C {sky130_fd_pr/pfet3_01v8.sym} 390 -540 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 700 -540 0 1 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 520 -180 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8.sym} 520 -390 0 0 {name=M5
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
C {ipin.sym} 110 -280 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -160 0 0 {name=p5 lab=GND}
C {ipin.sym} 110 -190 0 0 {name=p3 lab=C}
C {lab_pin.sym} 540 -570 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 580 -540 0 1 {name=p8 sig_type=std_logic lab=B}
C {sky130_fd_pr/pfet3_01v8.sym} 560 -540 0 1 {name=M2
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
C {lab_pin.sym} 500 -280 0 0 {name=p17 sig_type=std_logic lab=B}
C {sky130_fd_pr/nfet3_01v8.sym} 520 -280 0 0 {name=M6
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
