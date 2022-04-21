%% mp_input_test.mp
%% Created by Laurence D. Finston (LDF) Wed 20 Apr 2022 06:05:19 PM CEST

bool extern;
extern = true; % false

string output_filename;
output_filename = "mp_output_test.txt";

if extern:
  prologues := 3;
  outputtemplate := "%j%3c.eps";
  input TEX;
fi

input writemcs.mp;

numeric begin_val;
numeric end_val;
numeric res_val;
numeric j;
numeric k;
numeric n;

begin_val = 2;
end_val   = 5; 
res_val = 6;


if extern:
  tracingonline := 1;
fi

pair p[];

path Q[];
Q0 = (4cm, 0cm) .. (2.828427cm, 2.828427cm) .. (0cm, 4cm) .. (-2.828427cm, 2.828427cm) .. (-4cm, 0cm) ..
(-2.828427cm, -2.828428cm) .. (0cm, -4cm) .. (2.828428cm, -2.828426cm) .. cycle;



beginfig(1);


  k = (end_val - begin_val) / res_val;

  if extern:
    for i = 0 upto n:
      z[i] = point i of Q0;
    endfor;

    draw Q0;

    dotlabel.rt(btex $z_0$ etex, z0) withcolor red;
    dotlabel.rt(btex $z_1$ etex, z1) withcolor red;
    dotlabel.bot(btex $z_2$ etex, z2) withcolor red;
    dotlabel.lrt(btex $z_3$ etex, z3) withcolor red;
    dotlabel.rt(btex $z_4$ etex, z4) withcolor red;
    dotlabel.urt(btex $z_5$ etex, z5) withcolor red;
    dotlabel.top(btex $z_6$ etex, z6) withcolor red;
    dotlabel.ulft(btex $z_7$ etex, z7) withcolor red;
  fi

  n = length Q0 - 1;

  if extern:
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

  
  write_path(Q2, output_filename, false);

  point r[];

  for i = begin_val step k until end_val:
    if extern:
      message "i:";
      show i;
      message "j:";
      show j;
    fi
    r[j] = point i of Q0;
    if i = begin_val:
      Q5 = p[j];
    else:
      Q5 := Q5 .. p[j];
    fi;
    j := incr j;
  endfor;


  if unknown Q5:
    message "ERRO! Q5 is unknown.  Ending.";
    endfig;
    end;
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
  elseif extern::
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
    draw Q5 shifted (-1cm, 0) withcolor red;

  fi

  if known Q3 and extern:
    draw Q3 shifted (0, -1cm) withcolor green;
  fi;



  write_path(Q5, output_filename, false);


  write "END" to output_filename;

%endfig;


end;


%% Local Variables:
%% mode:MetaPost
%% End:
