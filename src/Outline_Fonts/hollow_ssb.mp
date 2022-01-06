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

path q[];
picture v[];

numeric dark_grey;
dark_grey = .5;
pen small_pen;
pen medium_pen;
pen big_pen;

small_pen = pencircle scaled .25mm;

medium_pen = pencircle scaled .5mm;

big_pen = pencircle scaled 1mm;

pickup medium_pen;

picture w[];

boolean do_labels;
do_labels = true; % false;

path r[][];

pair p[][][];

string S;
S = "";

%bboxmargin := 0;

boolean do_black;

do_black = false; % true;

input outline_hollow_ssb.mac;

%% * (1)

def fig_labels_A =
%% ** (2)
  message "Entering fig_labels_A";

  dotlabel.rt(btex $a_0^0$ etex, a[0][0]);
  dotlabel.lft(btex $a_0^1$ etex, a[0][1]);
  dotlabel.rt(btex $a_0^2$ etex, a[0][2]);
  dotlabel.lft(btex $a_0^3$ etex, a[0][3]);
  dotlabel.ulft(btex $a_0^4$ etex, a[0][4]);
  dotlabel.llft(btex $a_0^5$ etex, a[0][5]);
  dotlabel.llft(btex $a_0^6$ etex, a[0][6]);
  dotlabel.lrt(btex $a_0^7$ etex, a[0][7]);
  dotlabel.rt(btex $a_0^8$ etex, a[0][8]);
  dotlabel.lrt(btex $a_0^9$ etex, a[0][9]);
  dotlabel.llft(btex $a_0^{10}$ etex, a[0][10]);
  dotlabel.lft(btex $a_0^{11}$ etex, a[0][11]);
  dotlabel.urt(btex $a_0^{12}$ etex, a[0][12]);
  dotlabel.llft(btex $a_0^{13}$ etex, a[0][13]);
  dotlabel.rt(btex $a_0^{14}$ etex, a[0][14]);
  % dotlabel.ulft(btex $a_0^{15}$ etex, a[0][15]);
  % dotlabel.llft(btex $a_0^{16}$ etex, a[0][16]);

  dotlabel.lft(btex $a_1^0$ etex, a[1][0]);
  dotlabel.lft(btex $a_1^1$ etex, a[1][1]);
  dotlabel.rt(btex $a_1^2$ etex, a[1][2]);
  dotlabel.rt(btex $a_1^3$ etex, a[1][3]);
  dotlabel.ulft(btex $a_1^4$ etex, a[1][4]);
  dotlabel.urt(btex $a_1^5$ etex, a[1][5]);
  dotlabel.rt(btex $a_1^6$ etex, a[1][6]);
  % dotlabel.urt(btex $a_1^7$ etex, a[1][7]);
  % dotlabel.rt(btex $a_1^8$ etex, a[1][8]);

  
  
  message "Exiting fig_labels_A";
enddef;

      
%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% outline-minor-mode:t
%% End:
