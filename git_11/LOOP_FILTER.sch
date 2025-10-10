v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -120 190 -120 {lab=vout}
N 190 -120 190 -40 {lab=vout}
N 50 300 50 360 {lab=VN}
N 160 0 160 90 {lab=VN}
N 190 90 220 90 {lab=VN}
N 220 0 220 90 {lab=VN}
N 190 0 190 90 {lab=VN}
N 160 90 190 90 {lab=VN}
N 270 -120 270 -40 {lab=vout}
N 240 0 240 90 {lab=VN}
N 270 90 300 90 {lab=VN}
N 300 0 300 90 {lab=VN}
N 270 0 270 90 {lab=VN}
N 240 90 270 90 {lab=VN}
N 190 -120 270 -120 {lab=vout}
N 270 -120 320 -120 {lab=vout}
N -201 -120 30 -120 {lab=vin}
N 190 90 190 140 {lab=VN}
N 270 90 270 140 {lab=VN}
N 230 140 270 140 {lab=VN}
N 230 140 230 300 {lab=VN}
N 190 140 230 140 {lab=VN}
N 50 300 230 300 {lab=VN}
N -530 1 -530 81 {lab=vin}
N -380 1 -380 81 {lab=vin}
N -460 1 -380 1 {lab=vin}
N -200 300 50 300 {lab=VN}
N -460 300 -200 300 {lab=VN}
N -460 -120 -201 -120 {lab=vin}
N -590 -120 -460 -120 {lab=vin}
N -530 1 -460 1 {lab=vin}
N -460 -120 -460 1 {lab=vin}
N -200 -120 -200 -90 {lab=vin}
N -270 80 -120 80 {lab=#net1}
N -200 -30 -200 80 {lab=#net1}
N -560 120 -560 230 {lab=VN}
N -560 230 -530 230 {lab=VN}
N -530 120 -530 230 {lab=VN}
N -500 120 -500 230 {lab=VN}
N -530 230 -500 230 {lab=VN}
N -530 230 -530 300 {lab=VN}
N -530 300 -460 300 {lab=VN}
N -460 250 -460 300 {lab=VN}
N -460 250 -380 250 {lab=VN}
N -380 120 -380 250 {lab=VN}
N -410 120 -380 120 {lab=VN}
N -380 120 -350 120 {lab=VN}
N -300 120 -270 120 {lab=VN}
N -270 120 -240 120 {lab=VN}
N -240 120 -240 260 {lab=VN}
N -240 260 -200 260 {lab=VN}
N -200 260 -150 260 {lab=VN}
N -150 120 -150 260 {lab=VN}
N -150 120 -120 120 {lab=VN}
N -120 120 -90 120 {lab=VN}
N -200 260 -200 300 {lab=VN}
C {iopin.sym} 50 360 1 0 {name=p1 lab=VN}
C {ipin.sym} -590 -120 0 0 {name=p2 lab=vin}
C {opin.sym} 320 -120 0 0 {name=p3 lab=vout}
C {lab_wire.sym} 270 -120 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} -510 -120 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} 50 300 1 0 {name=p4 sig_type=std_logic lab=VN}
C {res.sym} -200 -60 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 60 -120 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_01v8.sym} -530 100 1 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -380 100 1 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -270 100 1 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -120 100 1 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 190 -20 1 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 270 -20 1 0 {name=M6
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
