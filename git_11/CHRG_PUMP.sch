v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 210 60 {}
N 40 90 40 140 {lab=#net1}
N 40 -100 40 -70 {lab=#net2}
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
N -70 170 -0 170 {lab=#net3}
N -60 120 -60 170 {lab=#net3}
N -110 120 -60 120 {lab=#net3}
N -110 -100 -110 140 {lab=#net3}
N -70 -130 -60 -130 {lab=#net3}
N -60 -130 -60 -90 {lab=#net3}
N -110 -90 -60 -90 {lab=#net3}
N -60 -130 -0 -130 {lab=#net3}
N -110 200 -110 250 {lab=VN}
N -110 250 40 250 {lab=VN}
N -110 -220 -110 -160 {lab=I_ref}
N -320 -40 0 -40 {lab=up}
N -240 60 -0 60 {lab=down}
C {ipin.sym} -110 -220 1 0 {name=p1 lab=I_ref}
C {ipin.sym} -320 -40 0 0 {name=p2 lab=up}
C {ipin.sym} -240 60 0 0 {name=p3 lab=down}
C {iopin.sym} 40 270 1 0 {name=p5 lab=VN}
C {iopin.sym} 40 -230 3 0 {name=p6 lab=VP}
C {opin.sym} 180 10 0 0 {name=p7 lab=vout}
C {lab_wire.sym} -220 60 2 0 {name=p10 sig_type=std_logic lab=down}
C {lab_wire.sym} 140 10 2 0 {name=p14 sig_type=std_logic lab=vout}
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
C {sky130_fd_pr/pfet_01v8.sym} -90 -130 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -90 170 0 1 {name=M6
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
C {lab_pin.sym} -110 -130 0 0 {name=p4 sig_type=std_logic lab=VP}
C {lab_pin.sym} -110 170 0 0 {name=p8 sig_type=std_logic lab=VN}
