% 1. De polars a cartesians
% Les majuscules son matrius
% Les minuscules son vectors
% J_c_p -> Jacobiana

function [c, J_c_p] = p2c(p)

d = p(1);
a = p(2);

x = d*cos(a);
y = d*sin(a);

c = [x;y];

J_c_p = [cos(a) -d*sin(a); sin(a) d*cos(a)];

end

%%
function f()
%%
syms a d real
p = [d;a];
[c, J_c_p] = p2c(p);


simplify(jacobian(c, p) - J_c_p)
end