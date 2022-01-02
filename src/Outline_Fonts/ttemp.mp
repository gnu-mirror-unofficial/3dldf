%% ttemp.mp
%% Created by Laurence D. Finston (LDF) Fri 24 Dec 2021 07:01:37 AM CET

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

input outline_ttemp.mac;

path r[][];

pair p[][][];

string S;
S = "";

%bboxmargin := 0;

boolean do_black;

do_black = true; % false;




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
  dotlabel.bot(btex $a_1^1$ etex, a[1][1]);
  dotlabel.lft(btex $a_1^2$ etex, a[1][2]);
  dotlabel.ulft(btex $a_1^3$ etex, a[1][3]);
  dotlabel.lft(btex $a_1^4$ etex, a[1][4]);
  dotlabel.top(btex $a_1^5$ etex, a[1][5]);
  dotlabel.rt(btex $a_1^6$ etex, a[1][6]);
  % dotlabel.urt(btex $a_1^7$ etex, a[1][7]);
  % dotlabel.rt(btex $a_1^8$ etex, a[1][8]);

  
  
  message "Exiting fig_labels_A";
enddef;

%   %z0 = (((a[1][1] - a[1][0]) scaled 2) rotated 90) shifted a[1][0];

%   z0 = ((a[1][1] - a[1][0]) rotated -90) shifted a[1][1];

%   message "z0:";
%   show z0;
% %  readstring;

%   label(btex origin etex, origin);
%   dotlabel.top(btex $z_0$ etex, z0);
  
  
  % %z1 = (a[1][0] -- z0) intersectionpoint (a[0][4] -- a[0][3]);      
  % z2 = .5[a[1][0], z1];
  % z3 = z2 shifted (a[1][5] - a[1][0]);
  % z4 = 2[a[0][1], a[0][2]];
  % z5 = 2.5[z3, z2];
  % %z6 = (z3 -- z5) intersectionpoint (a[0][1] -- z4);
  % z7 = 3[z2, z3];
  % z8 = 2[a[0][7], a[0][6]];
  % z9 = 2[a[0][6], a[0][7]];
  % z10 = (z8 -- z9) intersectionpoint (z7 -- z3);
  % z11 = .5[z10, z6];
  % z12 = .1825[z10, z11];
  % z13 = z12 rotatedaround (z11, 180);

% 	numeric outer_dimen;
% 	numeric inner_dimen;

% 	outer_dimen = .5;
% 	inner_dimen = .45;
	

% 	z14 = ((a[1][4] - a[1][3]) rotatedaround (a[1][3], 90)) shifted a[1][3];

% 	z15 = (a[1][3] -- z14) intersectionpoint (a[0][0] -- a[0][15]);
% 	z16 = .5[a[1][3], z15];
% 	z17 = z16 shifted (a[0][11]-a[1][3]);
% 	z18 = (xpart a[0][0], ypart z13);
% 	z19 = 1.5[z17, z16];
% 	z20 = (z13 -- z18) intersectionpoint (z16 -- z19);
% 	z21 = (xpart z17, ypart z12);
	
% % fill r[65][0];
% % unfill r[65][1];

% 	if not do_black:
% 	  draw z12 -- z13 withcmykcolor (1, 0, 0, 0)
% 	    withpen pencircle scaled (outer_dimen*length (a[1][0]-z1));
	  
% 	  draw z21 -- .9925[z21, z20] withcmykcolor (1, 0, 0, 0)
% 	    withpen pencircle scaled (outer_dimen*length (a[1][3]-z15));

% 	  draw z20 -- z13 withcmykcolor (1, 0, 0, 0)
% 	    withpen pencircle scaled (outer_dimen*length (a[1][0]-z1));


% 	  undraw z12 -- z13 withpen pencircle scaled (inner_dimen*length (a[1][0]-z1));
% 	  undraw z21 -- .9925[z21, z20] withpen pencircle scaled (inner_dimen*length (a[1][3]-z15));
% 	  undraw z20 -- z13 withpen pencircle scaled (inner_dimen*length (a[1][0]-z1));


% 	  draw z10 -- z6 withgreyscale .5 dashed evenly;      
% 	  draw z20 -- z21 withgreyscale .5 dashed evenly;
% 	fi


% 	  dotlabel.lft(btex $z_{21}$ etex, z21);


	  
%   %dotlabel.top(btex $z_0$ etex, z0);
% 	  dotlabel.lft(btex $z_1$ etex, z1);
% 	  dotlabel.urt(btex $z_2$ etex, z2);
% 	  dotlabel.lrt(btex $z_3$ etex, z3);
% 	  dotlabel.top(btex $z_4$ etex, z4);
%   %dotlabel.lft(btex $z_5$ etex, z5);
%   %dotlabel.ulft(btex $z_6$ etex, z6);
%   % dotlabel.lft(btex $z_5$ etex, z5);

% 	  dotlabel.bot(btex $z_{10}$ etex, z10);
% 	  dotlabel.lft(btex $z_{11}$ etex, z11);
%   %label.rt("Mid-Point", z11);
% 	  dotlabel.rt(btex $z_{12}$ etex, z12);
% 	  dotlabel.rt(btex $z_{13}$ etex, z13);

% 	  dotlabel.rt(btex $z_{15}$ etex, z15);
% 	  dotlabel.top(btex $z_{16}$ etex, z16);
% 	  dotlabel.urt(btex $z_{17}$ etex, z17);
% 	  dotlabel.rt(btex $z_{18}$ etex, z18);
% 	  dotlabel.top(btex $z_{20}$ etex, z20);
% 	fi
	
% fi

%% * (1)

fontmapline "cmr10 CMR10 <cmr10.pfb";
fontmapline "cmssbx10 CMSSBX10 <cmssbx10.pfb";
fontmapline "eurm10 EURM10 <eurm10.pfb";
fontmapline "eurb10 EURB10 <eurb10.pfb";
fontmapline "eufm10 EUFM10 <eufm10.pfb"; %% Euler Fraktur medium
fontmapline "eufb10 EUFB10 <eufb10.pfb"; %% Euler Fraktur bold
fontmapline "cmmi10 CMMI10 <cmmi10.pfb"; 
fontmapline "cmr7 CMR7 <cmr7.pfb"; 

%% * (1) AMS Euler

%% https://en.wikipedia.org/wiki/AMS_Euler
%% eurb10, Euler roman bold 
%% eusb10, Euler script bold
%% eusm10, Euler script medium

%% ** (2) Sans Serif Bold Extended

% outline (65, 65, "cmssbx10", .5, 0, 0, 0, 16cm, 16cm, 0, false, big_pen, false);

% end;

%% ** (2) Euler Roman Bold

do_black := true;

for i = 48 upto 57:  %% Numerals
  outline (i, i, "eurb10", .2125, 0, 0, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);
endfor;

for i = 65 upto 90: %% Uppercase letters
  if (i = ASCII "J") or (i = ASCII "Q"):
    outline (i, i, "eurb10", .2125, 0, 1cm, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);
  else:
    outline (i, i, "eurb10", .2125, 0, 0, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);
  fi
endfor;

for i = 97 upto 122: %% Lowercase letters
  outline (i, i, "eurb10", .2125, 0, 0, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);
endfor;

%% Fit multiple letters onto a figure

outline (65, 165, "eurb10", .2125, -1.25cm, 2cm, 180, 9.5cm, 9.5cm, 0, false, big_pen, do_black); %% A
outline (65, 265, "eurb10", .2125, 1.3cm, -1.5cm, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);  %% A

end;

%% * (1)

% bboxmargin := 0;
% %show bboxmargin;

% path q[];
% picture v[];

% numeric dark_grey;
% dark_grey = .5;
% pen small_pen;
% small_pen = pencircle scaled .25mm;

% pickup small_pen;
% beginfig(1);
  
%   v0 = thelabel(btex {\cmssbx A} etex, origin);
%   q0 = bbox(v0);
%   draw q0 withgreyscale dark_grey dashed evenly;
%   draw v0;
  
% endfig;

% end;

% fontmapline "cmr10 CMR10 <cmr10.pfb";
% picture g;
% g := glyph 103 of "cmr10";


%fontmapfile "=lm-ec.map";
%fontmapline "cmr10 CMR10 <cmr10.pfb";

fontmapline "cmssbx10 CMSSBX10 <cmssbx10.pfb";

numeric fig_ctr;
numeric char_ctr;
picture v[];

fig_ctr = 1;

pen small_pen;
small_pen = pencircle scaled .25mm;

pen medium_pen;
medium_pen = pencircle scaled .5mm;

bboxmargin := 0;
%bboxmargin := .5cm;


%% *** (3) Labels for Fig. 65
      
% if false and (char_ctr = 65):

% % message "point 0 of r[65][1]:";
% % show point 0 of r[65][1];
% % message "precontrol 0 of r[65][1]:";
% % show precontrol 0 of r[65][1];
	
% 	z0 = (((a[1][1] - a[1][0]) scaled 2) rotated 90) shifted a[1][0];
% 	z1 = (a[1][0] -- z0) intersectionpoint (a[0][4] -- a[0][3]);      
% 	z2 = .5[a[1][0], z1];
% 	z3 = z2 shifted (a[1][5] - a[1][0]);
% 	z4 = 2[a[0][1], a[0][2]];
% 	z5 = 2.5[z3, z2];
% 	z6 = (z3 -- z5) intersectionpoint (a[0][1] -- z4);
% 	z7 = 3[z2, z3];
% 	z8 = 2[a[0][7], a[0][6]];
% 	z9 = 2[a[0][6], a[0][7]];
% 	z10 = (z8 -- z9) intersectionpoint (z7 -- z3);
% 	z11 = .5[z10, z6];
% 	z12 = .1825[z10, z11];
% 	z13 = z12 rotatedaround (z11, 180);

% 	numeric outer_dimen;
% 	numeric inner_dimen;

% 	outer_dimen = .5;
% 	inner_dimen = .45;
	

% 	z14 = ((a[1][4] - a[1][3]) rotatedaround (a[1][3], 90)) shifted a[1][3];

% 	z15 = (a[1][3] -- z14) intersectionpoint (a[0][0] -- a[0][15]);
% 	z16 = .5[a[1][3], z15];
% 	z17 = z16 shifted (a[0][11]-a[1][3]);
% 	z18 = (xpart a[0][0], ypart z13);
% 	z19 = 1.5[z17, z16];
% 	z20 = (z13 -- z18) intersectionpoint (z16 -- z19);
% 	z21 = (xpart z17, ypart z12);
	
% % fill r[65][0];
% % unfill r[65][1];

% 	if not do_black:
% 	  draw z12 -- z13 withcmykcolor (1, 0, 0, 0)
% 	    withpen pencircle scaled (outer_dimen*length (a[1][0]-z1));
	  
% 	  draw z21 -- .9925[z21, z20] withcmykcolor (1, 0, 0, 0)
% 	    withpen pencircle scaled (outer_dimen*length (a[1][3]-z15));

% 	  draw z20 -- z13 withcmykcolor (1, 0, 0, 0)
% 	    withpen pencircle scaled (outer_dimen*length (a[1][0]-z1));


% 	  undraw z12 -- z13 withpen pencircle scaled (inner_dimen*length (a[1][0]-z1));
% 	  undraw z21 -- .9925[z21, z20] withpen pencircle scaled (inner_dimen*length (a[1][3]-z15));
% 	  undraw z20 -- z13 withpen pencircle scaled (inner_dimen*length (a[1][0]-z1));


% 	  draw z10 -- z6 withgreyscale .5 dashed evenly;      
% 	  draw z20 -- z21 withgreyscale .5 dashed evenly;
% 	fi

% 	if do_labels:
% 	  dotlabel.lft(btex $z_{21}$ etex, z21);
% 	  dotlabel.rt(btex $a_0^0$ etex, a[0][0]);
% 	  dotlabel.top(btex $a_0^1$ etex, a[0][1]);
% 	  dotlabel.ulft(btex $a_0^2$ etex, a[0][2]);
% 	  dotlabel.lft(btex $a_0^3$ etex, a[0][3]);
% 	  dotlabel.ulft(btex $a_0^4$ etex, a[0][4]);
% 	  dotlabel.llft(btex $a_0^5$ etex, a[0][5]);
% 	  dotlabel.llft(btex $a_0^6$ etex, a[0][6]);
% 	  dotlabel.lrt(btex $a_0^7$ etex, a[0][7]);
% 	  dotlabel.rt(btex $a_0^8$ etex, a[0][8]);
% 	  dotlabel.lrt(btex $a_0^9$ etex, a[0][9]);
% 	  dotlabel.llft(btex $a_0^{10}$ etex, a[0][10]);
% 	  dotlabel.lft(btex $a_0^{11}$ etex, a[0][11]);
% 	  dotlabel.bot(btex $a_0^{12}$ etex, a[0][12]);
% 	  dotlabel.bot(btex $a_0^{13}$ etex, a[0][13]);
% 	  dotlabel.lrt(btex $a_0^{14}$ etex, a[0][14]);
% 	  dotlabel.urt(btex $a_0^{15}$ etex, a[0][15]);

% 	  dotlabel.lft(btex $a_1^0$ etex, a[1][0]);
% 	  dotlabel.top(btex $a_1^1$ etex, a[1][1]);
% 	  dotlabel.rt(btex $a_1^2$ etex, a[1][2]);
% 	  dotlabel.rt(btex $a_1^3$ etex, a[1][3]);
% 	  dotlabel.rt(btex $a_1^4$ etex, a[1][4]);
% 	  dotlabel.lft(btex $a_1^5$ etex, a[1][5]);
	  
%   %dotlabel.top(btex $z_0$ etex, z0);
% 	  dotlabel.lft(btex $z_1$ etex, z1);
% 	  dotlabel.urt(btex $z_2$ etex, z2);
% 	  dotlabel.lrt(btex $z_3$ etex, z3);
% 	  dotlabel.top(btex $z_4$ etex, z4);
%   %dotlabel.lft(btex $z_5$ etex, z5);
%   %dotlabel.ulft(btex $z_6$ etex, z6);
%   % dotlabel.lft(btex $z_5$ etex, z5);

% 	  dotlabel.bot(btex $z_{10}$ etex, z10);
% 	  dotlabel.lft(btex $z_{11}$ etex, z11);
%   %label.rt("Mid-Point", z11);
% 	  dotlabel.rt(btex $z_{12}$ etex, z12);
% 	  dotlabel.rt(btex $z_{13}$ etex, z13);

% 	  dotlabel.rt(btex $z_{15}$ etex, z15);
% 	  dotlabel.top(btex $z_{16}$ etex, z16);
% 	  dotlabel.urt(btex $z_{17}$ etex, z17);
% 	  dotlabel.rt(btex $z_{18}$ etex, z18);
% 	  dotlabel.top(btex $z_{20}$ etex, z20);
% 	fi
	
% fi

% end;
      
%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% outline-minor-mode:t
%% End:
