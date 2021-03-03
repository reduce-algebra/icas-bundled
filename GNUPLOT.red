###################################
#  GNUPLOT PLOTTING
###################################

# IMPORTANT: This file is for use in Plot
# mode.

reset
unset title
set label 1 "Kuen's Surface" at screen 0.6, 0.9
set output "Kuen's Surface"
set label 1 font "frscript,25"
set style line 3  linetype -1 linewidth 0.5
set pm3d depthorder hidden3d 3
set style fill  transparent solid 0.65 border
set palette
set hidden3d
set ticslevel 0
unset xtics
unset ytics
unset ztics
unset border
unset colorbox
unset key
set lmargin at screen 0.1
set bmargin at screen 0.1
set rmargin at screen 0.9
set tmargin at screen 0.9
set parametric
set dummy u,v
set urange [-4.5:4.5]
set vrange [0.05:pi-0.05]
set isosamples 51,51
set view 122, 357, 1.35, 1.08
a = 1.0
x(u,v) = 2.*a*(cos(u)+u*sin(u))*sin(v) / (1+u**2.*(sin(v))**2)
y(u,v) = 2.*a*(sin(u)-u*cos(u))*sin(v) / (1+u**2.*(sin(v))**2)
z(u,v) = a*log(tan(v/2.))+2.*cos(v)/(1+u**2.*(sin(v))**2)
splot x(u,v), y(u,v), z(u,v) with pm3d


reset
unset surface
set output "3D Log"
set title "3D Log"
set samples 30; set isosamples 30
set pm3d
set style line 100 lt 5 lw 0.5
set pm3d hidden3d 100
set view 50,220
set xrange [-2:2]
set yrange [-2:2]
splot log(x*x*y*y)


reset
set title "Interlocking Torus"
set output "3D Torus"
set parametric
set urange [-pi:pi]
set vrange [-pi:pi]
set isosamples 50,20
unset key
unset xtics
unset ytics
unset ztics
set border 0
set view 60, 30, 1.5, 0.9
set origin 0.0,-0.1
set size 0.9, 1.1
set colorbox vertical user origin 0.9, 0.15 size 0.02, 0.50
set format cb "%.1f"
set pm3d depthorder
splot cos(u)+.5*cos(u)*cos(v),sin(u)+.5*sin(u)*cos(v),.5*sin(v) with pm3d, 1+cos(u)+.5*cos(u)*cos(v),.5*sin(v),sin(u)+.5*sin(u)*cos(v) with pm3d


reset
unset surface
set output "3D Cosh"
set title "3D Cosh"
set samples 30
set isosamples 30
set pm3d
set style line 100 lt 5 lw 0.5
set pm3d hidden3d 100
set view 50,220
set xrange [-2:2]
set yrange [-2:2]
splot cosh(x)+cosh(y)


reset
unset surface
set output "3D Exp"
set title "3D Exp"
set samples 30; set isosamples 30
set xrange [-2:2]
set yrange [-2:2]
set pm3d
splot exp(-x*x)*exp(-y*y)


reset
unset surface
set output "3D Sin"
set title "3D Sin"
set samples 30
set isosamples 30
set pm3d
set style line 100 lt 5 lw 0.5
set pm3d hidden3d 100
set view 50,220
set xrange [-3:3]
set yrange [-3:3]
splot sin(x*x+y*y)


# PM3D surfaces are not included in the calculation of hidden line removal.
# However, you can approximate this by drawing the surface twice,
# once "with pm3d" to produce the surface you want to show, and once 
# "with lines lt -2" to include the same surface in hidden3d calculations.
# The "lt -2" makes the hidden3d copy of the surface invisible.
#
reset
set hidden3d front
set isosamples 25,25
set xyplane at 0
unset key
set palette rgbformulae 31,-11,32
set style fill solid 0.5
set cbrange [-1:1]
set title "Mixing pm3d surfaces with hidden-line plots"
set output "Mixing pm3d surfaces with hidden-line plots"
f(x,y) = sin(-sqrt((x+5)**2+(y-7)**2)*0.5)
splot f(x,y) with pm3d, x*x-y*y with lines lt 1 lc rgb "#000000", f(x,y) with lines lt -2 notitle;