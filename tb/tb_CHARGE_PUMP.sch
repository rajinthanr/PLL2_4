v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 885 -560 1685 -160 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.9225e-12
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="20 21"
node="f_ref
f_vco
"}
B 2 885 -960 1685 -560 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.9225e-12
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="net1
net2"
color="6 18"
dataset=-1
unitx=1
logx=0
logy=0
autoload=1}
B 2 885 -1370 1685 -970 {flags=graph
y1=0.069444446
y2=2.0694444
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.9225e-12
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=6
node=vout}
B 2 1690 -570 2490 -170 {flags=graph
y1=-0.1528475
y2=1.8471525
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.9225e-12
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=voutf
color=6
dataset=-1
unitx=1
logx=0
logy=0
}
P 4 1 1420 -830 {}
P 4 1 280 -470 {}
N 270 -470 280 -470 {lab=#net1}
N 280 -470 280 -450 {lab=#net1}
N 280 -450 310 -450 {lab=#net1}
N 270 -430 310 -430 {lab=#net2}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 180 -190 0 0 {name=Vdd value=1.8 savecurrent=false}
C {lab_pin.sym} 180 -220 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 180 -160 0 0 {name=l3 lab=GND}
C {devices/code.sym} 10 -225 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include /foss/pdks/ciel/sky130/versions/8afc8346a57fe1ab7934ba5a6056ea8b43078e71/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.global VDD GND

"
spice_ignore=false}
C {launcher.sym} 880 -120 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_CHARGE_PUMP.raw tran"
}
C {vsource.sym} 250 -190 0 0 {name=Vfvco1 value=0 savecurrent=false}
C {lab_pin.sym} 250 -220 0 1 {name=p5 sig_type=std_logic lab=VN
value=0}
C {gnd.sym} 250 -160 0 0 {name=l2 lab=GND
value=0}
C {/foss/designs/PLL2_4/git_11/CHRG_PUMP.sym} 460 -450 0 0 {name=x2}
C {lab_pin.sym} 610 -470 0 1 {name=p6 lab=VDD}
C {lab_pin.sym} 610 -450 0 1 {name=p9 lab=vout}
C {vsource.sym} 330 -190 0 0 {name=Vfvco2 value="0 pulse(0 1.8 15n 1n 1n 50n 100n)" savecurrent=false}
C {lab_pin.sym} 330 -220 0 1 {name=p1 sig_type=std_logic lab=F_VCO}
C {gnd.sym} 330 -160 0 0 {name=l5 lab=GND}
C {vsource.sym} 550 -190 0 0 {name=Vfref value="0 pulse(0 1.8 0n 1n 1n 50n 100n)" savecurrent=false}
C {lab_pin.sym} 550 -220 0 1 {name=p11 sig_type=std_logic lab=F_REF}
C {gnd.sym} 550 -160 0 0 {name=l6 lab=GND}
C {/foss/designs/PLL2_4/src/PFD_std.sym} 120 -450 0 0 {name=x1}
C {lab_pin.sym} 120 -510 0 0 {name=p2 lab=VDD}
C {lab_pin.sym} 90 -460 0 0 {name=p7 lab=F_REF}
C {lab_pin.sym} 90 -440 0 0 {name=p12 lab=F_VCO}
C {lab_pin.sym} 120 -390 0 0 {name=p14 lab=GND}
C {vsource.sym} 180 -310 0 0 {name=Iref value=1m savecurrent=false}
C {lab_pin.sym} 180 -340 0 1 {name=p4 sig_type=std_logic lab=I_ref}
C {gnd.sym} 180 -280 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 310 -470 3 1 {name=p8 sig_type=std_logic lab=I_ref}
C {code_shown.sym} 150 -975 0 0 {name=SPICE1 only_toplevel=false value=
"
.param TEMPGAUSS = limit(agauss(40, 30, 1),20,80)
.option temp = 'TEMPGAUSS'
.param VDDGAUSS = agauss(1.8, 0.05, 1)

.param VDD = 'VDDGAUSS'
* analysis

.tran 1n 10u uic

.control
let i = 0
dowhile i < 1
  reset
  run
  write tb_CHARGE_PUMP.raw
  set appendwrite
  reset
  let i = i + 1
end
.endc
"}
C {/foss/designs/PLL2_4/git_11/LOOP_FILTER.sym} 530 -350 0 0 {name=x3}
C {lab_pin.sym} 380 -360 0 0 {name=p10 lab=vout}
C {lab_pin.sym} 680 -360 0 1 {name=p15 lab=voutf}
C {lab_pin.sym} 680 -340 0 1 {name=p16 lab=VN}
C {lab_pin.sym} 610 -430 0 1 {name=p17 lab=VN}
