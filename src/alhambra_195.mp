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

path p[];

transform t[];

pair d[];

%% * (1)

numeric side_length;
side_length = 3cm; 

beginfig(0);

%% ** (2)

  pickup medium_pen;

  undraw frame;

  
  
  p0 = (unitsquare scaled side_length shifted (-.5side_length, -.5side_length)) rotated 15;

  j = -1;
  for i = 0 upto 2:
    if i > 0:
      p[i] = p0 rotated 30i;
    fi;
    draw p[i] withcolor gray;
    for k = 0 upto 3:
      d[incr j] = point k of p[i];
    endfor;
  endfor;

  draw p1 withcolor red;
  draw p2 withcolor blue;
  
  d12 = (d0 -- d1) intersectionpoint (d7 -- d4);


  d13 = (d4 -- d5) intersectionpoint (d8 -- d11);


  d14 = (d0 -- d1) intersectionpoint (d8 -- d9);


  d15 = (d4 -- d5) intersectionpoint (d1 -- d2);


  d16 = (d5 -- d6) intersectionpoint (d8 -- d9);


  d17 = (d1 -- d2) intersectionpoint (d9 -- d10);


  d18 = (d6 -- d5) intersectionpoint (d2 -- d3);


  d19 = (d9 -- d10) intersectionpoint (d6 -- d7);


  d20 = (d11 -- d10) intersectionpoint (d2 -- d3);


  d21 = (d6 -- d7) intersectionpoint (d0 -- d3);


  d22 = (d4 -- d7) intersectionpoint (d10 -- d11);


  d23 = (d0 -- d3) intersectionpoint (d8 -- d11);

  
  p3 = d0 -- d12 -- d4 -- d13 -- d8 -- d14 -- d1 -- d15 -- d5 -- d16
          -- d9 -- d17 -- d2 -- d18 -- d6 -- d19 -- d10 -- d20 -- d3 -- d21 -- d7 -- d22
          -- d11 -- d23 -- cycle;

  unfill p3;
  draw p3;

%% ** (2)

  d24 = whatever[d18, d6];
  d24 = whatever[d20, d10];

  draw d6 -- d24 -- d10 -- d19 -- cycle;

  
  % draw p1 withcolor red;
  % draw p2 withcolor blue;
  % draw p3 withcolor green;


  % d24 = whatever[d0, d1];
  % %d24 = whatever[]
  
%% ** (2) Labels
  
  if do_labels:
    %dotlabel.bot("origin", origin);
    label.bot(btex $d_0$ etex, d0) withcolor gray;
    label.rt(btex $d_1$ etex, d1) withcolor gray;
    label.top(btex $d_2$ etex, d2) withcolor gray;
    label.lft(btex $d_3$ etex, d3) withcolor gray;

    label.bot(btex $d_4$ etex, d4) withcolor red;
    label.rt(btex $d_5$ etex, d5) withcolor red;
    label.top(btex $d_6$ etex, d6) withcolor red;
    label.lft(btex $d_7$ etex, d7) withcolor red;

    label.rt(btex $d_8$ etex, d8) withcolor blue;
    label.rt(btex $d_9$ etex, d9) withcolor blue;
    label.top(btex $d_{10}$ etex, d10) withcolor blue;
    label.lft(btex $d_{11}$ etex, d11) withcolor blue;

    dotlabel.bot(btex $d_{12}$ etex, d12);
    dotlabel.bot(btex $d_{13}$ etex, d13);
    dotlabel.lrt(btex $d_{14}$ etex, d14);
    dotlabel.rt(btex $d_{15}$ etex, d15);
    dotlabel.rt(btex $d_{16}$ etex, d16);
    dotlabel.urt(btex $d_{17}$ etex, d17);
    dotlabel.top(btex $d_{18}$ etex, d18);
    dotlabel.top(btex $d_{19}$ etex, d19);
    dotlabel.ulft(btex $d_{20}$ etex, d20);
    dotlabel.lft(btex $d_{21}$ etex, d21);
    dotlabel.lft(btex $d_{22}$ etex, d22);
    dotlabel.llft(btex $d_{23}$ etex, d23);

  fi;
    
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
