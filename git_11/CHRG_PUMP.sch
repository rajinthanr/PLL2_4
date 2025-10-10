v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 210 60 {}
N 40 90 40 140 {lab=#net1}
N 40 -100 40 -70 {lab=#net2}
N -240 170 0 170 {lab=bias_n}
N -240 60 0 60 {lab=down}
N -240 -130 0 -130 {lab=bias_p}
N 40 10 40 30 {lab=vout}
N 40 10 180 10 {lab=vout}
N 40 -10 40 10 {lab=vout}
N 40 -230 40 -160 {lab=VP}
N 40 -160 40 -130 {lab=VP}
N 40 -130 130 -130 {lab=VP}
N 130 -130 130 -40 {lab=VP}
N 40 -40 130 -40 {lab=VP}
N 40 200 40 270 {lab=VN}
N 40 170 40 200 {lab=VN}
N 40 170 130 170 {lab=VN}
N 130 70 130 170 {lab=VN}
N 130 60 130 70 {lab=VN}
N 40 60 130 60 {lab=VN}
N -290 -40 0 -40 {lab=#net3}
N -450 -40 -420 -40 {lab=up}
N -370 -120 -370 -80 {lab=VP}
N -370 0 -370 50 {lab=VN}
C {ipin.sym} -240 -130 0 0 {name=p1 lab=bias_p}
C {ipin.sym} -450 -40 0 0 {name=p2 lab=up}
C {ipin.sym} -240 60 0 0 {name=p3 lab=down}
C {ipin.sym} -240 170 0 0 {name=p4 lab=bias_n}
C {iopin.sym} 40 270 1 0 {name=p5 lab=VN}
C {iopin.sym} 40 -230 3 0 {name=p6 lab=VP}
C {opin.sym} 180 10 0 0 {name=p7 lab=vout}
C {lab_wire.sym} -220 60 2 0 {name=p10 sig_type=std_logic lab=down}
C {lab_wire.sym} -220 -130 2 0 {name=p12 sig_type=std_logic lab=bias_p}
C {lab_wire.sym} -220 170 2 0 {name=p13 sig_type=std_logic lab=bias_n}
C {lab_wire.sym} 140 10 2 0 {name=p14 sig_type=std_logic lab=vout}
C {INV.sym} -350 -40 0 0 {name=x1}
C {iopin.sym} -370 50 1 0 {name=p8 lab=VN}
C {iopin.sym} -370 -120 3 0 {name=p9 lab=VP}
C {sky130_fd_pr/nfet_01v8.sym} 20 60 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 20 170 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -40 0 0 {name=M3
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -130 0 0 {name=M4
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
