@q porvexpr.w @> 
@q Created by Laurence Finston Do Feb  3 17:51:02 CET 2005 @>
       

@q * (0) |origami_figure_vector| expressions.@>
@** \§origami figure vector> expressions.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |origami_figure_vector| primary.  @>
@* \§origami figure vector primary>.
\initials{LDF 2005.02.03.}
  
\LOG
\initials{LDF 2005.02.03.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> origami_figure_vector_primary@>@/

@q ** (2) origami_figure_vector_primary --> origami_figure_vector_variable.@>
@*1 \§origami figure vector primary> $\longrightarrow$ 
\§origami figure vector variable>.  
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=origami_figure_vector_primary: origami_figure_vector_variable@>@/ 
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.02.03.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.02.03.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Origami_Figure> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) origami_figure_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) origami_figure_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§origami figure vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§origami figure vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=origami_figure_vector_primary: LEFT_PARENTHESIS@>@/ 
@=origami_figure_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) origami_figure_vector secondary.@>

@* \§origami figure vector secondary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> origami_figure_vector_secondary@>
  
@q ** (2) origami_figure_vector secondary --> origami_figure_vector_primary.@>
@*1 \§origami figure vector secondary> $\longrightarrow$ 
\§origami figure vector primary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=origami_figure_vector_secondary: origami_figure_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) origami_figure_vector tertiary.  @>

@* \§origami figure vector tertiary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> origami_figure_vector_tertiary@>

@q ***** (5) origami_figure_vector tertiary --> origami_figure_vector_secondary.@>
@ \§origami figure vector tertiary> $\longrightarrow$ 
\§origami figure vector secondary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=origami_figure_vector_tertiary: origami_figure_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) origami_figure_vector expression.@>
@* \§origami figure vector expression>.

\LOG
\initials{LDF 2005.02.03.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> origami_figure_vector_expression@>

@q ** (2) origami_figure_vector expression --> origami_figure_vector_tertiary.  @>
@*1 \§origami figure vector expression> $\longrightarrow$ 
\§origami figure vector tertiary>.

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=origami_figure_vector_expression: origami_figure_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

