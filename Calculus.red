%%%%%%%%%%%%%%%%%%%%%
%  CALCULUS
%%%%%%%%%%%%%%%%%%%%%

% Specify blue for echoed input
color("Blue");

% Turn on fancy output
fancy_output;

% Turn input echo on
on echo;

% Differentiation
% df/dx
df(x^x,x);

% Multivariate Differentiation
% df/((dx)(dy^2)(dz))
df(x*exp(i*y)*log(z), x, 1, y, 2, z, 1);

% Integration
% indefinite integral with respect to x
int(x^2 + x*sin(x), x);

% SI(x)
int(sin(x)/x,x);

% Integral in interval [-oo, oo]
int(exp(-x^2), x,-infinity,infinity);

% Integral with logarithms
int(log(log(x)),x);

% Turn off echo
off echo;