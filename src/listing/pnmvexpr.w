@q pnmvexpr.w @> 
@q Created by Laurence Finston Fri Jan  7 11:08:25 CET 2005 @>
     

@q * (0) |numeric_vector| expressions.@>
@** {\bf numeric\_vector} expressions.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |numeric_vector| primary.  @>
@* \§numeric vector primary>.
\initials{LDF 2005.01.07.}
  
\LOG
\initials{LDF 2005.01.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> numeric_vector_primary@>@/

@q ** (2) numeric_vector_primary --> numeric_vector_variable.@>
@*1 \§numeric vector primary> $\longrightarrow$ 
\§numeric vector variable>.  
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=numeric_vector_primary: numeric_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.01.07.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.01.07.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<real> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) numeric_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) numeric_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§numeric vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§numeric vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=numeric_vector_primary: LEFT_PARENTHESIS@>@/ 
@=numeric_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q ** (2) numeric_vector_primary --> MEASURE_TEXT string_expression.@>

@*1 \§numeric vector primary> $\longrightarrow$ 
\.{MEASURE\_TEXT} \§string expression>.
\initials{LDF 2005.08.30.}

\LOG
\initials{LDF 2005.08.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=numeric_vector_primary: MEASURE_TEXT string_expression@>@/ 
{
   
    Pointer_Vector<real>* pv = new Pointer_Vector<real>;
 
    int status = Scan_Parse::measure_text_func(
                                static_cast<Scanner_Node>(parameter), 
                                @=$2@>, 
                                pv);

@q ****** (6)@> 

    if (status == 0)
       @=$$@> = static_cast<void*>(pv);

@q ****** (6)@> 

    else /* |status != 0|  */
       {

           @=$$@> = static_cast<void*>(0);

       }  /* |else|  (|status != 0|)  */
};

@q * (1) numeric_vector secondary.@>

@* \§numeric vector secondary>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> numeric_vector_secondary@>
  
@q ** (2) numeric_vector secondary --> numeric_vector_primary.@>
@*1 \§numeric vector secondary> $\longrightarrow$ 
\§numeric vector primary>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=numeric_vector_secondary: numeric_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) numeric_vector tertiary.  @>

@* \§numeric vector tertiary>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> numeric_vector_tertiary@>

@q ***** (5) numeric_vector tertiary --> numeric_vector_secondary.@>
@ \§numeric vector tertiary> $\longrightarrow$ 
\§numeric vector secondary>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=numeric_vector_tertiary: numeric_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) numeric_vector expression.@>
@* \§numeric vector expression>.

\LOG
\initials{LDF 2005.01.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> numeric_vector_expression@>

@q ** (2) numeric_vector expression --> numeric_vector_tertiary.  @>
@*1 \§numeric vector expression> $\longrightarrow$ 
\§numeric vector tertiary>.

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=numeric_vector_expression: numeric_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

