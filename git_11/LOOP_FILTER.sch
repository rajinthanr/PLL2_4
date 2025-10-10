v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -500 800 -500 {lab=vin}
N 860 -500 1090 -500 {lab=vout}
N 570 -500 570 -470 {lab=vin}
C {iopin.sym} 60 -20 2 0 {name=p1 lab=VN}
C {ipin.sym} 60 -80 0 0 {name=p2 lab=vin}
C {opin.sym} 110 -50 0 0 {name=p3 lab=vout}
C {lab_wire.sym} 1090 -500 0 1 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} 180 -500 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} 820 -20 1 0 {name=p4 sig_type=std_logic lab=VN}
C {nmos4.sym} 240 -280 1 0 {name=M7 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 390 -280 1 0 {name=M5 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 500 -280 1 0 {name=M8 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 650 -280 1 0 {name=M9 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 960 -400 1 0 {name=M10 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 1040 -400 1 0 {name=M11 model=nmos w=5u l=0.18u del=0 m=1}
C {res.sym} 570 -440 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 830 -500 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
