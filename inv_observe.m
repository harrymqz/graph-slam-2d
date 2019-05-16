function [lmk, J_lmk_rob, J_lmk_y] = inv_observe(rob, y)

% Convert to Cartesian coordinates
[lmkrob, J_lmkrob_y] = p2c(y);
[lmk, J_lmkrob, J_lmk_lmkrob] = fromFrame2D(rob, lmkrob);

% Chain rule
J_lmk_y = J_lmk_lmkrob * J_lmkrob_y;

end