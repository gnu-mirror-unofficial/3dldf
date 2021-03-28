@q fcscmnd.w @> 
@q Created by Laurence Finston Sun Sep  2 18:50:12 CEST 2007 @>
       
@q * (0) Commands for Focuses.  @>
@** Commands for {\bf Focuses}>.
\initials{LDF 2007.09.02.}

\LOG
\initials{LDF 2007.09.02.}
Created this file.
\ENDLOG 

@q * (1) command --> RESET_ANGLE focus_variable numeric_expression.  @> 
@* \§command> $\longrightarrow$ \.{RESET\_ANGLE} 
\§focus variable> \§numeric expression>.
\initials{LDF 2007.09.02.}

\LOG
\initials{LDF 2007.09.02.}
Added this rule.
\ENDLOG

@q ** (2) Definition.@> 

@<Define rules@>=
@=command:  RESET_ANGLE focus_variable numeric_expression@>@/
{

    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>);
   
    if (entry && entry->object)
    {
        static_cast<Focus*>(entry->object)->reset_angle(@=$3@>);
    } 

    @=$$@> = static_cast<void*>(0);

};

@q * (1) Transformations.@>
@* Transformations.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this section.
\ENDLOG

@q ** (2) focus_option_list.@>
@*1 \§focus option list>.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> focus_option_list@>

@q *** (3) focus_option_list: /* Empty  */@>
@*2 \§focus option list> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=focus_option_list: /*  Empty  */@>@/
{
   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   if (scanner_node)
   {
      if (scanner_node->focus_options)
      {
          scanner_node->focus_options->clear();   
      }
      else
         scanner_node->focus_options = new Focus_Options;
   }

   @=$$@> = 0; 
};

@q *** (3) focus_option_list: focus_option_list @>
@q *** (3) focus_option.                        @>
@*2 \§focus option list> $\longrightarrow$ 
\§focus option>.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=focus_option_list: focus_option_list focus_option@>@/
{
   @=$$@> = 0; 
};

@q ** (2) focus_option.@>
@*1 \§focus option>.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> focus_option@>

@q *** (3) focus_option: WITH_FOCUS_AXES.@>
@*2 \§focus option>$\longrightarrow$ \.{WITH\_FOCUS\_AXES.}.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=focus_option: WITH_FOCUS_AXES@>@/
{
   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   if (scanner_node && scanner_node->focus_options)
      scanner_node->focus_options->axes = Focus::FOCUS_AXES,

   @=$$@> = 0;
};

@q *** (3) focus_option: WITH_MAIN_AXES.@>
@*2 \§focus option> $\longrightarrow$ \.{WITH\_MAIN\_AXES.}.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=focus_option: WITH_MAIN_AXES@>@/
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   if (scanner_node && scanner_node->focus_options)
      scanner_node->focus_options->axes = Focus::MAIN_AXES,

   @=$$@> = 0;
};

@q *** (3) focus_option: WITH_TOLERANCE numeric_expression.@>
@*2 \§focus option> $\longrightarrow$ \.{WITH\_TOLERANCE.}.
\§numeric expression>.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=focus_option: WITH_TOLERANCE numeric_expression@>@/
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   if (scanner_node && scanner_node->focus_options)
      scanner_node->focus_options->tolerance = @=$2@>;

   @=$$@> = 0;
};

@q ** (2) Rotation.@>
@*1 Rotation.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this section.
\ENDLOG

@q *** (3) Rotation about the |Focus| axes or the main axes.@>
@*2 Rotation about the {\bf Focus} axes or the main axes.
\initials{LDF 2007.09.19.}

In the rules using |ROTATE|, the default behavior is for rotation to be performed 
about the main axes.  In the rules using |TILT|, the default behavior is for rotation 
to be performed about the ``focus axes''.  In each cases, the options \§with main axes> 
and \§with focus axes> can be specified.  Depending on the option and the command, 
this will either make no difference or cause rotation about the other set of axes.
\initials{LDF 2007.09.24.}

These options may appear multiple times in the command.  If they do, the last 
occurrence is the one that will take effect.
\initials{LDF 2007.09.24.}

\LOG
\initials{LDF 2007.09.19.}
Added this section.
\ENDLOG

@q **** (4) command --> ROTATE focus_variable numeric_expression  @> 
@q **** (4) focus_option_list.                          @>

@*3 \§command> $\longrightarrow$ \.{ROTATE} \§focus variable> 
\§numeric expression> \§focus option list>.
\initials{LDF 2007.09.02.}

\LOG
\initials{LDF 2007.09.02.}
Added this rule.

\initials{LDF 2007.09.19.}
Added \§focus option list> to the right-hand side.

\initials{LDF 2007.09.24.}
Changed the default value for |axes| from |Focus::FOCUS_AXES| to 
|Focus::MAIN_AXES|.

\initials{LDF 2007.09.24.}
Now calling |Scan_Parse::rotate_focus_func|.
\ENDLOG

@q ***** (5) Definition.@> 

@<Define rules@>=
@=command:  ROTATE focus_variable numeric_expression focus_option_list@>@/
{

    Pointer_Vector<real>* rpv = new Pointer_Vector<real>;

    *rpv += new real(@=$3@>);

    rotate_focus_func(@=$2@>, 
                      static_cast<void*>(rpv), 
                      Focus::MAIN_AXES, 
                      parameter);

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command: ROTATE focus_variable numeric_list focus_option_list.@> 

@*3 \§command> $\longrightarrow$ \.{ROTATE} \§focus variable> 
\§numeric list> \§focus option list>.
\initials{LDF 2007.09.19.}

\LOG
\initials{LDF 2007.09.19.}
Added this rule.

\initials{LDF 2007.09.24.}
Changed the default value for |axes| from |Focus::FOCUS_AXES| to 
|Focus::MAIN_AXES|.
\ENDLOG

@<Define rules@>=
@=command: ROTATE focus_variable numeric_list focus_option_list@>@/
{

    rotate_focus_func(@=$2@>, 
                      @=$3@>, 
                      Focus::MAIN_AXES, 
                      parameter);

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> TILT focus_variable numeric_expression  @> 
@q **** (4) focus_option_list.                                  @>

@*3 \§command> $\longrightarrow$ \.{TILT} \§focus variable> 
\§numeric expression> \§focus option list>.
\initials{LDF 2007.09.24.}

\LOG
\initials{LDF 2007.09.24.}
Added this rule.
\ENDLOG

@q ***** (5) Definition.@> 

@<Define rules@>=
@=command:  TILT focus_variable numeric_expression focus_option_list@>@/
{

    Pointer_Vector<real>* rpv = new Pointer_Vector<real>;

    *rpv += new real(@=$3@>);

    rotate_focus_func(@=$2@>, 
                      static_cast<void*>(rpv), 
                      Focus::FOCUS_AXES, 
                      parameter);

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command: TILT focus_variable numeric_list focus_option_list.@> 

@*3 \§command> $\longrightarrow$ \.{TILT} \§focus variable> 
\§numeric list> \§focus option list>.
\initials{LDF 2007.09.24.}

\LOG
\initials{LDF 2007.09.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=command: TILT focus_variable numeric_list focus_option_list@>@/
{

    rotate_focus_func(@=$2@>, 
                      @=$3@>, 
                      Focus::FOCUS_AXES, 
                      parameter);

    @=$$@> = static_cast<void*>(0);

};

