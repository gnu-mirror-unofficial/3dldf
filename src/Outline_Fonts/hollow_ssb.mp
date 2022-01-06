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

pickup medium_pen;

path r[][];

pair p[][][];

string S;
S = "";

%bboxmargin := 0;

boolean do_black;

boolean do_labels;
do_labels = true; % false;

do_black = false; % true;

input TEX.mp;
input boxes.mp;

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

outline (65, 65, "cmssbx10", .45, big_pen, do_black, do_labels); %% A  

beginfig(0);
  pickup medium_pen;
  A.dx = A.dy = .5cm;
  boxit.A(v[65]);

  drawboxed(A);
  
  z0 = .5[a[0][6], a[0][7]];
  dotlabel.bot(btex $z_0$ etex, z0);

  z1 = (a[0][3] - a[0][4]) shifted z0;
  dotlabel.rt(btex $z_1$ etex, z1);

  z2 = 1.25[z0, z1];
  %dotlabel.top(btex $z_2$ etex, z2);
  
  
  z3 = (z0 -- z2) intersectionpoint (a[0][2] -- a[0][1]);
  dotlabel.top(btex $z_3$ etex, z3);
  
  draw z0 -- z3 withcolor dark_grey;

  z4 = .5[a[0][12], a[0][13]];
  dotlabel.bot(btex $z_4$ etex, z4);

  z5 = (a[0][10] - a[0][11]) shifted z4;
  dotlabel.rt(btex $z_5$ etex, z5);

  z6 = 7.5[z4, z5];
  
  z7 = (z5 -- z6) intersectionpoint (a[0][2] -- a[0][1]);
  dotlabel.top(btex $z_7$ etex, z7);  

  draw z4 -- z7 withcolor dark_grey;
  
  %currentpicture := currentpicture reflectedabout((0, -1), (0, 1));
  
endfig;

%% * (1)

end;

%% * (1)

%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% outline-minor-mode:t
%% End:
