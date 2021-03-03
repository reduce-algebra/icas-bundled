%%%%%%%%%%%%%%%%%%%%%
%  HYPERGEOMETRY
%       &
%    MEIJERG
%%%%%%%%%%%%%%%%%%%%%

% Specify blue for echoed input
color("Blue");

% Turn on fancy output
fancy_output;

% Turn input echo on
on echo;

% Load special functions 2
load_package specfn2$

% Load generalized hypergeometric package
load_package ghyper$

% Hypergeometric function
hypergeometric({1/2,1},{2},z);

% Load meijerg package
load_package meijerg$

% MeijerG function
MeijerG({{}},{{5/4},1},x^2/2);

% Turn off echo
off echo;