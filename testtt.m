syms angle tita phi;
Rx = [1 0 0; 0 cos(angle) -sin(angle); 0 sin(angle) cos(angle)];
Ry = [cos(phi) 0 -sin(phi); 0 1 0; sin(phi) 0 cos(phi)];
Rz = [cos(tita) -sin(tita) 0; sin(tita) cos(tita) 0; 0 0 1];

T = Rz * Ry * Rx;