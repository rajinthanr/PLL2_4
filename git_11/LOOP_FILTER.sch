v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -280 11 -280 91 {lab=#net1}
N 80 -110 180 -110 {lab=vout}
N 180 -110 180 -30 {lab=vout}
N 40 310 40 370 {lab=VN}
N -310 131 -310 221 {lab=VN}
N -280 221 -250 221 {lab=VN}
N -250 131 -250 221 {lab=VN}
N -280 131 -280 221 {lab=VN}
N -310 221 -280 221 {lab=VN}
N 150 10 150 100 {lab=#net2}
N 180 100 210 100 {lab=#net2}
N 210 10 210 100 {lab=#net2}
N 180 10 180 100 {lab=#net2}
N 150 100 180 100 {lab=#net2}
N -160 131 -160 221 {lab=VN}
N -130 221 -100 221 {lab=VN}
N -100 131 -100 221 {lab=VN}
N -130 131 -130 221 {lab=VN}
N -160 221 -130 221 {lab=VN}
N -130 11 -130 91 {lab=#net1}
N 260 -110 260 -30 {lab=vout}
N 230 10 230 100 {lab=VN}
N 260 100 290 100 {lab=VN}
N 290 10 290 100 {lab=VN}
N 260 10 260 100 {lab=VN}
N 230 100 260 100 {lab=VN}
N 180 -110 260 -110 {lab=vout}
N 260 -110 310 -110 {lab=vout}
N -211 -110 20 -110 {lab=vin}
N -280 221 -280 271 {lab=VN}
N -210 271 -130 271 {lab=VN}
N -130 221 -130 271 {lab=VN}
N -280 271 -210 271 {lab=VN}
N 180 100 180 150 {lab=#net2}
N 260 100 260 150 {lab=VN}
N 220 150 260 150 {lab=VN}
N 220 150 220 310 {lab=VN}
N 180 150 220 150 {lab=VN}
N 40 310 220 310 {lab=VN}
N -210 271 -210 310 {lab=VN}
N -211 11 -130 11 {lab=#net1}
N -211 -25 -211 11 {lab=#net1}
N -280 11 -211 11 {lab=#net1}
N -211 -110 -211 -77 {lab=vin}
N -540 11 -540 91 {lab=vin}
N -570 131 -570 221 {lab=VN}
N -540 221 -510 221 {lab=VN}
N -510 131 -510 221 {lab=VN}
N -540 131 -540 221 {lab=VN}
N -570 221 -540 221 {lab=VN}
N -420 131 -420 221 {lab=VN}
N -390 221 -360 221 {lab=VN}
N -360 131 -360 221 {lab=VN}
N -390 131 -390 221 {lab=VN}
N -420 221 -390 221 {lab=VN}
N -390 11 -390 91 {lab=vin}
N -540 221 -540 271 {lab=VN}
N -470 271 -390 271 {lab=VN}
N -390 221 -390 271 {lab=VN}
N -540 271 -470 271 {lab=VN}
N -470 271 -470 310 {lab=VN}
N -470 11 -390 11 {lab=vin}
N -210 310 40 310 {lab=VN}
N -470 310 -210 310 {lab=VN}
N -470 -110 -211 -110 {lab=vin}
N -600 -110 -470 -110 {lab=vin}
N -540 11 -470 11 {lab=vin}
N -470 -110 -470 11 {lab=vin}
C {iopin.sym} 40 370 1 0 {name=p1 lab=VN}
C {ipin.sym} -600 -110 0 0 {name=p2 lab=vin}
C {opin.sym} 310 -110 0 0 {name=p3 lab=vout}
C {lab_wire.sym} 260 -110 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} -520 -110 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} 40 310 1 0 {name=p4 sig_type=std_logic lab=VN}
C {nmos4.sym} -540 110 1 0 {name=M7 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} -390 110 1 0 {name=M5 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} -280 110 1 0 {name=M8 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} -130 110 1 0 {name=M9 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 180 -10 1 0 {name=M10 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 260 -10 1 0 {name=M11 model=nmos w=5u l=0.18u del=0 m=1}
C {res.sym} -210 -50 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 50 -110 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
