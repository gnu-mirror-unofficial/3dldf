%% mp_input_test.mp
%% Created by Laurence D. Finston (LDF) Wed 20 Apr 2022 06:05:19 PM CEST

input TEX;
input writemcs.mp;

prologues := 3;
outputtemplate := "%j%3c.eps";

tracingonline := 1;

pair p[];
path Q[];
Q0 = (4cm, 0cm) .. (2.828427cm, 2.828427cm) .. (0cm, 4cm) .. (-2.828427cm, 2.828427cm) .. (-4cm, 0cm) ..
(-2.828427cm, -2.828428cm) .. (0cm, -4cm) .. (2.828428cm, -2.828426cm) .. cycle;

numeric begin_val;
numeric end_val;

begin_val = 2;
end_val   = 5; 

res_val = 6;

numeric n;

n = length Q0 - 1;

message "Q0:";
show Q0;

message "length Q0:";
show length Q0;
  
message "n:";
show n;

beginfig(1);

  numeric j;
  j = 0;

  numeric k;
  k = (end_val - begin_val) / res_val;

  for i = begin_val step k until end_val:
    message "i:";
    show i;
    message "j:";
    show j;
    p[j] = point i of Q0;
    j := incr j;
  endfor;
  
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

  j := decr j;
  
  for i = 0 upto j:
    dotlabel.top(TEX("$p_{" & decimal i & "}$"), p[i]);
  endfor;


  if begin_val > 0:
    Q1 = subpath (0, begin_val) of Q0;
  fi;
  
  Q2 = subpath(begin_val, end_val) of Q0;

  if end_val < n - 1:
    Q3 = subpath(end_val, n) of Q0;
  fi;

  message "Q1:";
  show Q1;

  message "Q2:";
  show Q2;

  message "Q3:";
  show Q3;


  if known Q1:
    message "Q1 is known.";
    Q4 = Q1;
    if known Q2:
      message "Q2 is known.";
      Q4 := Q4 .. Q2;
      if known Q3:
	message "Q3 is known.";
	Q4 := Q4 .. Q3;
      fi;
    fi;
  elseif known Q2:
    message "Q2 is known.";
    message "Q1 is unknown.";
    Q4 = Q2;
    if known Q3:
      message "Q3 is known.";
      Q4 := Q4 .. Q3;
    fi;
  elseif known Q3:
    message "Q1 and Q2 are unknown.";
    message "Q3 is known.";
    Q4 = Q3;
  else:
    message "Q1, Q2 and Q3 are all unknown.";
  fi;

  if known Q4:
    message "Q4 is known.";
  else:
    message "Q4 is unknown.";
  fi;


  if known Q1:
    draw Q1 shifted (1cm, 0) withcolor blue;
  fi;

  if known Q2:
    draw Q2 shifted (-1cm, 0) withcolor red;

  fi;

  if known Q3:
    draw Q3 shifted (0, -1cm) withcolor green;
  fi;
  
  write_path(Q2, "mp_output.txt", false);
  write_path(Q4, "mp_output.txt", false);

  write "END" to "mp_output.txt";

endfig;


end;


%% Local Variables:
%% mode:MetaPost
%% End:
