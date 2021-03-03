
%%%%%%%%%%%%%%%%%%%%%
%  10,000 DIGITS OF PI
%%%%%%%%%%%%%%%%%%%%%

% This file shows the power of iCAS
% in computing PI to 10,000 digits
% 
% NOTE WELL-- After computing
% PI has finished, BE SURE to
% scroll down to reset iCAS to
% its standard settings (or else ALL
% of your computations will be to
% to 10,000 digits!)
% 
% Use real arithmetic
on rounded$



% Set precision to 10000 digits
precision(10000)$



% Print Pi
pi;




% Set precision back to default (12)
precision(12)$

% Restore precise arithmetic
off rounded$
