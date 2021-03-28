@q pfgopcmd.w @> 
@q Created by Laurence Finston Do Okt 28 23:36:29 CEST 2004 @>
     

@q *** (3) command --> BEGINFIG LEFT_PARENTHESIS @>
@q *** (3) numeric_expression RIGHT_PARENTHESIS. @> 

@*2 \§command> $\longrightarrow$ 
\.{BEGINFIG} \.{LEFT\_PARENTHESIS}' \§numeric expression> 
\.{RIGHT\_PARENTHESIS}.

\LOG
\initials{LDF 2004.06.19.}  
Added this rule.

\initials{LDF 2004.06.21.}
This rule now causes output to be written to the MetaPost output file. 

\initials{LDF 2004.07.09.}
Added |Thread_Info_Type* t| and |pthread_t tid| for use in debugging output.

\initials{LDF 2004.07.16.}
Rewrote this rule.  It now calls |beginfig_func()|.

\initials{LDF 2004.11.12.}
Changed \.{INTEGER} to \§numeric expression>.  This will make it
possible to use |beginfig| in loops.
\ENDLOG 

@q ***** (5) Definition.@> 
@ 
@<Define rules@>= 
  
@=command: BEGINFIG LEFT_PARENTHESIS numeric_expression@>@/
@= RIGHT_PARENTHESIS@>@/
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   int i = static_cast<int>(floor(fabs(@=$3@>) + .5)); 

   Scan_Parse::beginfig_func(scanner_node, i);

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> ENDFIG with_clause_output_list.@>
@*3 \§command> $\longrightarrow$ 
\.{ENDFIG} \§with clause output list>.

\LOG
\initials{LDF 2004.06.19.}  
Added this rule.

\initials{LDF 2004.06.21.}
Added the |with_focus_optional| and |with_projection_optional| symbols to the
right-hand side.  This rule now works.  It does not yet use a separate thread
for outputting |current_picture|, though.

\initials{LDF 2004.04.22.}
Removed most of the code for this rule to the function 
|Scan_Parse::endfig_func()|, which is defined in 
\filename{scanprse.web}.

\initials{LDF 2004.04.22.}
Changed the way |endfig_func()| is called to reflect 
changes I've made to it in preparation for using it as the 
start routine of a new thread.

\initials{LDF 2004.06.23.}
Now calling |pthread_create()| with |Scan_Parse::endfig_func()| as the thread's
start routine to output |current_picture|.

\initials{LDF 2004.06.23.}
Rewrote this rule and moved some code back from the function 
|Scan_Parse::endfig_func()| in \filename{scanprse.web}.
I did this in order to be able to lock and unlock the |mutexes| 
and handle |current_picture| properly.

\initials{LDF 2004.06.23.}
Removed |int* return_value|.  
Now using |*(arg.return_value)| instead.  The memory allocated for
|arg.return_value| is recovered in the |Picture_Output_Arg_Type| 
destructor.  |*(arg.return_value)| is only used when multithreading is 
{\it not\/} used.

\initials{LDF 2004.06.29.}
Rewrote this rule.  It now handles all of the arguments 
to |Picture::output()|.

\initials{LDF 2004.06.29.}
Now using |@<Common declarations for |output| and |endfig| rules@>|.

\initials{LDF 2004.06.29.}
Put common code for this rule and |output_command| rule into sections.

\initials{LDF 2004.07.15.}
Rewrote this rule.  It now calls |output_command_func()|. 
\ENDLOG 

@q ***** (5) Definition.@>

@<Define rules@>= 
  
@=command: ENDFIG with_clause_output_list@>@/
{

  Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

  bool* c = new bool;
  *c = true;

  bool* e = new bool;
  *e = true;
 
  scanner_node->clear_ptr = static_cast<void*>(c); 
  scanner_node->endfig_ptr  = static_cast<void*>(e); 

  Scan_Parse::output_command_func(scanner_node);

  @=$$@> = static_cast<void*>(0);
 
};

@*3 \§command> $\longrightarrow$ 
\.{BEGINCHAR} $\ldots$.
\initials{LDF 2005.06.11.}

\LOG
\initials{LDF 2005.06.11.}
Added this rule.
\ENDLOG

@q ***** (5) Definition.@> 
 
@<Define rules@>= 
  
@=command: BEGINCHAR LEFT_PARENTHESIS STRING COMMA@>@/
@=numeric_expression COMMA numeric_expression COMMA numeric_expression@>@/ 
@=RIGHT_PARENTHESIS character_comment_optional@>@/
{

   string* s = static_cast<string*>(@=$11@>);

   delete s;

   @=$$@> = static_cast<void*>(0);

};

@q *** (3) character_comment_optional.@>   
@*2 \§character comment optional>.
\initials{LDF 2005.06.11.}

\LOG
\initials{LDF 2005.06.11.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> character_comment_optional@>

@q **** (4) character_comment_optional --> /* EMPTY  */@>   
@*3 \§character comment optional> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2005.06.11.}

\LOG
\initials{LDF 2005.06.11.}
Added this rule.
\ENDLOG

@<Define rules@>= 
  
@=character_comment_optional: /* Empty  */@>
{

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) character_comment_optional --> string_expression.@>   

@*3 \§character comment optional> $\longrightarrow$ 
\§string expression>.
\initials{LDF 2005.06.11.}

\LOG
\initials{LDF 2005.06.11.}
Added this rule.
\ENDLOG

@<Define rules@>= 
  
@=character_comment_optional: string_expression@>
{

   @=$$@> = @=$1@>;

};

@q **** (4) command --> ENDCHAR with_clause_output_list.@>
@*3 \§command> $\longrightarrow$ 
\.{ENDCHAR} \§with clause output list>.

@q ***** (5) Definition.@>
 
@<Define rules@>= 
  
@=command: ENDCHAR with_clause_output_list@>@/
{

  @=$$@> = static_cast<void*>(0);
 
};

@q **** (4) command --> OUTPUT picture_expression @>
@q **** (4) with_clause_output_list.                   @>

@*3 \§command> $\longrightarrow$ `\.{OUTPUT}'
\§picture expression> \§with clause output list>.
\initials{LDF 2004.06.07.}  

\LOG
\initials{LDF 2004.06.07.}  
Added this rule.

\initials{LDF 2004.06.24.}
Now using a thread with |output_func()| as its start routine.

\initials{LDF 2004.06.29.}
Rewrote this rule.  It now handles all of the arguments 
to |Picture::output()|.

\initials{LDF 2004.06.29.}
Now using |@<Common declarations for |output| and |endfig| rules@>|.

\initials{LDF 2004.06.29.}
Put common code for this rule and |endfig_command| rule into sections.

\initials{LDF 2004.12.02.}
@:BUG FIX@> BUG FIX:  No longer casting |picture_expression| to
|Picture*| when assigning from it to 
|scanner_node->picture_entry_ptr|.  This was harmless, but confusing
and unnecessary.
\ENDLOG 

@q ***** (5) Definition.@>

@
@<Define rules@>= 
  
@=command: OUTPUT picture_expression with_clause_output_list@>@/
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);
  
    scanner_node->picture_entry_ptr = @=$2@>; 

    Scan_Parse::output_command_func(scanner_node);

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) with_clause_output_list @>
@*3 \§with clause output list>.

\LOG
\initials{LDF 2004.06.28.}
Added this section.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> with_clause_output_list@>

@q ***** (5) with_clause_output_list --> EMPTY.@>
@*4 \§with clause list> $\longrightarrow$ \.{EMPTY}.

\LOG
\initials{LDF 2004.06.28.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output_list: /* Empty.  */@>
{

  @=$$@> = static_cast<void*>(0);

};

@q ***** (5) with_clause_output_list --> with_clause_output_list @>
@q ***** (5) with_clause_output.@>
@*4 \§with clause list> $\longrightarrow$ \§with clause list> 
\§with clause>.

\LOG
\initials{LDF 2004.06.28.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output_list: with_clause_output_list with_clause_output@>
{

  @=$$@> = static_cast<void*>(0);

};

@q **** (4) with_clause_output @>
@*3 \§with clause output>.

\LOG
\initials{LDF 2004.06.28.}
Added this section.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> with_clause_output@>

@q ***** (5) with_clause_output --> CLEAR.@>
@*4 \§with clause output> $\longrightarrow$ \.{CLEAR}.

\LOG
\initials{LDF 2004.07.14.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output: CLEAR@>
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    bool* b;

    if (scanner_node->clear_ptr == static_cast<void*>(0))
      b = new bool;

    *b = true;

    @=$$@> = (scanner_node->clear_ptr) = static_cast<void*>(b);

};

@q ***** (5) with_clause_output --> WITH_FOCUS focus_expression.@>
@*4 \§with clause output> $\longrightarrow$ \.{WITH\_FOCUS}
\§focus expression>.

\LOG
\initials{LDF 2004.06.28.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output: WITH_FOCUS focus_expression@>
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   if (scanner_node->focus_ptr != static_cast<void*>(0))
      delete static_cast<Focus*>(scanner_node->focus_ptr);

   @=$$@> = scanner_node->focus_ptr = @=$2@>;

};

@q ***** (5) with_clause_output --> WITH_PROJECTION projection_type.@>
@*4 \§with clause output> $\longrightarrow$ \.{WITH\_PROJECTION}
\§projection type>.

\LOG
\initials{LDF 2004.06.28.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output: WITH_PROJECTION projection_type@>
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    int* i = new int;

    *i = @=$2@>;

    if (scanner_node->projection_ptr != static_cast<void*>(0))
      delete static_cast<int*>(scanner_node->projection_ptr);

    @=$$@> = scanner_node->projection_ptr = static_cast<void*>(i);

};

@q ***** (5) with_clause_output --> WITH_FACTOR numeric_expression.@>
@*4 \§with clause output> $\longrightarrow$ \.{WITH\_FACTOR}
\§numeric expression>.

\LOG
\initials{LDF 2004.06.28.}
Added this rule.

\initials{LDF 2005.03.13.}
Changed the way I allocate memory for a |real| value and 
set |@=$$@>|.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output: WITH_FACTOR numeric_expression@>
{

  Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

  real* r;

  if (scanner_node->factor_ptr != static_cast<void*>(0))
     r = static_cast<real*>(scanner_node->factor_ptr); 
  else 
     r = new real;

  *r = @=$2@>;
 
  @=$$@> = scanner_node->factor_ptr = static_cast<void*>(r);

};

@q ***** (5) with_clause_output --> sort_option.@>
@*4 \§with clause output> $\longrightarrow$ \§sort option>.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output: sort_option@>
{

  @=$$@> = @=$1@>;

};

@q ***** (5)  sort_option.@>
@*4 \§sort option>.

\LOG
\initials{LDF 2004.06.29.}
Added this section.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sort_option@>

@q ****** (6)  sort_option --> MAX_Z_SORT.@>
@*4 \§sort option> $\longrightarrow$ `\.{MAX\_Z\_SORT}'.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=sort_option: MAX_Z_SORT@>
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    int* i = new int;
    *i = Sorting::MAX_Z;

    if (scanner_node->sort_value_ptr != static_cast<void*>(0))
      delete static_cast<int*>(scanner_node->sort_value_ptr);

    @=$$@> = scanner_node->sort_value_ptr = static_cast<void*>(i); 

};

@q ****** (6)  sort_option --> MIN_Z_SORT.@>
@*4 \§sort option> $\longrightarrow$ `\.{MIN\_Z\_SORT}'.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=sort_option: MIN_Z_SORT@>
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    int* i = new int;
    *i = Sorting::MIN_Z;

    if (scanner_node->sort_value_ptr != static_cast<void*>(0))
      delete static_cast<int*>(scanner_node->sort_value_ptr);

    @=$$@> = scanner_node->sort_value_ptr = static_cast<void*>(i); 

};

@q ****** (6)  sort_option --> MEAN_Z_SORT.@>
@*4 \§sort option> $\longrightarrow$ `\.{MEAN\_Z\_SORT}'.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=sort_option: MEAN_Z_SORT@>
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   int* i = new int;
   *i = Sorting::MEAN_Z;

   if (scanner_node->sort_value_ptr != static_cast<void*>(0))
      delete static_cast<int*>(scanner_node->sort_value_ptr);

   @=$$@> = scanner_node->sort_value_ptr = static_cast<void*>(i); 

};

@q ****** (6)  sort_option --> NO_SORT.@>
@*4 \§sort option> $\longrightarrow$ `\.{NO\_SORT}'.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=sort_option: NO_SORT@>
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    int* i = new int;
    *i = Sorting::SUPPRESS_SORT;

    if (scanner_node->sort_value_ptr != static_cast<void*>(0))
      delete static_cast<int*>(scanner_node->sort_value_ptr);

    @=$$@> = scanner_node->sort_value_ptr = static_cast<void*>(i); 

};

@q ***** (5) with_clause_output --> projection_limits_option.@>
@*4 \§with clause output> $\longrightarrow$ \§projection limits option>.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output: projection_limits_option@>
{

  @=$$@> = @=$1@>;

};

@q ***** (5)  projection_limits_option.@>
@*4 \§projection limits option>.

\LOG
\initials{LDF 2004.06.29.}
Added this section.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> projection_limits_option@>

@q ****** (6) projection_limits_option --> MIN_X_PROJ @>
@q ****** (6) EQUATE numeric_expression.               @>
@*4 \§projection limits option> $\longrightarrow$ 
`\.{MIN\_X\_PROJ}' \§numeric expression>.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.

\initials{LDF 2005.03.13.}
Changed the way I allocate memory for a |real| value and 
set |@=$$@>|.
\ENDLOG 

@<Define rules@>= 
  
@=projection_limits_option: MIN_X_PROJ EQUATE numeric_expression@>
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);
  
    real* r;

    if (scanner_node->factor_ptr != static_cast<void*>(0))
       r = static_cast<real*>(scanner_node->min_x_proj_ptr); 
    else 
       r = new real;

    *r = @=$2@>;
 
    @=$$@> = scanner_node->min_x_proj_ptr = static_cast<void*>(r);

};

@q ****** (6) projection_limits_option --> MAX_X_PROJ @>
@q ****** (6) EQUATE numeric_expression.              @>

@*4 \§projection limits option> $\longrightarrow$ 
\.{MIN\_X\_PROJ} \§numeric expression>.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.

\initials{LDF 2005.03.13.}
Changed the way I allocate memory for a |real| value and 
set |@=$$@>|.
\ENDLOG 

@<Define rules@>= 
  
@=projection_limits_option: MAX_X_PROJ EQUATE numeric_expression@>
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    real* r;

    if (scanner_node->factor_ptr != static_cast<void*>(0))
       r = static_cast<real*>(scanner_node->max_x_proj_ptr); 
    else 
       r = new real;

    *r = @=$2@>;
 
    @=$$@> = scanner_node->max_x_proj_ptr = static_cast<void*>(r);
 
};

@q ****** (6) projection_limits_option --> MIN_Y_PROJ @>
@q ****** (6) EQUATE numeric_expression.               @>
@*4 \§projection limits option> $\longrightarrow$ 
\.{MIN\_X\_PROJ} \§numeric expression>.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.

\initials{LDF 2005.03.13.}
Changed the way I allocate memory for a |real| value and 
set |@=$$@>|.
\ENDLOG 

@<Define rules@>= 
  
@=projection_limits_option: MIN_Y_PROJ EQUATE numeric_expression@>
{

  Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);
  real* r;

  if (scanner_node->factor_ptr != static_cast<void*>(0))
     r = static_cast<real*>(scanner_node->min_y_proj_ptr); 
  else 
     r = new real;

  *r = @=$2@>;
 
  @=$$@> = scanner_node->min_y_proj_ptr = static_cast<void*>(r);

};

@q ****** (6) projection_limits_option --> MAX_Y_PROJ @>
@q ****** (6) EQUATE numeric_expression.               @>
@*4 \§projection limits option> $\longrightarrow$ 
`\.{MIN\_X\_PROJ}' \§numeric expression>.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.

\initials{LDF 2005.03.13.}
Changed the way I allocate memory for a |real| value and 
set |@=$$@>|.
\ENDLOG 

@<Define rules@>=

@=projection_limits_option: MAX_Y_PROJ EQUATE numeric_expression@>
{
  
  Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

  real* r;

  if (scanner_node->factor_ptr != static_cast<void*>(0))
     r = static_cast<real*>(scanner_node->max_y_proj_ptr); 
  else 
     r = new real;

  *r = @=$2@>;
 
  @=$$@> = scanner_node->max_y_proj_ptr = static_cast<void*>(r);

};

@q ****** (6) projection_limits_option --> MIN_Z_PROJ @>
@q ****** (6) EQUATE numeric_expression.               @>
@*4 \§projection limits option> $\longrightarrow$ 
`\.{MIN\_X\_PROJ}' \§numeric expression>.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.

\initials{LDF 2005.03.13.}
Changed the way I allocate memory for a |real| value and 
set |@=$$@>|.
\ENDLOG 

@<Define rules@>= 
  
@=projection_limits_option: MIN_Z_PROJ EQUATE numeric_expression@>
{

  Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);
  real* r;

  if (scanner_node->factor_ptr != static_cast<void*>(0))
     r = static_cast<real*>(scanner_node->min_z_proj_ptr); 
  else 
     r = new real;

  *r = @=$2@>;
 
  @=$$@> = scanner_node->min_z_proj_ptr = static_cast<void*>(r);

};

@q ****** (6) projection_limits_option --> MAX_Z_PROJ @>
@q ****** (6) EQUATE numeric_expression.               @>
@*4 \§projection limits option> $\longrightarrow$ 
`\.{MIN\_X\_PROJ}' \§numeric expression>.

\LOG
\initials{LDF 2004.06.29.}
Added this rule.

\initials{LDF 2005.03.13.}
Changed the way I allocate memory for a |real| value and 
set |@=$$@>|.
\ENDLOG 

@<Define rules@>= 
  
@=projection_limits_option: MAX_Z_PROJ EQUATE numeric_expression@>
{

  Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);  
  real* r;

  if (scanner_node->factor_ptr != static_cast<void*>(0))
     r = static_cast<real*>(scanner_node->max_z_proj_ptr); 
  else 
     r = new real;

  *r = @=$2@>;
 
  @=$$@> = scanner_node->max_z_proj_ptr = static_cast<void*>(r);

};

@q ****** (6) projection_type.  @>
@*5 \§projection type>.  

\LOG
\initials{LDF 2004.06.08.}  Added this section.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> projection_type@>

@q ******* (7) projection_type --> PERSPECTIVE.  @>
@*6 \§projection type> $\longrightarrow$ `\.{PERSPECTIVE}'.  

\LOG
\initials{LDF 2004.06.08.}  Added this rule.
\ENDLOG 

@<Define rules@>= 

@=projection_type: PERSPECTIVE@>@/
{

  @=$$@> = Projections::persp;

};

@q ******* (7) projection_type --> PARALLEL_X_Y.  @>
@*6 \§projection type> $\longrightarrow$ `\.{PARALLEL\_X\_Y}'.  

\LOG
\initials{LDF 2004.06.08.}  Added this rule.
\ENDLOG 

@<Define rules@>= 

@=projection_type: PARALLEL_X_Y@>@/
{

  @=$$@> = Projections::parallel_x_y;

};

@q ******* (7) projection_type --> PARALLEL_X_Z.  @>
@*6 \§projection type> $\longrightarrow$ `\.{PARALLEL\_X\_Z}'.  

\LOG
\initials{LDF 2004.06.08.}  Added this rule.
\ENDLOG 

@<Define rules@>= 

@=projection_type: PARALLEL_X_Z@>@/
{

  @=$$@> = Projections::parallel_x_z;

};

@q ******* (7) projection_type --> PARALLEL_Z_Y.  @>
@*6 \§projection type> $\longrightarrow$ `\.{PARALLEL\_Z\_Y}'.  

\LOG
\initials{LDF 2004.06.08.}  Added this rule.
\ENDLOG 

@<Define rules@>= 

@=projection_type: PARALLEL_Z_Y@>@/
{

  @=$$@> = Projections::parallel_z_y;

};

@q ******* (7) projection_type --> AXONOMETRIC.  @>
@*6 \§projection type> $\longrightarrow$ `\.{AXONOMETRIC}'.  

\LOG
\initials{LDF 2004.06.08.}  Added this rule.
\ENDLOG 

@<Define rules@>= 

@=projection_type: AXONOMETRIC@>@/
{

  @=$$@> = Projections::axon;

};

@q ******* (7) projection_type --> ISOMETRIC.  @>
@*6 \§projection type> $\longrightarrow$ `\.{ISOMETRIC}'.  

\LOG
\initials{LDF 2004.06.08.}  Added this rule.
\ENDLOG 

@<Define rules@>= 

@=projection_type: ISOMETRIC@>@/
{

  @=$$@> = Projections::iso;

};

@q ******* (7) projection_type --> SUPPRESS.  @>
@*6 \§projection type> $\longrightarrow$ `\.{SUPPRESS}'.  

\LOG
\initials{LDF 2004.06.08.}  Added this rule.
\ENDLOG 

@<Define rules@>= 

@=projection_type: SUPPRESS@>@/
{

  @=$$@> = Projections::suppress;

};

@q ***** (5) with_clause_output --> surface_hiding_option.@>
@*4 \§with clause output> $\longrightarrow$ \§surface hiding option>.
\initials{LDF 2005.03.13.}

\LOG
\initials{LDF 2005.03.13.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=with_clause_output: surface_hiding_option@>
{

   @=$$@> = @=$1@>;

};

@q ***** (5)  surface_hiding_option.@>
@*4 \§surface hiding option>.
\initials{LDF 2005.03.13.}

\LOG
\initials{LDF 2005.03.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> surface_hiding_option@>

@q ****** (6) surface_hiding_option --> WITH_SURFACE_HIDING.@>
@*4 \§surface hiding option> $\longrightarrow$ 
`\.{WITH\_SURFACE\_HIDING}'.

\LOG
\initials{LDF 2005.03.13.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=surface_hiding_option: WITH_SURFACE_HIDING@>
{
   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);
   real* r;

   if (scanner_node->surface_hiding_value_ptr != static_cast<void*>(0))
      {
         r = static_cast<real*>(scanner_node->surface_hiding_value_ptr);           
      }

   else  /* |scanner_node->surface_hiding_value_ptr == static_cast<void*>(0)|  */
      {

               r = new real;

      }  /* |else| (|scanner_node->surface_hiding_value_ptr == 0|)  */

     *r = 1;

     @=$$@> = scanner_node->surface_hiding_value_ptr = static_cast<void*>(r); 

};

@q ****** (6) surface_hiding_option --> WITHOUT_SURFACE_HIDING.@>
@*4 \§surface hiding option> $\longrightarrow$ 
`\.{WITHOUT\_SURFACE\_HIDING}'.

\LOG
\initials{LDF 2005.03.13.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=surface_hiding_option: WITHOUT_SURFACE_HIDING@>
{
   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);
   real* r;

   if (scanner_node->surface_hiding_value_ptr != static_cast<void*>(0))
      {
         r = static_cast<real*>(scanner_node->surface_hiding_value_ptr);           
      }

   else  /* |scanner_node->surface_hiding_value_ptr == 0|  */
      {
               r = new real;

      }  /* |else| (|scanner_node->surface_hiding_value_ptr == 0|)  */

     *r = 0;

     @=$$@> = scanner_node->surface_hiding_value_ptr = static_cast<void*>(r); 

};

