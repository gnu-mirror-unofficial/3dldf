@q setmatrx.w @> 
@q Created by Laurence Finston (LDF) Wed Nov 28 20:16:10 CET 2007 @>       

@q *** (3) command --> SET matrix_variable set_matrix_option_list.@> 

@*2 \§command> $\longrightarrow$ \.{SET} \§matrix variable> 
\§set matrix option list>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@>

@<Define rules@>= 
@=command: SET matrix_variable LEFT_PARENTHESIS numeric_expression COMMA @>@/
@=numeric_expression RIGHT_PARENTHESIS set_matrix_option_list@>@/
{

   Scan_Parse::set_matrix_rule_func_0(@=$2@>, 
                                      @=$4@>,
                                      @=$6@>, 
                                      parameter);

   @=$$@> = static_cast<void*>(0);

};

@q * (1) set_matrix_option_list.@>   
@* \§set matrix option list>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> set_matrix_option_list@>

@q ** (2) set_matrix_option_list --> EMPTY.@>   
@* \§set matrix option list> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_matrix_option_list: /* Empty  */@>@/        
{
   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   if (scanner_node->matrix_options != static_cast<Matrix_Options*>(0))
      scanner_node->matrix_options->clear();
   else
      scanner_node->matrix_options = new Matrix_Options;

   @=$$@> = static_cast<void*>(0);

};

@q ** (2) set_matrix_option_list --> set_matrix_option_list @>   
@q ** (2) set_matrix_option.                                @>   

@* \§set matrix option list> $\longrightarrow$ 
\§set matrix option list> \§set matrix option>. 
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_matrix_option_list: set_matrix_option_list set_matrix_option@>@/        
{

   @=$$@> = static_cast<void*>(0);

};

@q * (1) set_matrix_option.@>   
@* \§set matrix option>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> set_matrix_option@>

@q ** (2) set_matrix_option_list --> WITH_TYPE DOUBLE_TYPE_MATRIX.@>   
@* \§set matrix option list> $\longrightarrow$ \.{WITH\_TYPE}
\.{DOUBLE\_TYPE\_MATRIX}.
\initials{LDF 2007.12.18.}

\LOG
\initials{LDF 2007.12.18.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_matrix_option: WITH_TYPE DOUBLE_TYPE_MATRIX@>@/
{

   Matrix_Options* options = static_cast<Scanner_Node>(parameter)->matrix_options;
   
   options->type = Matrix::MATRIX_DOUBLE_TYPE;

   @=$$@> = static_cast<void*>(0);

};
@q ** (2) set_matrix_option_list --> WITH_TYPE FLOAT_TYPE_MATRIX.@>   
@* \§set matrix option list> $\longrightarrow$ \.{WITH\_TYPE}
\.{FLOAT\_TYPE\_MATRIX}.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_matrix_option: WITH_TYPE FLOAT_TYPE_MATRIX@>@/
{

   Matrix_Options* options = static_cast<Scanner_Node>(parameter)->matrix_options;
   
   options->type = Matrix::MATRIX_FLOAT_TYPE;

   @=$$@> = static_cast<void*>(0);

};

@q ** (2) set_matrix_option_list --> WITH_TYPE COMPLEX_TYPE_MATRIX.@>   
@* \§set matrix option list> $\longrightarrow$ \.{WITH\_TYPE}
\.{COMPLEX\_TYPE\_MATRIX}.
\initials{LDF 2007.12.18.}

\LOG
\initials{LDF 2007.12.18.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=set_matrix_option: WITH_TYPE COMPLEX_TYPE_MATRIX@>@/
{

   Matrix_Options* options = static_cast<Scanner_Node>(parameter)->matrix_options;
   
   options->type = Matrix::MATRIX_COMPLEX_TYPE;

   @=$$@> = static_cast<void*>(0);

};

