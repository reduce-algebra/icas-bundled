%%%%%%%%%%%%%%%%%%%%%
%  ALGEBRA (SOLVE)
%%%%%%%%%%%%%%%%%%%%%

% Specify blue for echoed input
color("Blue");

% Turn on fancy output
fancy_output;

% Turn input echo on
on echo;

% Solve quadratic equation
solve(x^2+8x+15=0, x);

% Solve for expression
solve(a*log(sin(x+3))^2 - b, sin(x+3));

% Solve simultaneous equations
solve({x+3y=7, y-x=1},{x,y});

% Solve a system with parameters
solve({x=a*z+1, y=b*z},{z,x});

% Simplify expression
((((-r1*(1+k1))/(r2*(1+k2)))+((r1)/(r2)))/(((r1)/(r2))));

% Another solve example
% Note the use of $ as the line termination 
% character to suppress output from
% intermediate computations
x1 := sqrt(h^2 + p1^2)$
x2 := sqrt((h/2)^2 + (p-p1)^2)$
x3 := x1 + x2$
dx := df(x3, p1)$
solve(dx, p1);

% Suppose you are given the equation
% x^2+x+1=0 and wish to determine the
% value of x^3.  The following simple
% substitution achieves this.
rule := solve(x^2+x+1=0,x)$
y := (x^3 where rule);

% Then y=1, because
% x^3=x*(x^2)=-x*(x+1)=-x^2-x=1.

% Turn off echo
off echo;