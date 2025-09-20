v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 -250 -70 -250 {lab=vdd}
N -120 -30 -70 -30 {lab=vss}
N -120 180 -70 180 {lab=vss}
N 70 -140 70 -90 {lab=vss}
N 70 80 70 130 {lab=vdd}
N -190 -250 -160 -250 {lab=CLKref}
N -190 -250 -190 -30 {lab=CLKref}
N -190 -30 -160 -30 {lab=CLKref}
N -120 -220 -120 -60 {lab=#net1}
N -120 -0 -120 150 {lab=#net2}
N -120 -140 40 -140 {lab=#net1}
N 100 -140 120 -140 {lab=#net3}
N 120 -140 120 80 {lab=#net3}
N 100 80 120 80 {lab=#net3}
N 800 -40 820 -40 {lab=UP}
N -490 -150 -470 -150 {lab=CLKref}
N -480 180 -460 180 {lab=CLKvco}
N -120 370 -70 370 {lab=vdd}
N -120 590 -70 590 {lab=vss}
N -120 800 -70 800 {lab=vss}
N 70 480 70 530 {lab=vss}
N 70 700 70 750 {lab=vdd}
N -190 370 -160 370 {lab=CLKvco}
N -190 370 -190 590 {lab=CLKvco}
N -190 590 -160 590 {lab=CLKvco}
N -120 400 -120 560 {lab=#net4}
N -120 620 -120 770 {lab=#net5}
N -120 480 40 480 {lab=#net4}
N 100 480 120 480 {lab=#net6}
N 120 480 120 700 {lab=#net6}
N 100 700 120 700 {lab=#net6}
N 800 120 820 120 {lab=DN}
N 250 -140 300 -140 {lab=vdd}
N 250 80 300 80 {lab=vss}
N 180 -140 210 -140 {lab=#net3}
N 180 -140 180 80 {lab=#net3}
N 180 80 210 80 {lab=#net3}
N 250 -110 250 50 {lab=#net7}
N 440 -140 490 -140 {lab=vdd}
N 440 80 490 80 {lab=vss}
N 370 -140 400 -140 {lab=#net7}
N 370 -140 370 80 {lab=#net7}
N 370 80 400 80 {lab=#net7}
N 440 -110 440 50 {lab=UP}
N 250 -40 370 -40 {lab=#net7}
N 120 -40 180 -40 {lab=#net3}
N 260 480 310 480 {lab=vdd}
N 260 700 310 700 {lab=vss}
N 190 480 220 480 {lab=#net6}
N 190 480 190 700 {lab=#net6}
N 190 700 220 700 {lab=#net6}
N 260 510 260 670 {lab=#net8}
N 450 480 500 480 {lab=vdd}
N 450 700 500 700 {lab=vss}
N 380 480 410 480 {lab=#net8}
N 380 480 380 700 {lab=#net8}
N 380 700 410 700 {lab=#net8}
N 450 510 450 670 {lab=DN}
N 260 580 380 580 {lab=#net8}
N 120 580 190 580 {lab=#net6}
N -490 -350 -470 -350 {lab=vdd}
N -480 460 -460 460 {lab=vss}
C {code_shown.sym} 970 -245 0 0 {name=SPICE only_toplevel=false value=
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
C {devices/code.sym} 950 -475 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8.sym} -140 -250 0 0 {name=M3
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
C {lab_pin.sym} -70 -250 0 1 {name=p7 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -140 -30 0 0 {name=M4
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
C {lab_pin.sym} -70 -30 0 1 {name=p8 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} -140 180 0 0 {name=M5
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
C {lab_pin.sym} -70 180 0 1 {name=p9 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 70 -160 1 0 {name=M6
W=2
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
C {lab_pin.sym} 70 -90 1 1 {name=p10 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 70 60 3 1 {name=M7
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
C {lab_pin.sym} 70 130 1 1 {name=p11 sig_type=std_logic lab=vdd}
C {opin.sym} 820 -40 0 0 {name=p4 lab=UP}
C {ipin.sym} -490 -150 0 0 {name=p12 lab=CLKref}
C {lab_pin.sym} -470 -150 0 1 {name=p13 sig_type=std_logic lab=CLKref}
C {lab_pin.sym} -190 -150 0 0 {name=p14 sig_type=std_logic lab=CLKref}
C {lab_pin.sym} 70 -180 1 0 {name=p15 sig_type=std_logic lab=CLKref}
C {lab_pin.sym} 70 40 1 0 {name=p16 sig_type=std_logic lab=CLKref}
C {lab_pin.sym} 800 -40 0 0 {name=p18 sig_type=std_logic lab=UP}
C {lab_pin.sym} -120 -280 3 1 {name=p19 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -120 210 1 1 {name=p20 sig_type=std_logic lab=vss}
C {ipin.sym} -480 180 0 0 {name=p21 lab=CLKvco}
C {lab_pin.sym} -460 180 0 1 {name=p22 sig_type=std_logic lab=CLKvco}
C {lab_pin.sym} -160 180 0 0 {name=p23 sig_type=std_logic lab=CLKvco}
C {sky130_fd_pr/pfet_01v8.sym} -140 370 0 0 {name=M8
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
C {lab_pin.sym} -70 370 0 1 {name=p24 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -140 590 0 0 {name=M9
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
C {lab_pin.sym} -70 590 0 1 {name=p25 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} -140 800 0 0 {name=M10
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
C {lab_pin.sym} -70 800 0 1 {name=p26 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 70 460 1 0 {name=M11
W=2
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
C {lab_pin.sym} 70 530 1 1 {name=p27 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 70 680 3 1 {name=M12
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
C {lab_pin.sym} 70 750 1 1 {name=p28 sig_type=std_logic lab=vdd}
C {opin.sym} 820 120 0 0 {name=p29 lab=DN}
C {lab_pin.sym} -160 800 0 0 {name=p32 sig_type=std_logic lab=CLKref}
C {lab_pin.sym} 450 580 2 0 {name=p35 sig_type=std_logic lab=DN}
C {lab_pin.sym} 800 120 0 0 {name=p36 sig_type=std_logic lab=DN}
C {lab_pin.sym} -120 340 3 1 {name=p37 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -120 830 1 1 {name=p38 sig_type=std_logic lab=vss}
C {lab_pin.sym} -190 480 0 0 {name=p41 sig_type=std_logic lab=CLKvco}
C {lab_pin.sym} 40 80 0 0 {name=p30 sig_type=std_logic lab=CLKref}
C {sky130_fd_pr/pfet_01v8.sym} 230 -140 0 0 {name=M1
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
C {lab_pin.sym} 300 -140 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 230 80 0 0 {name=M2
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
C {lab_pin.sym} 300 80 0 1 {name=p2 sig_type=std_logic lab=vss}
C {lab_pin.sym} 250 -170 3 1 {name=p5 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 420 -140 0 0 {name=M13
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
C {lab_pin.sym} 490 -140 0 1 {name=p3 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 420 80 0 0 {name=M14
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
C {lab_pin.sym} 490 80 0 1 {name=p6 sig_type=std_logic lab=vss}
C {lab_pin.sym} 440 -170 3 1 {name=p39 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 440 -40 0 1 {name=p40 sig_type=std_logic lab=UP}
C {lab_pin.sym} 250 110 1 1 {name=p42 sig_type=std_logic lab=vss}
C {lab_pin.sym} 440 110 1 1 {name=p43 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 240 480 0 0 {name=M15
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
C {lab_pin.sym} 310 480 0 1 {name=p17 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 240 700 0 0 {name=M16
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
C {lab_pin.sym} 310 700 0 1 {name=p44 sig_type=std_logic lab=vss}
C {lab_pin.sym} 260 450 3 1 {name=p45 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 430 480 0 0 {name=M17
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
C {lab_pin.sym} 500 480 0 1 {name=p46 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 430 700 0 0 {name=M18
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
C {lab_pin.sym} 500 700 0 1 {name=p47 sig_type=std_logic lab=vss}
C {lab_pin.sym} 450 450 3 1 {name=p48 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 260 730 1 1 {name=p50 sig_type=std_logic lab=vss}
C {lab_pin.sym} 450 730 1 1 {name=p51 sig_type=std_logic lab=vss}
C {lab_pin.sym} 70 440 1 0 {name=p49 sig_type=std_logic lab=CLKvco}
C {lab_pin.sym} 70 660 1 0 {name=p33 sig_type=std_logic lab=CLKvco}
C {lab_pin.sym} 40 700 0 0 {name=p31 sig_type=std_logic lab=CLKvco}
C {ipin.sym} -490 -350 0 0 {name=p34 lab=vdd}
C {lab_pin.sym} -470 -350 0 1 {name=p52 sig_type=std_logic lab=vdd}
C {ipin.sym} -480 460 0 0 {name=p53 lab=vss}
C {lab_pin.sym} -460 460 0 1 {name=p54 sig_type=std_logic lab=vss}
