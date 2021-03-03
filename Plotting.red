%%%%%%%%%%%%%%%%%%%%%
%  PLOTTING
%%%%%%%%%%%%%%%%%%%%%

% Load gnuplot package
load_package gnuplot$

% Plot of sine and cosine
plot(sin(x), title="sin(x) and cos(x)", output="Sine and Cosine");
plot(cos(x), title="sin(x) and cos(x)");

% Superposition of polynomials
plot((x^2+y^2-9)*x*y=0, title="Polynomials", output="Polynomials");

% 3D surface plot
plot(cos sqrt(x**2+y**2),x=(-10 .. 10),y=(-10 .. 10),hidden3d, title="cos sqrt(x^2+y^2)", points=50, output="3D Plot");

% Super-Ellipsoid
on rounded;
ax:=3$
ay:=3$
az:=4$
ns:=4/5$
ew:=1$

for all w,m let c(w,m) = sign(cos(w))*abs(cos(w))**m$
for all w,m let s(w,m) = sign(sin(w))*abs(sin(w))**m$
for all u,v let x(u,v) =ax * c(v, ns)*c(u, ew)$
for all u,v let y(u,v) =ay * c(v, ns)*s(u, ew)$
for all u,v let z(u,v) =az * s(v, ns)$

dd:=pi/15$
w:=for u:=-pi step dd until pi collect
for v:=-pi/2 step dd until pi/2 collect
{x(u,v),y(u,v),z(u,v)}$
gnuplot(set, ticslevel, 0)$
gnuplot(set, xtics, -4, 1, 4)$
gnuplot(set, ytics, -4, 1, 4)$
gnuplot(set, ztics, -4, 1, 4)$
plot (w, hidden3d, title="Super-Ellipsoid", output="Super-Ellipsoid")$

% 3D surface plot with gradients using the
% CAS mode gnuplot operator of the gnuplot
% package.  The same plot could be created
% using direct gnuplot commands in Plot 
% mode.
plotreset$
gnuplot("unset hidden3d");
gnuplot("unset hidden");
gnuplot("unset surface");
gnuplot("set output ""3D Log""");
gnuplot("set title ""3D Log""");
gnuplot("set samples 30; set isosamples 30");
gnuplot("set pm3d");
gnuplot("set style line 100 lt 5 lw 0.5");
gnuplot("set pm3d hidden3d 100");
gnuplot("set view 57,220");
gnuplot("set xrange [-2:2]");
gnuplot("set yrange [-2:2]");
gnuplot("splot log(x*x*y*y)");
plotshow;

% 3D Torus
% Again, the same plot could be generated
% with direct gnuplot commands in Plot
% mode.
plotreset$
gnuplot("set title ""Interlocking Torus""");
gnuplot("set output ""Torus""");
gnuplot("set parametric");
gnuplot("set urange [-pi:pi]");
gnuplot("set vrange [-pi:pi]");
gnuplot("set isosamples 50,20");
gnuplot("unset key");
gnuplot("unset xtics");
gnuplot("unset ytics");
gnuplot("unset ztics");
gnuplot("set border 0");
gnuplot("set view 60, 30, 1.5, 0.9");
gnuplot("set origin 0.0,-0.075");
gnuplot("set size 0.9, 1.1");
gnuplot("set colorbox vertical user origin 0.9, 0.15 size 0.02, 0.50");
gnuplot("set format cb ""%.1f""");
gnuplot("set pm3d depthorder");
gnuplot("splot cos(u)+.5*cos(u)*cos(v),sin(u)+.5*sin(u)*cos(v),.5*sin(v) with pm3d, 1+cos(u)+.5*cos(u)*cos(v),.5*sin(v),sin(u)+.5*sin(u)*cos(v) with pm3d");
plotshow;