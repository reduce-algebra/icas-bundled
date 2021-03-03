%%%%%%%%%%%%%%%%%%%%%
%  LINEAR ALGEBRA
%%%%%%%%%%%%%%%%%%%%%

% Enable fancy output for easier viewing of
% matrix output
fancy_output$

% Load linear algebra package
load_package linalg$

% Define a complex 3x3 matrix
m1 := mat((1+i*3, 2-i*5, 7-i), (4-i*2, 6+i*9,-8+i*4), (-3-i*7, 3+i*2, -1+i*6));

% Determinant of matrix
write "|m1| = ", det(m1)$

% Trace of matrix
write "trace(m1) = ", trace(m1)$

% Characteristic polynomial
write "characteristic polynomial of m1:";
char_poly(m1,eta);

% Enable real arithmetic
on rounded$

% Singular value decomposition of a matrix.
a := mat((1,3),(-4,3));
write "Singular Value Decomposition of a:"$
svd(a);