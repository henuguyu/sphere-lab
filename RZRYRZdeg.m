function R=RZRYRZdeg(aa,bb,gg)
%RZRYRZDEG Generates the 3x3 'zyz' matrix corresponding the Euler angles
%  arguments in deg
%  gg is the first rotation about the z-axis
%  bb is the second rotation about the y-axis
%  aa is the third rotation about the z-axis

aa=aa*pi/180;
bb=bb*pi/180;
gg=gg*pi/180;
Rz1=[cos(gg) -sin(gg) 0; sin(gg) cos(gg) 0; 0 0 1];
Ry=[cos(bb) 0 sin(bb); 0 1 0; -sin(bb) 0 cos(bb)];
Rz2=[cos(aa) -sin(aa) 0; sin(aa) cos(aa) 0; 0 0 1];
R=Rz2*Ry*Rz1;
