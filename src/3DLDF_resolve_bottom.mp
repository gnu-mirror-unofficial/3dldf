%% 3DLDF_resolve_bottom.mp
%% Created by Laurence D. Finston (LDF) Thu 21 Apr 2022 06:01:36 PM CEST

beginfig(1);
  
  k = (end_val - begin_val) / res_val;

  n = length Q0 - 1;
  
  if extern:
    for i = 0 upto n:
      z[i] = point i of Q0;
    endfor;

    draw Q0;

    dotlabel.rt(btex $z_0$ etex, z0) withcolor blue;
    dotlabel.rt(btex $z_1$ etex, z1) withcolor blue;
    dotlabel.bot(btex $z_2$ etex, z2) withcolor blue;
    dotlabel.lrt(btex $z_3$ etex, z3) withcolor blue;
    dotlabel.rt(btex $z_4$ etex, z4) withcolor blue;
    dotlabel.urt(btex $z_5$ etex, z5) withcolor blue;
    dotlabel.top(btex $z_6$ etex, z6) withcolor blue;
    dotlabel.ulft(btex $z_7$ etex, z7) withcolor blue;

    message "Q0:";
    show Q0;
    message "length Q0:";
    show length Q0;
    message "n:";
    show n;
  fi

  for i = 0 upto n:
    p[0][i] = point i of Q0;
    if extern:
      dotlabel.top(TEX("$p_0^{" & decimal i & "}$"), p[0][i]);
    fi
  endfor;

  if begin_val > 0:
    Q1 = subpath (0, begin_val) of Q0;
  fi;
  
  Q2 = subpath(begin_val, end_val) of Q0;

  if end_val < n - 1:
    Q3 = subpath(end_val, n) of Q0;
  fi;

  if extern:
    message "Q1:";
    show Q1;

    message "Q2:";
    show Q2;
    
    message "Q3:";
    show Q3;
  fi

  i = begin_val;
  
  for j = 0 step 1 until res_val + 1:
    if extern:
      message "i:";
      show i;
      message "j:";
      show j;
    fi
    r[j] = point i of Q0;
    if i = begin_val:
      Q5 = r[j];
    else:
      Q5 := Q5 .. r[j];
    fi;
    if extern:
      dotlabel.top(decimal j, r[j]);
    fi
    i := i + k;
  endfor;
  
  if unknown Q5:
    message "ERROR! Q5 is unknown.  Ending.";
    scantokens "fi;endfig;end;";
  fi

  if known Q1:
    if extern:
      message "Q1 is known.";
    fi
    Q4 = Q1;
    if known Q5:
      if extern:
	message "Q5 is known.";
      fi
      Q4 := Q4 .. Q5;
      if known Q3:
	if extern:
	  message "Q3 is known.";
	fi
	Q4 := Q4 .. Q3;
      fi;
    fi;
  elseif known Q5:
    if extern:
      message "Q5 is known.";
      message "Q1 is unknown.";
    fi
    Q4 = Q5;
    if known Q3:
      if extern:
	message "Q3 is known.";
      fi
      Q4 := Q4 .. Q3;
    fi;
  elseif known Q3:
    if extern:
      message "Q1 and Q5 are unknown.";
      message "Q3 is known.";
    fi
    Q4 = Q3;
  elseif extern:
    message "Q1, Q5 and Q3 are all unknown.";
  fi;

  if extern:
    if known Q4:
      message "Q4 is known.";
    else:
      message "Q4 is unknown.";
    fi
  fi

  if known Q1 and extern:
    draw Q1 shifted (1cm, 0) withcolor blue;
  fi

  if known Q5 and extern:
    %draw Q5 withcolor red withpen big_pen;
    draw Q5 withpen small_pen;
  fi

  if known Q3 and extern:
    draw Q3 shifted (0, -1cm) withcolor green;
  fi;

  if known Q5:
    write_path(Q5, output_filename, false);
  fi

  % if known Q4:
  %   write_path(Q4, output_filename, false);
  % fi

  % if known Q1:
  %   write_path(Q1, output_filename, false);
  % fi

  % if known Q3:
  %   write_path(Q3, output_filename, false);
  % fi

  write "END" to output_filename;
  
endfig;
end;
