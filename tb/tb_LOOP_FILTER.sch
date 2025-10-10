v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 895 -560 1695 -160 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7661874e-06
x2=3.1059812e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
"
color=9
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 885 -960 1685 -560 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7661874e-06
x2=3.1059812e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=6
dataset=-1
unitx=1
logx=0
logy=0
autoload=1}
B 2 895 -1370 1695 -970 {flags=graph
y1=1.9722222e-09
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7661874e-06
x2=3.1059812e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=7
node=vn}
P 4 1 1420 -830 {}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 180 -190 0 0 {name=Vdd value=1.8 savecurrent=false}
C {lab_pin.sym} 180 -220 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 180 -160 0 0 {name=l3 lab=GND}
C {vsource.sym} 260 -190 0 0 {name=Vfvco value="0 pulse(0 1.8 15n 1n 1n 50n 100n)" savecurrent=false}
C {lab_pin.sym} 260 -220 0 1 {name=p10 sig_type=std_logic lab=vin}
C {gnd.sym} 260 -160 0 0 {name=l1 lab=GND}
C {code_shown.sym} 320 -895 0 0 {name=SPICE only_toplevel=false value=
"
.param freq = 1k
.param period = 1/freq
V1 in 0 PULSE(0 1 0 1n 1n \{period/2\} \{period\})

.tran 10n 10u

.control
.step param freq list 1k 2k 5k 10k 20k 50k 100k

run

write tb_LOOP_FILTER.raw
.endc
"}
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
tclcommand="xschem raw_read $netlist_dir/tb_LOOP_FILTER.raw tran"
}
C {/foss/designs/PLL2_4/git_11/LOOP_FILTER.sym} 375 -445 0 0 {name=x1}
C {lab_pin.sym} 225 -455 0 0 {name=p1 lab=vin}
C {lab_pin.sym} 525 -455 0 1 {name=p2 lab=vout}
C {lab_pin.sym} 525 -435 0 1 {name=p4 lab=VN}
C {vsource.sym} 490 -190 0 0 {name=Vfvco1 value=0 savecurrent=false}
C {lab_pin.sym} 490 -220 0 1 {name=p5 sig_type=std_logic lab=VN
value=0}
C {gnd.sym} 490 -160 0 0 {name=l2 lab=GND
value=0}
