%% hollow_ssb.mp
%% Created by Laurence D. Finston (LDF) Sat 01 Jan 2022 03:26:31 PM CET

tracingonline := 1;
prologues := 3;
outputtemplate := "%j%3c.eps";

% This is how labels are rotated:
% label  (btex $q_2^0$ etex rotated 30,    point  0 of p2);

%% * (1)

verbatimtex \font\eurm=eurm10 scaled 16000
  \font\cmssbx=cmssbx10 scaled 8000
  etex;

path p[];
path q[];
picture v[];
picture w[];

numeric dark_grey;
dark_grey = .5;
pen small_pen;
pen medium_pen;
pen big_pen;

small_pen = pencircle scaled .25mm;
medium_pen = pencircle scaled .5mm;
big_pen = pencircle scaled 1mm;

let large_pen = big_pen;

pickup medium_pen;

path r[][];

pair p[][][];

string S;
S = "";

%bboxmargin := 0;

boolean do_black;
boolean do_labels;
boolean do_rounded_corners;

do_labels          = true;  % false;
do_black           = false; % true;
do_rounded_corners = false; % true;

input TEX.mp;
input boxes.mp;


numeric coeff_left_diag;
numeric coeff_right_diag;
numeric coeff_lower_horiz;
numeric coeff_upper_horiz;

coeff_left_diag   = .25;
coeff_right_diag  = .25; 
coeff_lower_horiz = .25;
coeff_upper_horiz = .25;

input outline_hollow_ssb.mac;

%% * (1)

%% * (1)

fontmapline "cmr10 CMR10 <cmr10.pfb";
fontmapline "cmssbx10 CMSSBX10 <cmssbx10.pfb";
fontmapline "eurm10 EURM10 <eurm10.pfb";
fontmapline "eurb10 EURB10 <eurb10.pfb";
fontmapline "eufm10 EUFM10 <eufm10.pfb"; %% Euler Fraktur medium
fontmapline "eufb10 EUFB10 <eufb10.pfb"; %% Euler Fraktur bold
fontmapline "cmmi10 CMMI10 <cmmi10.pfb"; 
fontmapline "cmr7 CMR7 <cmr7.pfb"; 

%% * (1)

outline (65, 65, "cmssbx10", .25, big_pen, do_black, do_labels); %% A

beginfig(0);

  do_labels := true; % false
  
  path q[];

  % bboxmargin := 2cm;
  % message "bboxmargin:";
  % show bboxmargin;
  
  pickup medium_pen;
  A.dx = A.dy = 1cm;
  boxit.A(v[65]);

  drawboxed(A);
  
  z0 = .5[a[0][6], a[0][7]];
  if do_labels: dotlabel.bot(btex $z_0$ etex, z0); fi

  z1 = (a[0][3] - a[0][4]) shifted z0;
  if do_labels: dotlabel.rt(btex $z_1$ etex, z1); fi

  z2 = 1.25[z0, z1];
  %if do_labels: dotlabel.top(btex $z_2$ etex, z2); fi
  
  z3 = (z0 -- z2) intersectionpoint (a[0][2] -- a[0][1]);
  if do_labels: dotlabel.top(btex $z_3$ etex, z3); fi
  
  draw z0 -- z3 withcolor dark_grey;

  z4 = .5[a[0][12], a[0][13]];
  if do_labels: dotlabel.bot(btex $z_4$ etex, z4); fi

  z5 = (a[0][10] - a[0][11]) shifted z4;
  if do_labels: dotlabel.rt(btex $z_5$ etex, z5); fi

  z6 = 7.5[z4, z5];
  
  z7 = (z5 -- z6) intersectionpoint (a[0][2] -- a[0][1]);
  if do_labels: dotlabel.top(btex $z_7$ etex, z7);   fi

  draw z4 -- z7 withcolor dark_grey;
  
  x8 = .5[xpart a[0][9], xpart a[0][10]];
  y8 = .5[ypart a[1][1], ypart a[0][2]];

  if do_labels: dotlabel.urt(btex $z_8$ etex, z8);   fi

  z9 = z8 shifted (1cm, 0);
  z10 = 3[z8, z9];
  z11 = z10 rotatedaround (z8, 180);

  if do_labels: dotlabel.rt(btex $z_{10}$ etex, z10); fi
  if do_labels: dotlabel.lft(btex $z_{11}$ etex, z11);   fi

  z12 = (a[0][4] -- a[0][3]) intersectionpoint (z11 -- z10);
  if do_labels: dotlabel.lft(btex $z_{12}$ etex, z12); fi

  z13 = (a[0][14] -- a[0][0]) intersectionpoint (z11 -- z10);
  if do_labels: dotlabel.rt(btex $z_{13}$ etex, z13);   fi

  draw z12 -- z13 withcolor dark_grey;

  x14 = .5[xpart a[1][5], xpart a[1][4]];
  y14 = .5[ypart a[0][9], ypart a[1][5]];
  if do_labels: dotlabel.top(btex $z_{14}$ etex, z14); fi

  z15 = z14 shifted (10cm, 0);
  %if do_labels: dotlabel.rt(btex $z_{15}$ etex, z15); fi

  z16 = z15 rotatedaround (z14, 180);

  if do_labels: dotlabel.lft(btex $z_{16}$ etex, z16); fi

  z17 = (a[0][4] -- a[0][3]) intersectionpoint (z16 -- z15);
  if do_labels: dotlabel.lft(btex $z_{17}$ etex, z17); fi

  z18 = (a[0][14] -- a[0][0]) intersectionpoint (z16 -- z15);
  if do_labels: dotlabel.rt(btex $z_{18}$ etex, z18); fi

  draw z17 -- z18 withcolor dark_grey;

  z19 = whatever[a[0][9], a[1][5]];
  y19 = y14;
  if do_labels: dotlabel.rt(btex $z_{19}$ etex, z19); fi

  z20 = (z17 -- z19) intersectionpoint (z0 -- z1);
  if do_labels: dotlabel.lrt(btex $z_{20}$ etex, z20); fi

  z21 = (z20 -- z18) intersectionpoint (z4 -- z7);
  if do_labels: dotlabel.lrt(btex $z_{21}$ etex, z21); fi

  x22 = x14;
  y22 = ypart a[0][9];
  if do_labels: dotlabel.bot(btex $z_{22}$ etex, z22); fi

  x23 = x14;
  y23 = ypart a[1][5];
  if do_labels: dotlabel.top(btex $z_{23}$ etex, z23); fi

%% *** (3) Inner stripe, lower horizontal
  
  z24 = coeff_lower_horiz[z22, z23]; %% The coefficient for the mediation operation determines
%% the width of the lower horizontal inside stripe.
%% LDF 2022.01.08.

  if do_labels: dotlabel.urt(btex $z_{24}$ etex, z24); fi

  z25 = z24 rotatedaround (z14, 180);
  if do_labels: dotlabel.urt(btex $z_{25}$ etex, z25); fi

  z26 = whatever[z0, z20];
  y26 = ypart a[0][9];
  if do_labels: dotlabel.rt(btex $z_{26}$ etex, z26); fi

  z27 = whatever[z0, z20];
  y27 = ypart a[1][5];
  if do_labels: dotlabel.rt(btex $z_{27}$ etex, z27); fi

  z28 = whatever[a[0][4], z12];
  y28 = y25;
  if do_labels: dotlabel.lft(btex $z_{28}$ etex, z28); fi

  z29 = whatever[a[0][4], z12];
  y29 = y24;
  if do_labels: dotlabel.lft(btex $z_{29}$ etex, z29); fi

  z30 = whatever[a[0][10], a[1][4]];
  y30 = y25;
  if do_labels: dotlabel.urt(btex $z_{30}$ etex, z30); fi

  z31 = whatever[a[0][10], a[1][4]];
  y31 = y24;
  if do_labels: dotlabel.urt(btex $z_{31}$ etex, z31); fi

  z32 = whatever[z18, z13];
  y32 = y25;
  if do_labels: dotlabel.rt(btex $z_{32}$ etex, z32); fi

  z33 = whatever[z18, z13];
  y33 = y24;
  if do_labels: dotlabel.rt(btex $z_{33}$ etex, z33); fi

  draw z29 -- z33 withcolor dark_grey;
  draw z28 -- z32 withcolor dark_grey;

%% *** (3) Inner stripe, upper horizontal

  x60 = x8;
  y60 = y7;
  if do_labels: dotlabel.top(btex $z_{60}$ etex, z60); fi
  
  x61 = x60;
  y61 = ypart a[1][1];
  if do_labels: dotlabel.urt(btex $z_{61}$ etex, z61); fi

  z62 = coeff_upper_horiz[z61, z60]; %% The coefficient for the mediation operation determines
  if do_labels: dotlabel.urt(btex $z_{62}$ etex, z62); fi

  z63 = whatever[z12, z29];
  y63 = y62;
  if do_labels: dotlabel.lft(btex $z_{63}$ etex, z63); fi

  z64 = whatever[z13, z32];
  y64 = y62;
  if do_labels: dotlabel.rt(btex $z_{64}$ etex, z64); fi

  draw z63 -- z64 withcolor dark_grey;

  z65 = whatever[z12, z29];
  y65 = 2y8 - y62;
  if do_labels: dotlabel.ulft(btex $z_{65}$ etex, z65); fi

  z66 = whatever[z64, z32];
  y66 = y65;
  if do_labels: dotlabel.urt(btex $z_{66}$ etex, z66); fi

  draw z65 -- z66 withcolor dark_grey;
  
%% *** (3) Inner stripe, left diagonal
  
  x34 = coeff_left_diag[x0, xpart a[0][5]];  %% The coefficient for the mediation operation determines
%% the width of the left diagonal inside stripe.
%% LDF 2022.01.08.
  y34 = ypart a[0][8];
  if do_labels: dotlabel.rt(btex $z_{34}$ etex, z34); fi

  z35 = (z26 - z0) shifted z34;
  if do_labels: dotlabel.urt(btex $z_{35}$ etex, z35); fi

  z36 = (z20 - z26) shifted z34;
  if do_labels: dotlabel.lft(btex $z_{36}$ etex, z36); fi

  z37 = 2.5[z36, z34];
      %if do_labels: dotlabel.lft(btex $z_{37}$ etex, z37); fi

  z38 = whatever[z37, z36];
  y38 = ypart z3 + .5cm;

      %if do_labels: dotlabel.lft(btex $z_{38}$ etex, z38); fi
  
  z39 = r[65][0] intersectionpoint (z34 -- z37);
  if do_labels: dotlabel.urt(" ", z39); fi
  if do_labels: label.urt(btex $z_{39}$ etex, z39 shifted (-.25cm, 0)); fi
  
  z40 = r[65][0] intersectionpoint (z35 -- z38);
  if do_labels: dotlabel.ulft(btex $z_{40}$ etex, z40); fi

  draw z39 -- z40 withcolor dark_grey;
  
  q0 = (z39 -- z40) shifted (2(x0 - x39), 0);
  if do_labels: dotlabel.rt(btex $q_0$ etex, point .5 of q0); fi
  
  draw q0 withcolor dark_grey;


%% *** (3) Inner stripe, right diagonal   

  z50 = whatever[z30, z31];
  y50 = y21;

  if do_labels: dotlabel.ulft(btex $z_{50}$ etex, z50); fi

  z51 = coeff_right_diag[z50, z18];
  if do_labels: dotlabel.top(btex $z_{51}$ etex, z51); fi

  z52 = z51 rotatedaround (z21, 180);
  if do_labels: dotlabel.top(btex $z_{52}$ etex, z52); fi

  z53 = (z7 - z21) shifted z51;
  if do_labels: dotlabel.bot(btex $z_{53}$ etex, z53); fi

  z54 = z53 rotatedaround (z7, 180);
  if do_labels: dotlabel.bot(btex $z_{54}$ etex, z54); fi

  z55 = whatever[z53, z51];
  y55 = y4;
  if do_labels: dotlabel.bot(btex $z_{55}$ etex, z55); fi
  
  draw z53 -- z55 withcolor dark_grey;

  q1 = (z53 -- z55) shifted (z54 - z53);

  draw q1 withcolor dark_grey;

  if do_labels: dotlabel.rt(btex $q_1$ etex, point .5 of q1); fi

  
%% ** (2) Straighten out rounded corners (optionally)

  z41 = whatever[z28, z12];  %% Left diagonal, left side
  y41 = y0;
  if do_labels: dotlabel.bot(btex $z_{41}$ etex, z41); fi
  
  if not do_rounded_corners:
    draw a[0][4] -- z41 -- a[0][6];
  fi

  z42 = whatever[a[0][8], a[0][9]];  %% Left diagonal, right side
  y42 = y41;
  if do_labels: dotlabel.rt(btex $z_{42}$ etex, z42); fi
  
  if not do_rounded_corners:
    draw a[0][8] -- z42 -- a[0][7];
  fi

  z43 = whatever[a[0][10], a[0][11]];  %% Right diagonal, left side
  y43 = y41;
  if do_labels: dotlabel.lft(btex $z_{43}$ etex, z43); fi
  
  if not do_rounded_corners:
    draw a[0][11] -- z43 -- a[0][12];
  fi

  z44 = whatever[z13, z33];  %% Right diagonal, right side
  y44 = y41;
  if do_labels: dotlabel.rt(btex $z_{44}$ etex, z44); fi
  
  if not do_rounded_corners:
    draw a[0][14] -- z44 -- a[0][13];
  fi

%% *** (3) Top left
  
  z45 = whatever[z12, z29]; 
  y45 = y7;
  if do_labels: dotlabel.ulft(btex $z_{45}$ etex, z45); fi
  
  if not do_rounded_corners:
    draw a[0][3] -- z45 -- a[0][2];
  fi

%% *** (3) Top right
  
  z46 = whatever[z13, z33]; 
  y46 = y7;
  if do_labels: dotlabel.ulft(btex $z_{46}$ etex, z46); fi
  
  if not do_rounded_corners:
    draw a[0][0] -- z46 -- z7;
  fi

%currentpicture := currentpicture reflectedabout((0, -1), (0, 1));
  
endfig;

%% * (1) Q

do_labels := true; % false

outline (81, 81, "cmssbx10", 1, big_pen, do_black, do_labels); %% Q 

beginfig(1);
  path q[];

  pickup medium_pen;
  Q.dx = Q.dy = 0cm;
  boxit.Q(v[81]);
  drawboxed(Q);
endfig;

%% * (1)

end;

%% * (1)

%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% eval:(outline-minor-mode t)
%% outline-regexp:"%% *\\*+\\|@\\*[0-9]*"
%% End:
