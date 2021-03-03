%%%%%%%%%%%%%%%%%%%%%
%  PROGRAMMING
%%%%%%%%%%%%%%%%%%%%%

% Define number to factorize
x:=42;

% Factorize x and write out each individual 
% factor
factors:=factorize(fix(x))$
x:=0$
for i:=1:length(factors) do begin
   q:=part(factors,i);
   for j:=1:part(q,2) do begin
      x:=x+1;
      write "factor ", x, ": ", part(q,1);
   end;
end;

% Procedure to calculate Legendre polynomial
% using recursion 
procedure p(n,x);
   if n<0 then rederr "Invalid argument to p(n,x)"
   else if n=0 then 1
   else if n=1 then x
   else ((2*n-1)*x*p(n-1,x)-(n-1)*p(n-2,x))/n$

% Enable fancy output
fancy_output$

% Calculate p(2,w)
write "P(2,w) = ", p(2,w);

% Incidentally, p(n,x) can be calculated more
% efficiently as follows
procedure p(n,x);
   sub(y=0,df(1/(y^2-2*x*y+1)^(1/2),y,n))/(for i:=1:n product i)$

write "P(3,w) = ", p(3,w);