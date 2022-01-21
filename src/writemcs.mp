%%%% writemcs.mp
%%%% Created by Laurence D. Finston (LDF) Fri 21 Jan 2022 07:48:38 AM CET

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



tracingonline := 1;

def write_path (expr ppath, filename, do_show) =

  begingroup;
    save s;

    if do_show:
      message "Entering write_path.";
    fi
    
    string s;

    if do_show:
      message "ppath:";
      show ppath;
      message "filename:";
      show filename;
      message "point 0 of ppath:";
      show point 0 of ppath;
      message "postcontrol 0 of ppath:";
      show postcontrol 0 of ppath;
    fi

    s =   "(" & decimal (xpart (point 0 of ppath)) & ", " &  decimal (ypart (point 0 of ppath)) & ") .. "
        & "controls (" & decimal (xpart (postcontrol 0 of ppath)) & ", " & decimal (ypart (postcontrol 0 of ppath)) & ") ";

    write s to filename;

    for i = 1 upto length ppath:

      if do_show:
	message "precontrol " & decimal i & " of ppath:";
	show precontrol i of ppath;
      fi
      s := "and (" & decimal (xpart (precontrol i of ppath)) & ", " & decimal (ypart (precontrol i of ppath)) & ") "
	if i < length ppath: & ".. " fi ;
      
      write s to filename;
      
      if i < length ppath:
	if do_show:
	  message "point " & decimal i & " of ppath:";
	  show point i of ppath;
	  message "postcontrol " & decimal i & " of ppath:";
	  show postcontrol i of ppath;
	fi

	s :=   "(" & decimal (xpart (point i of ppath)) & ", " & decimal (ypart (point i of ppath)) & ") .. "
	  & "controls (" & decimal (xpart (postcontrol i of ppath)) & ", " & decimal (ypart (postcontrol i of ppath)) & ") ";

	write s to filename;
	
      fi

    endfor;

    if cycle ppath:
      if do_show:
	message ".. cycle";
      fi
      s := ".. cycle;";  
    else:
      if do_show:
	message ";";
      fi
      s := ";";  
    fi

    write s to filename;

    if do_show:
      message "Exiting write_path.";
    fi

  endgroup;
    
enddef;

path q;

q = origin .. controls (32.12345678910111213, 31.098765) .. (1cm, 1cm) .. (2cm, 2cm) .. (1cm, 2cm) .. (0cm, 2cm) .. cycle;

string s;

s := "ttemp.out";

%write_path(q, s, true);
write_path(q, s, false);

end;

endinput;

%% Local Variables:
%% mode:MetaPost
%% End:
