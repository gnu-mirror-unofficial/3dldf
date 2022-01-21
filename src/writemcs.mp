%%%% writemcs.mp
%%%% Created by Laurence D. Finston (LDF) Fri 21 Jan 2022 07:48:38 AM CET

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
