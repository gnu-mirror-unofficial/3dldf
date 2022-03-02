%% alhambra_195.mp
%% Created by Laurence D. Finston (LDF) Fri 25 Feb 2022 07:43:25 PM CET

%% * (1) Copyright and License.

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

%%%% Please send bug reports to Laurence.Finston@gmx.de
%%%% The mailing list help-3dldf@gnu.org is available for people to 
%%%% ask other users for help.  
%%%% The mailing list info-3dldf@gnu.org is for sending 
%%%% announcements to users. To subscribe to these mailing lists, send an 
%%%% email with ``subscribe <email-address>'' as the subject.  

%%%% The author can be contacted at: 

%%%% Laurence D. Finston 
%%%% c/o Free Software Foundation, Inc. 
%%%% 51 Franklin St, Fifth Floor 
%%%% Boston, MA  02110-1301  
%%%% USA

%%%% Laurence.Finston@gmx.de


%% * (1) Top

input TEX.mp;

verbatimtex \font\huge=cmr17 scaled 8000 etex;
prologues := 3;
outputtemplate := "%j_%3c.eps";

pen medium_pen;
medium_pen := pencircle scaled .25mm;

path frame;

numeric frame_wd;
numeric frame_ht;

frame_wd = 8cm;
frame_ht = 6cm;

frame =    (-.5frame_wd, -.5frame_ht) -- (.5frame_wd, -.5frame_ht) -- (.5frame_wd, .5frame_ht)
        -- (-.5frame_wd, .5frame_ht) -- cycle;

numeric gray;
gray = .5;

boolean do_gray;

do_gray = true; % false

boolean do_labels;

do_labels = true; % false

picture v[];

cmykcolor magenta;
magenta = (0, 1, 0, 0);

cmykcolor orange;
orange = (0, .5, 1, 0);

cmykcolor dark_blue;
dark_blue = (1, 1, 0.5, 0);

pair d[];
path p[];
transform t[];

%% * (1)

numeric radius;
radius = 2cm; 


beginfig(0);

%% ** (2)

  pickup medium_pen;

  undraw frame;

  d0 = (0, radius);

  for i = 1 upto 11:
    d[i] = d0 rotated 30i;
  endfor;

  p100 = d0 .. d1 .. d2 .. d3 .. d4 .. d5 .. d6 .. d7 .. d8 .. d9 .. d10 .. d11 .. cycle;

  draw p100 withcolor gray;

  p0 = d4 -- d8 -- d0 -- cycle;

  draw p0 withcolor gray;

  for i = 1 upto 3:
    p[i] = p0 rotated 30i;
    draw p[i] withcolor gray;
  endfor;

  d20 = whatever[d8, d0];
  d20 = whatever[d5, d1];
  
  draw d0 -- d20 withcolor gray;
  draw d1 -- d20 withcolor gray;
  
  for i = 1 upto 11:
    d[i+20] = d[20] rotated 30i;
    draw d[i] -- d[i+20] withcolor gray;
    if i = 11:
      draw d0 -- d[i+20] withcolor gray;
    else:
      draw d[i+1] -- d[i+20] withcolor gray;
    fi;
  endfor;

%% ** (2)

%   t0 = identity shifted (0, -6(xpart d26 - xpart d25));


%   d39 = origin transformed t0;
%   dotlabel.top(btex $d_{39}$ etex, d39);


%   d38 = (d39 shifted (-10cm, 0)) rotatedaround(d39, -45);
%   d40 = whatever[d39, d38];

%   xpart d40 = xpart d25;
  
%   label(btex $d_{40}$ etex, d40);

  
%   for i = 1 upto 7:
%     d[40+i] = d40 rotatedaround (d39, 45i);
%   endfor;
  
%   label(btex $d_{41}$ etex, d41);
%   label(btex $d_{42}$ etex, d42);
%   label(btex $d_{43}$ etex, d43);
%   label(btex $d_{44}$ etex, d44);
%   label(btex $d_{45}$ etex, d45);
%   label(btex $d_{46}$ etex, d46);
%   label(btex $d_{47}$ etex, d47);
  
%   draw d43 -- d41 withcolor gray;
%   draw d45 -- d47 withcolor gray;
%   draw d41 -- d47 withcolor gray;
%   draw d43 -- d45 withcolor gray;
%   draw d42 -- d44 withcolor gray;
%   draw d40 -- d46 withcolor gray;
%   draw d42 -- d40 withcolor gray;
%   draw d44 -- d46 withcolor gray;

  
%   d50 = whatever[d46, d40];
%   d50 = whatever[d43, d41];

%   p50 = d41 -- d50 -- d40 -- cycle;
  
%   draw p50 withcolor gray;

%   for i = 1 upto 7:
%     d[50+i] = d50 rotatedaround (d39, 45i);
%     p[50+i] = p50 rotatedaround (d39, 45i);
%     draw p[50+i] withcolor gray;
%   endfor;
  
%   label.lft(btex $d_{50}$ etex, d50);
%   label.bot(btex $d_{51}$ etex, d51);
%   label.bot(btex $d_{52}$ etex, d52);
%   label.rt(btex $d_{53}$ etex, d53);
%   label.rt(btex $d_{54}$ etex, d54);
%   label.top(btex $d_{55}$ etex, d55);
%   label.top(btex $d_{56}$ etex, d56);
%   label.lft(btex $d_{57}$ etex, d57);
  
% %% ** (2)

%   d60 = whatever[d6, d26];
%   y60 =

%   label.rt(btex $d_{60}$ etex, d60);

%   draw d26 -- d60 -- d55;
%   draw d56 -- d26;
%   draw d55 -- d26 withcolor gray;

%   draw d25 -- d57;

%   % d61 = d60 reflectedabout (origin, d39);
%   % label.lft(btex $d_{61}$ etex, d61);

%   % draw d50 -- d61 -- d25;
 
%% ** (2) Labels
  
  if do_labels:
    %dotlabel.bot("origin", origin);
    label.top(btex $d_0$ etex, d0);
    label.lft(btex $d_1$ etex, d1);
    label.lft(btex $d_2$ etex, d2);


    label(btex $p_0$ etex, d0 shifted (0, .5cm));
    label(btex $p_1$ etex, d[1] shifted (-.25cm, .25cm));
    
    
    label.lft(btex $d_3$ etex, d3);

    label.lft(btex $d_4$ etex, d4);
    label.llft(btex $d_5$ etex, d5) ;
    label.bot(btex $d_6$ etex, d6);
    label.lrt(btex $d_7$ etex, d7);

    label.rt(btex $d_8$ etex, d8);
    label.rt(btex $d_9$ etex, d9);
    label.rt(btex $d_{10}$ etex, d10);
    label.urt(btex $d_{11}$ etex, d11);

    label.top(btex $d_{20}$ etex, d20);
    label.top(btex $d_{21}$ etex, d21);
    label.lft(btex $d_{22}$ etex, d22);
    label.lft(btex $d_{23}$ etex, d23);
    label.lft(btex $d_{24}$ etex, d24);
    label.llft(btex $d_{25}$ etex, d25);
    label.bot(btex $d_{26}$ etex, d26);
    label.lrt(btex $d_{27}$ etex, d27);
    label.rt(btex $d_{28}$ etex, d28);
    label.rt(btex $d_{29}$ etex, d29);
    label.urt(btex $d_{30}$ etex, d30);
    label.top(btex $d_{31}$ etex, d31);
  fi;
    
%% ** (2)

  numeric distance;
  distance = 12cm;

  for i = 0 upto 11:
    d[32+i] = d[i] shifted (0, -distance);
    d[44+i] = d[20+i] shifted (0, -distance);
  endfor;

  draw d32 -- d36 -- d40 -- cycle;

  draw d38 -- d34 -- d42 -- cycle;

  label.top(btex $d_{32}$ etex, d32);
  label.lft(btex $d_{36}$ etex, d36);
  label.rt(btex $d_{40}$ etex, d40);
  
  
  label.bot(btex $d_{38}$ etex, d38);
  label.lft(btex $d_{34}$ etex, d34);
  label.rt(btex $d_{42}$ etex, d42);

  label.lft(btex $d_{55}$ etex, d55);
  label.rt(btex $d_{44}$ etex, d44);

  draw d44 -- d25 withcolor gray;
  draw d55 -- d26 withcolor gray;

  d56 = .5[d25, d44];
  d57 = .5[d26, d55];

  label.lft(btex $d_{56}$ etex, d56);
  label.rt(btex $d_{57}$ etex, d57);

  
  
%% ** (2) End of Fig. 0
  
endfig;

%% * (1)

end;


%% ** (2) 

%% * (1) Emacs-Lisp code for use in indirect buffers when using the          
%%       GNU Emacs editor.  The local variable list is not evaluated when an 
%%       indirect buffer is visited, so it's necessary to evaluate the       
%%       following s-expression in order to use the facilities normally      
%%       accessed via the local variables list.                              
%%       LDF 2004.02.12.

%% (progn (metafont-mode) (outline-minor-mode t) (setq fill-column 80) (ignore '(  
%% )) (setq outline-regexp "%% [*\f]+"))

%% * (1) Local variables for Emacs.

%% Local Variables:
%% mode:Metapost
%% eval:(outline-minor-mode t)
%% eval:(read-abbrev-file abbrev-file-name)
%% outline-regexp:"%% [*\f]+"
%% End:
