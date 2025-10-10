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
x1=1.8188241e-07
x2=2.5894699e-07
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
x1=1.8188241e-07
x2=2.5894699e-07
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
x1=1.8188241e-07
x2=2.5894699e-07
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
C {/foss/designs/PLL2_4/git_11/LOOP_FILTER.sym} 220 -340 0 0 {name=x1}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 180 -190 0 0 {name=Vdd value='VDD' savecurrent=false}
C {lab_pin.sym} 180 -220 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 180 -160 0 0 {name=l3 lab=GND}
C {vsource.sym} 260 -190 0 0 {name=Vfvco value="0 pulse(0 1.8 15n 1n 1n 50n 100n)" savecurrent=false}
C {lab_pin.sym} 260 -220 0 1 {name=p10 sig_type=std_logic lab=vin}
C {gnd.sym} 260 -160 0 0 {name=l1 lab=GND}
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
tclcommand="xschem raw_read $netlist_dir/tb_PFD_std.raw tran"
}
C {lab_pin.sym} 70 -350 0 0 {name=p1 lab=vin}
C {lab_pin.sym} 370 -350 0 1 {name=p2 lab=vout}
C {lab_pin.sym} 370 -330 0 1 {name=p4 lab=VN}
