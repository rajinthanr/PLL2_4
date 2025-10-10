v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 -90 110 -90 {lab=vout}
N 110 -90 110 -10 {lab=vout}
N -30 330 -30 390 {lab=VN}
N 80 30 80 120 {lab=VN}
N 110 120 140 120 {lab=VN}
N 140 30 140 120 {lab=VN}
N 110 30 110 120 {lab=VN}
N 80 120 110 120 {lab=VN}
N 190 -90 190 -10 {lab=vout}
N 160 30 160 120 {lab=VN}
N 190 120 220 120 {lab=VN}
N 220 30 220 120 {lab=VN}
N 190 30 190 120 {lab=VN}
N 160 120 190 120 {lab=VN}
N 110 -90 190 -90 {lab=vout}
N 190 -90 240 -90 {lab=vout}
N -281 -90 -50 -90 {lab=vin}
N 110 120 110 170 {lab=VN}
N 190 120 190 170 {lab=VN}
N 150 170 190 170 {lab=VN}
N 150 170 150 330 {lab=VN}
N 110 170 150 170 {lab=VN}
N -30 330 150 330 {lab=VN}
N -610 31 -610 111 {lab=vin}
N -460 31 -460 111 {lab=vin}
N -540 31 -460 31 {lab=vin}
N -280 330 -30 330 {lab=VN}
N -540 330 -280 330 {lab=VN}
N -540 -90 -281 -90 {lab=vin}
N -670 -90 -540 -90 {lab=vin}
N -610 31 -540 31 {lab=vin}
N -540 -90 -540 31 {lab=vin}
N -280 -90 -280 -60 {lab=vin}
N -350 110 -200 110 {lab=#net1}
N -280 0 -280 110 {lab=#net1}
N -640 150 -640 260 {lab=VN}
N -640 260 -610 260 {lab=VN}
N -610 150 -610 260 {lab=VN}
N -580 150 -580 260 {lab=VN}
N -610 260 -580 260 {lab=VN}
N -610 260 -610 330 {lab=VN}
N -610 330 -540 330 {lab=VN}
N -540 280 -540 330 {lab=VN}
N -540 280 -460 280 {lab=VN}
N -460 150 -460 280 {lab=VN}
N -490 150 -460 150 {lab=VN}
N -460 150 -430 150 {lab=VN}
N -380 150 -350 150 {lab=VN}
N -350 150 -320 150 {lab=VN}
N -320 150 -320 290 {lab=VN}
N -320 290 -280 290 {lab=VN}
N -280 290 -230 290 {lab=VN}
N -230 150 -230 290 {lab=VN}
N -230 150 -200 150 {lab=VN}
N -200 150 -170 150 {lab=VN}
N -280 290 -280 330 {lab=VN}
C {iopin.sym} -30 390 1 0 {name=p1 lab=VN}
C {ipin.sym} -670 -90 0 0 {name=p2 lab=vin}
C {opin.sym} 240 -90 0 0 {name=p3 lab=vout}
C {lab_wire.sym} 190 -90 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} -590 -90 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} -30 330 1 0 {name=p4 sig_type=std_logic lab=VN}
C {nmos4.sym} -610 130 1 0 {name=M7 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} -460 130 1 0 {name=M5 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} -350 130 1 0 {name=M8 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} -200 130 1 0 {name=M9 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 110 10 1 0 {name=M10 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 190 10 1 0 {name=M11 model=nmos w=5u l=0.18u del=0 m=1}
C {res.sym} -280 -30 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -20 -90 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
