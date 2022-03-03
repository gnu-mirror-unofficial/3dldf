%% center_finders.mp
%% Created by Laurence D. Finston (LDF) Wed 02 Mar 2022 03:41:36 PM CET

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

prologues := 3;
outputtemplate := "%j_%3c.eps";
input TEX;
verbatimtex \font\largebx=cmbx12 scaled \magstep1 etex;


%% * (1) Global variables

pen medium_pen;
medium_pen = pencircle scaled .5mm;

%% * (1) Macro generate_center_finder

def generate_center_finder (expr ddiam, sside_len, ccut_out_wd, ddo_labels) =
  
  begingroup;

    save p, diameter, side_length, j, k, cut_out_wd;
    
    path p[];

    pickup medium_pen;

    numeric diameter;
    diameter = ddiam * cm;

    numeric side_length;
    side_length = sside_len * cm;

    numeric cut_out_wd;
    cut_out_wd = ccut_out_wd * cm;
    
    p0 = fullcircle scaled diameter;
    
    draw p0;

    draw unitsquare scaled cut_out_wd shifted (-.5cut_out_wd, -.5cut_out_wd);

    draw (-.5diameter, 0) -- (.5diameter, 0);
    draw (0, -.5diameter) -- (0, .5diameter);

    if ddo_labels:
      dotlabel.top("origin", origin);
    fi;
    
    if ddo_labels:
      dotlabel.rt(btex $(12\rm{cm}, 0)$ etex, (.5diameter, 0));
    fi;

    p1 = unitsquare scaled side_length shifted (-.5side_length, -.5side_length);
    draw p1;
    
    numeric j;
    j = 0;
    for i = 0 step .5 until 3.5:
      z[j] = point i of p1;
      j := incr j;
    endfor;
    if ddo_labels:
      label.llft("0", z0);
      label.lrt("1", z1);
      label.lrt("2", z2);
      label.rt("3", z3);
      label.urt("4", z4);
      label.top("5", z5);
      label.ulft("6", z6);
      label.lft("7", z7);
    fi;

    z8 = (z4 -- 4[z5, z4]) intersectionpoint p0;

    if ddo_labels:
      dotlabel.top("8", z8);
    fi;


    
    z9 = z8 reflectedabout ((0, -10), (0, 10));
    z10 = z8 reflectedabout ((-10, 0), (10, 0));
    z11 = z9 reflectedabout ((-10, 0), (10, 0));


    if ddo_labels:
      dotlabel.top("9", z9);
    fi;
    
    if ddo_labels:
      dotlabel.top("10", z10);
    fi;
    
    if ddo_labels:
      dotlabel.top("11", z11);
    fi;

    z12 = (z6 -- 4[z7, z6]) intersectionpoint p0;


    if ddo_labels:
      dotlabel.top("12", z12);
    fi;
    

    z13 = z12 reflectedabout ((0, -10), (0, 10));
    if ddo_labels:
      dotlabel.top("13", z13);
    fi;
    

    z14 = z12 reflectedabout ((-10, 0), (10, 0));
    z15 = z13 reflectedabout ((-10, 0), (10, 0));
    if ddo_labels:
      dotlabel.top("14", z14);
    fi;
    
    if ddo_labels:
      dotlabel.top("15", z15);
    fi;
    

    draw z9 -- z6;
    draw z6 -- z12;
    draw z4 -- z13;
    draw z4 -- z8;
    draw z11 -- z0;
    draw z14 -- z0;
    draw z2 -- z15;
    draw z2 -- z10;

    for i = 0 upto 7:
      draw unitsquare scaled cut_out_wd shifted (z[i] shifted (-.5cut_out_wd, -.5cut_out_wd));
    endfor;

    z16 = .5[origin, z3] shifted (0, .25cm);

    TEXPRE("\font\largebx=cmbx12");
    
    label.top(TEX("{\largebx " & decimal ddiam & "cm}"), z16);

    z17 = z16 shifted (0, 1cm);
    
    draw fullcircle scaled .625cm shifted z17;
    draw z17 -- (z17 shifted (.55cm, 0) rotatedaround (z17, 45));
    draw z17 -- (z17 shifted (.55cm, 0) rotatedaround (z17, 225));

    drawdot origin withpen pencircle scaled 3mm;
    undrawdot origin withpen pencircle scaled 1.5mm;
    drawdot origin withpen pencircle scaled .5mm;

    %draw (-17cm, -13cm) -- (17cm, -13cm);

    numeric k[];

    k0 = diameter + 2cm;
    k1 = diameter + 4cm;
        
    draw unitsquare scaled k0 shifted (-.5k0, -.5k0);
    draw unitsquare scaled k1 shifted (-.5k1, -.5k1);

    z[18] = point 0 of (unitsquare scaled k0 shifted (-.5k0, -.5k0));

    if ddo_labels:
      label(btex {\largebx 18} etex, z[18]);
    fi;

    for i = 0 upto 3:
      draw (z18 shifted (-1cm, 0) -- z18 -- z18 shifted (0, -1cm)) rotated 90i;
    endfor;

  endgroup;
    
enddef;


%% * (1)

tracingonline := 1;

beginfig(0); %% 24cm

%% ** (2)

  generate_center_finder (24, 14, 1, true);

endfig;

%% ** (2) 18cm

beginfig(1);  

  generate_center_finder (18, 10, 1, true);

  %show p0;

  
endfig;

%% ** (2) 10cm

beginfig(2); 

  generate_center_finder (10, 6, .75, true);

  %show p0;
  
endfig;




%% * (1) End

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
