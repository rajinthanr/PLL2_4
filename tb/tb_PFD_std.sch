v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 810 -550 1610 -150 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 8"
node="f_ref
f_vco
"}
B 2 810 -950 1610 -550 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="9 10"
node="up
dn
"}
B 2 810 -1350 1610 -950 {flags=graph
y1=0.83333324
y2=2.8333328
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=11
node="vdd
"}
P 4 1 1420 -830 {}
P 4 1 410 -210 {}
C {/foss/designs/PLL2_4/src/PFD_std.sym} 250 -190 0 0 {name=x1}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 180 -360 0 0 {name=Vdd value='VDD' savecurrent=false}
C {lab_pin.sym} 180 -390 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 180 -330 0 0 {name=l3 lab=GND}
C {vsource.sym} 260 -360 0 0 {name=Vfvco value="0 pulse(0 1.8 15n 1n 1n 50n 100n)" savecurrent=false}
C {lab_pin.sym} 260 -390 0 1 {name=p10 sig_type=std_logic lab=F_VCO}
C {gnd.sym} 260 -330 0 0 {name=l1 lab=GND}
C {vsource.sym} 260 -460 0 0 {name=Vfref value="0 pulse(0 1.8 0n 1n 1n 50n 100n)" savecurrent=false}
C {lab_pin.sym} 260 -490 0 1 {name=p11 sig_type=std_logic lab=F_REF}
C {gnd.sym} 260 -430 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 250 -250 0 0 {name=p5 lab=VDD}
C {lab_pin.sym} 400 -210 0 1 {name=p6 lab=UP}
C {lab_pin.sym} 220 -200 0 0 {name=p7 lab=F_REF}
C {lab_pin.sym} 220 -180 0 0 {name=p12 lab=F_VCO}
C {lab_pin.sym} 400 -170 0 1 {name=p13 lab=DN}
C {lab_pin.sym} 250 -130 0 0 {name=p14 lab=GND}
C {code_shown.sym} 470 -495 0 0 {name=SPICE only_toplevel=false value=
"
.param TEMPGAUSS = limit(agauss(40, 30, 1),20,80)
.option temp = 'TEMPGAUSS'
.param VDDGAUSS = agauss(1.8, 0.05, 1)

.param VDD = 'VDDGAUSS'
* analysis

.tran 1n 1000n uic

.control
let i = 0
dowhile i < 10
  reset
  run
  write tb_PFD_std.raw
  set appendwrite
  reset
  let i = i + 1
end
.endc
"}
C {devices/code.sym} 20 -325 0 0 {name=TT_MODELS
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
tclcommand="xschem raw_read $netlist_dir/tb_PFD_std.raw tran"
}
