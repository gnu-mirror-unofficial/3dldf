@q setarc.w @> 
@q Created by Laurence Finston (LDF) Sun Nov 25 17:46:59 CET 2007 @>       

@q *** (3) command --> SET arc_variable set_arc_option_list.@> 

@*2 \§command> $\longrightarrow$ \.{SET} \§arc variable> 
\§set arc option list>.
\initials{LDF 2007.11.25.}

\LOG
\initials{LDF 2007.11.25.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@>

@<Define rules@>= 
@=command: SET arc_variable set_arc_option_list@>@/
{

   Scan_Parse::set_arc_rule_func_0(@=$2@>, 
                                   parameter);

   @=$$@> = static_cast<void*>(0);

};

@q * (1) set_arc_option_list.@>   
@* \§set arc option list>.
\initials{LDF 2007.11.25.}

\LOG
\initials{LDF 2007.11.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> set_arc_option_list@>

@q ** (2) set_arc_option_list --> EMPTY.@>   
@* \§set arc option list> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.11.25.}

\LOG
\initials{LDF 2007.11.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_arc_option_list: /* Empty  */@>@/        
{
   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   if (scanner_node->arc_options != static_cast<Arc_Options*>(0))
      scanner_node->arc_options->clear();

   else
      scanner_node->arc_options = new Arc_Options;

   @=$$@> = static_cast<void*>(0);

};

@q ** (2) set_arc_option_list --> set_arc_option_list @>   
@q ** (2) set_arc_option.                             @>   

@* \§set arc option list> $\longrightarrow$ 
\§set arc option list> \§set arc option>. 
\initials{LDF 2007.11.25.}

\LOG
\initials{LDF 2007.11.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_arc_option_list: set_arc_option_list set_arc_option@>@/        
{

   @=$$@> = static_cast<void*>(0);

};

@q * (1) set_arc_option.@>   
@* \§set arc option>.
\initials{LDF 2007.11.25.}

\LOG
\initials{LDF 2007.11.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> set_arc_option@>

@q ** (2) set_arc_option_list --> WITH_FOCUS numeric_expression point_expression.@>   
@* \§set arc option list> $\longrightarrow$ \.{WITH\_FOCUS}
\§point expresssion>.
\initials{LDF 2007.11.25.}

\LOG
\initials{LDF 2007.11.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_arc_option: WITH_FOCUS LEFT_PARENTHESIS numeric_expression RIGHT_PARENTHESIS @> 
@=point_expression@>@/        
{

   Arc_Options* options = static_cast<Scanner_Node>(parameter)->arc_options;

   if (options->focus_0)
      delete options->focus_0;

   if (@=$3@> == ZERO_REAL)
      options->focus_0 = static_cast<Point*>(@=$5@>); 
   else if (@=$3@> == 1)
      options->focus_1 = static_cast<Point*>(@=$5@>); 
   
/* START HERE!!  Add error handling code.  
   Must fix the rule for |Hyperbolae| which uses |with_focus_0| 
   and |with_focus_1|.

   This solution is a compromise.  Maybe add |with_focus_zero| and 
   |with_focus_1|.

   LDF 2007.11.25.  */ 
   
   @=$$@> = static_cast<void*>(0);

};

@q ** (2) set_arc_option_list --> WITH_INCREMENT numeric_expression.@>   
@* \§set arc option list> $\longrightarrow$ \.{WITH\_INCREMENT}
\§numeric expresssion>.
\initials{LDF 2007.11.25.}

\LOG
\initials{LDF 2007.11.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_arc_option: WITH_INCREMENT numeric_expression@>@/
{

   static_cast<Scanner_Node>(parameter)->arc_options->increment_value 
      = @=$2@>; 

   @=$$@> = static_cast<void*>(0);

};

