%% euler_fraktur.mp
%% Created by Laurence D. Finston (LDF) Sun 30 Jan 2022 10:19:43 AM CET

%%%% * Copyright and License.

%%%% This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
%%%% Copyright (C) 2022 The Free Software Foundation, Inc.

%%%% GNU 3DLDF is free software; you can redistribute it and/or modify 
%%%% it under the terms of the GNU General Public License as published by 
%%%% the Free Software Foundation; either version 3 of the License, or 
%%%% (at your option) any later version. 

%%%% GNU 3DLDF is distributed in the hope that it will be useful, 
%%%% but WITHOUT ANY WARRANTY; without even the implied warranty of 
%%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
%%%% GNU General Public License for more details. 

%%%% You should have received a copy of the GNU General Public License 
%%%% along with GNU 3DLDF; if not, write to the Free Software 
%%%% Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA 

%%%% GNU 3DLDF is a GNU package.  
%%%% It is part of the GNU Project of the  
%%%% Free Software Foundation 
%%%% and is published under the GNU General Public License. 
%%%% See the website http://www.gnu.org 
%%%% for more information.   
%%%% GNU 3DLDF is available for downloading from 
%%%% http://www.gnu.org/software/3dldf/LDF.html. 

%%%% Please send bug reports to Laurence.Finston@@gmx.de
%%%% The mailing list help-3dldf@gnu.org is available for people to 
%%%% ask other users for help.  
%%%% The mailing list info-3dldf@gnu.org is for sending 
%%%% announcements to users. To subscribe to these mailing lists, send an 
%%%% email with "subscribe <email-address>" as the subject.  

%%%% The author can be contacted at: 

%%%% Laurence D. Finston 
%%%% c/o Free Software Foundation, Inc. 
%%%% 51 Franklin St, Fifth Floor 
%%%% Boston, MA  02110-1301  
%%%% USA

%%%% Laurence.Finston@gmx.de 


%% * (1) Top.

tracingonline := 1;
prologues := 3;
outputtemplate := "%j%3c.eps";

% This is how labels are rotated:
% label  (btex $q_2^0$ etex rotated 30,    point  0 of p2);

%% * (1)

verbatimtex \font\eurm=eurm10 scaled 16000\font\cmssbx=cmssbx10 scaled 8000 etex;

path q[];
picture v[];

numeric dark_grey;
dark_grey = .5;
pen small_pen;
pen medium_pen;
pen big_pen;
pen huge_pen;

small_pen = pencircle scaled .25mm;

medium_pen = pencircle scaled .5mm;

big_pen = pencircle scaled 1mm;

huge_pen = pencircle scaled 2mm;

pickup medium_pen;

picture w[];

boolean do_labels;
do_labels = true; % false;

bboxmargin := 0;

input TEX.mp;
input boxes.mp;

input outline_ttemp.mac;

path r[][];

pair p[][][];

string S;
S = "";

boolean do_black;
do_black = true; % false;

boolean do_labels;
do_labels = true; % false;

boolean do_reflect;
do_reflect = false; % true;


%% * (1)

fontmapline "cmr10 CMR10 <cmr10.pfb";
fontmapline "cmbx12 CMBX12 <cmbx12.pfb";
fontmapline "cmssbx10 CMSSBX10 <cmssbx10.pfb";
fontmapline "eurm10 EURM10 <eurm10.pfb";
fontmapline "eurb10 EURB10 <eurb10.pfb";
fontmapline "eufm10 EUFM10 <eufm10.pfb"; %% Euler Fraktur medium
fontmapline "eufb10 EUFB10 <eufb10.pfb"; %% Euler Fraktur bold
fontmapline "cmmi10 CMMI10 <cmmi10.pfb"; 
fontmapline "cmr7 CMR7 <cmr7.pfb"; 
fontmapline "manfnt MANFNT <manfnt.pfb";

%% * (1) AMS Euler

%% https://en.wikipedia.org/wiki/AMS_Euler
%% eurb10, Euler roman bold 
%% eusb10, Euler script bold
%% eusm10, Euler script medium

%% ** (2) Euler Roman Bold, small.

%% DIN A Series, Width X Height
%%

% DIN A4 Portrait: 210 X 297   
% DIN A5 Portrait: 148 X 210   
% DIN A6 Portrait: 105 X 148
% DIN A7 Portrait:  74 X 105
% DIN A8 Portrait:  52 X  74

%% LDF 2022.01.02.  Printed out using scaling_factor := .1 and scaling_factor := .13.
%% Both of these sizes look good.

numeric outer_frame_wd;
numeric outer_frame_ht;

numeric inner_frame_wd;
numeric inner_frame_ht;

path inner_frame;
path outer_frame;

%% *** (3) Fraktur (eufm10)

outline (65, 65, "eufm10", .13, big_pen, do_black, do_labels); %% A  
outline (66, 66, "eufm10", .13, big_pen, do_black, do_labels); %% B
outline (67, 67, "eufm10", .13, big_pen, do_black, do_labels); %% C
outline (68, 68, "eufm10", .13, big_pen, do_black, do_labels); %% D
outline (69, 69, "eufm10", .13, big_pen, do_black, do_labels); %% E  
outline (70, 70, "eufm10", .13, big_pen, do_black, do_labels); %% F  
outline (71, 71, "eufm10", .13, big_pen, do_black, do_labels); %% G  
outline (72, 72, "eufm10", .13, big_pen, do_black, do_labels); %% H
outline (73, 73, "eufm10", .13, big_pen, do_black, do_labels); %% I
outline (74, 74, "eufm10", .13, big_pen, do_black, do_labels); %% J
outline (75, 75, "eufm10", .13, big_pen, do_black, do_labels); %% K  
outline (76, 76, "eufm10", .13, big_pen, do_black, do_labels); %% L
outline (77, 77, "eufm10", .13, big_pen, do_black, do_labels); %% M
outline (78, 78, "eufm10", .13, big_pen, do_black, do_labels); %% N
outline (79, 79, "eufm10", .13, big_pen, do_black, do_labels); %% O

outline (80, 80, "eufm10", .13, big_pen, do_black, do_labels); %% P
outline (81, 81, "eufm10", .13, big_pen, do_black, do_labels); %% Q
outline (82, 82, "eufm10", .13, big_pen, do_black, do_labels); %% R
outline (83, 83, "eufm10", .13, big_pen, do_black, do_labels); %% S
outline (84, 84, "eufm10", .13, big_pen, do_black, do_labels); %% T
outline (85, 85, "eufm10", .13, big_pen, do_black, do_labels); %% U
outline (86, 86, "eufm10", .13, big_pen, do_black, do_labels); %% V
outline (87, 87, "eufm10", .13, big_pen, do_black, do_labels); %% W
outline (88, 88, "eufm10", .13, big_pen, do_black, do_labels); %% X
outline (89, 89, "eufm10", .13, big_pen, do_black, do_labels); %% Y
outline (90, 90, "eufm10", .13, big_pen, do_black, do_labels); %% Z

outline (48, 48, "eufm10", .13, big_pen, do_black, do_labels); %% 0
outline (49, 49, "eufm10", .13, big_pen, do_black, do_labels); %% 1
outline (50, 50, "eufm10", .13, big_pen, do_black, do_labels); %% 2
outline (51, 51, "eufm10", .13, big_pen, do_black, do_labels); %% 3
outline (52, 52, "eufm10", .13, big_pen, do_black, do_labels); %% 4
outline (53, 53, "eufm10", .13, big_pen, do_black, do_labels); %% 5
outline (54, 54, "eufm10", .13, big_pen, do_black, do_labels); %% 6
outline (55, 55, "eufm10", .13, big_pen, do_black, do_labels); %% 7
outline (56, 56, "eufm10", .13, big_pen, do_black, do_labels); %% 8
outline (57, 57, "eufm10", .13, big_pen, do_black, do_labels); %% 9

inner_frame_wd = 42mm;
inner_frame_ht = 52mm;

outer_frame_wd = inner_frame_wd + 10mm;
outer_frame_ht = inner_frame_ht + 10mm;

%% *** (3) Fig. 0, A-D

beginfig(0);
  pickup medium_pen;
  A.dx = A.dy = .5cm;
  boxit.A(v[65]);
  boxit.B(v[66]);
  boxit.C(v[67]);
  boxit.D(v[68]);
  B.c = A.c shifted (outer_frame_wd, 0);
  C.c = B.c shifted (outer_frame_wd, 0);
  D.c = C.c shifted (outer_frame_wd, 0);
  fixsize(A, B, C, D);
  fixpos(A, B, C, D);

  draw pic(A);
  draw pic(B);
  draw pic(C);
  draw pic(D);
  
  inner_frame = (unitsquare xscaled inner_frame_wd yscaled inner_frame_ht)
    shifted (A.c - (.5inner_frame_wd, .5inner_frame_ht));
  outer_frame = (unitsquare xscaled outer_frame_wd yscaled outer_frame_ht)
    shifted (A.c - (.5outer_frame_wd, .5outer_frame_ht)); 
  
  for j = 0 upto 3:
    draw inner_frame shifted (j*outer_frame_wd, 0);
    draw outer_frame shifted (j*outer_frame_wd, 0);
  endfor;

  w0 = currentpicture;
  
  %currentpicture := currentpicture reflectedabout((0, -1), (0, 1));

  
endfig;

%% **** (4)

beginfig(100);
    currentpicture := w0 reflectedabout((0, -1), (0, 1));
endfig;



%% *** (3) Fig. 1, E-H

beginfig(1);
  pickup medium_pen;
  E.dx = E.dy = .5cm;
  boxit.E(v[69]);
  boxit.F(v[70]);
  boxit.G(v[71]);
  boxit.H(v[72]);
  F.c = E.c shifted (outer_frame_wd, 0);
  G.c = F.c shifted (outer_frame_wd, 0);
  H.c = G.c shifted (outer_frame_wd, 0);

  draw pic(E) shifted (-.1cm, 0);
  draw pic(F) shifted (0cm, 0);
  draw pic(G) shifted (0cm, 0);
  draw pic(H) shifted (-.125cm, 0);

  
  for j = 0 upto 3:
    draw inner_frame shifted (j*outer_frame_wd, 0);
    draw outer_frame shifted (j*outer_frame_wd, 0);
  endfor;

  w1 = currentpicture;
  
  %currentpicture := currentpicture reflectedabout((0, -1), (0, 1));
  
endfig;

%% **** (4)

beginfig(101);
    currentpicture := w1 reflectedabout((0, -1), (0, 1));
endfig;

%% *** (3) Fig. 2, I-L

beginfig(2);
  pickup medium_pen;
  I.dx = I.dy = .5cm;
  boxit.I(v[73]);
  boxit.J(v[74]);
  boxit.K(v[75]);
  boxit.L(v[76]);
  J.c = I.c shifted (outer_frame_wd, 0);
  K.c = J.c shifted (outer_frame_wd, 0);
  L.c = K.c shifted (outer_frame_wd, 0);

  draw pic(I) shifted (.9cm, 0);
  draw pic(J) shifted (.9cm, 0);
  draw pic(K) shifted (.9cm, 0);
  draw pic(L) shifted (.9cm, 0);
  
  for j = 0 upto 3:
    draw inner_frame shifted (j*outer_frame_wd, 0);
    draw outer_frame shifted (j*outer_frame_wd, 0);
  endfor;

  w2 = currentpicture;

  %currentpicture := currentpicture reflectedabout((0, -1), (0, 1));
  
endfig;

%% **** (4)

beginfig(102);
    currentpicture := w2 reflectedabout((0, -1), (0, 1));
endfig;

%% *** (3) Fig. 3, M-O


beginfig(3);

  pickup medium_pen;
  M.dx = M.dy = .5cm;
  boxit.M(v[77]);

  draw pic(M) shifted (1mm, 0);
  
  draw outer_frame xscaled 1.5;
  draw inner_frame xscaled 1.5;

  z0 = point 1 of (outer_frame xscaled 1.5);
  z1 = point 0 of outer_frame;

  
  draw outer_frame shifted (z0 - z1);
  draw inner_frame shifted (z0 - z1);

  z2 = point 2 of outer_frame shifted (z0 - z1);
  z3 = .5[z0, z2];

    
  % dotlabel.urt(btex $z_0$ etex, z0);
  % dotlabel.llft(btex $z_2$ etex, z2);
  % dotlabel.top(btex $z_3$ etex, z3);

  boxit.N(v[78]);
  N.c = z3;
  
  draw pic(N);

  z4 = point 1 of outer_frame shifted (z0 - z1);

  % dotlabel.ulft(btex $z_4$ etex, z4);
  
  boxit.O(v[79]);
  O.c = z3 shifted (z4 - z0);

  draw pic(O) shifted (.3cm, 0);

  path q[];

  q0 = outer_frame xscaled 1.125;
  q1 = inner_frame xscaled 1.125;

  z5 = point 0 of q0;

  q0 := (q0 shifted (z1 - z5)) shifted (z4 - z1);
  q1 := (q1 shifted (z1 - z5)) shifted (z4 - z1);
    
  draw q0;
  draw q1;

  w3 = currentpicture;

  %currentpicture := currentpicture reflectedabout((0, -1), (0, 1));
  
  
endfig;

%% **** (4)

beginfig(103);
    currentpicture := w3 reflectedabout((0, -1), (0, 1));
endfig;


%% *** (3) Fig. 4, P-S


beginfig(4);

  pickup medium_pen;
  P.dx = P.dy = .5cm;
  boxit.P(v[80]);

  draw pic(P) shifted (-2mm, .25cm);
  
  draw outer_frame;
  draw inner_frame;

  z0 = point 1 of outer_frame;
  z1 = point 0 of outer_frame;

  draw outer_frame shifted (z0 - z1);
  draw inner_frame shifted (z0 - z1);

  z2 = point 2 of outer_frame shifted (z0 - z1);
  z3 = .5[z0, z2];
    
  % dotlabel.urt(btex $z_0$ etex, z0);
  % dotlabel.llft(btex $z_2$ etex, z2);
  % dotlabel.top(btex $z_3$ etex, z3);

  boxit.Q(v[81]);
  Q.c = z3;
  
  draw pic(Q);

  z4 = point 1 of outer_frame shifted (z0 - z1);

  % dotlabel.ulft(btex $z_4$ etex, z4);
  
  boxit.R(v[82]);
  R.c = z3 shifted (z4 - z0);

  draw pic(R) shifted (.3cm, 0);

  path q[];

  q0 = outer_frame xscaled 1.125;
  q1 = inner_frame xscaled 1.125;

  z5 = point 0 of q0;

  q0 := (q0 shifted (z1 - z5)) shifted (z4 - z1);
  q1 := (q1 shifted (z1 - z5)) shifted (z4 - z1);
    
  draw q0;
  draw q1;

  boxit.S(v[83]);
  S.w = R.e shifted (.5inner_frame_wd, 0);

  draw pic(S) shifted (0cm, 0);

  q2 = inner_frame shifted (point 1 of q0 - point 0 of outer_frame);
  q3 = outer_frame shifted (point 1 of q0 - point 0 of outer_frame);
  draw q2;
  draw q3;
  
  w4 = currentpicture;

  %currentpicture := currentpicture reflectedabout((0, -1), (0, 1));
  
  
endfig;

%% **** (4)

beginfig(104);
    currentpicture := w4 reflectedabout((0, -1), (0, 1));
endfig;

%% *** (3) Fig. 0, T-W

beginfig(5);
  pickup medium_pen;
  T.dx = T.dy = .5cm;
  boxit.T(v[84]);
  boxit.U(v[85]);
  boxit.V(v[86]);
  boxit.W(v[87]);
  U.c = T.c shifted (outer_frame_wd, 0);
  V.c = U.c shifted (outer_frame_wd, 0);
  W.c = V.c shifted (outer_frame_wd, 0);
  fixsize(T, U, V, W);
  fixpos(T, U, V, W);

  draw pic(T);
  draw pic(U);
  draw pic(V);
  draw pic(W);
  
  for j = 0 upto 3:
    draw inner_frame shifted (j*outer_frame_wd, 0);
    draw outer_frame shifted (j*outer_frame_wd, 0);
  endfor;

  w5 = currentpicture;
  
  %currentpicture := currentpicture reflectedabout((0, -1), (0, 1));

  
endfig;

%% **** (4)

beginfig(105);
    currentpicture := w5 reflectedabout((0, -1), (0, 1));
endfig;



end;

%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% eval:(outline-minor-mode t)
%% outline-regexp:"%% *\\*+\\|@\\*[0-9]*"
%% End:
