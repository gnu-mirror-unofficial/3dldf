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
    Q1 = subpath (0, begin_val  + 1) of Q0;
  fi;
  
  Q2 = subpath(begin_val, end_val + 1) of Q0;

  if end_val < (n - 1):
    if cycle Q0:
      Q3 = subpath(end_val, n+2) of Q0;
    else:
      Q3 = subpath(end_val, n+1) of Q0;
    fi
  fi
  
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

  if known Q5:
    write_path(Q5, output_filename, false);
  fi

  if known Q1:
    write_path(Q1, output_filename, false);
  fi

  if known Q3:
    write_path(Q3, output_filename, false);
  fi

  write "END" to output_filename;
  
endfig;
end;
