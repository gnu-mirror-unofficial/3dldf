%% mp_input_test.mp
%% Created by Laurence D. Finston (LDF) Wed 20 Apr 2022 06:05:19 PM CEST

input 3DLDF_resolve_top.mp;

extern = false; % true

if extern:
  tracingonline := 1;
fi

begin_val = 2;
end_val   = 5; 
res_val = 15;

Q0 = (4cm, 0cm) .. (2.828427cm, 2.828427cm) .. (0cm, 4cm) .. (-2.828427cm, 2.828427cm) .. (-4cm, 0cm) ..
(-2.828427cm, -2.828428cm) .. (0cm, -4cm) .. (2.828428cm, -2.828426cm) .. cycle;

input 3DLDF_resolve_bottom.mp;

  
%% Local Variables:
%% mode:MetaPost
%% End:
