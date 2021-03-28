@q pglvexpr.w @> 
@q Created by Laurence Finston Mi Jun  8 15:37:16 CEST 2005 @>
     

@q * (0) |glyph_vector| expressions.@>
@** \§glyph vector> expressions.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |glyph_vector| primary.  @>
@* \§glyph vector primary>.
\initials{LDF 2005.06.08.}
  
\LOG
\initials{LDF 2005.06.08.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> glyph_vector_primary@>@/

@q ** (2) glyph_vector_primary --> glyph_vector_variable.@>
@*1 \§glyph vector primary> $\longrightarrow$ 
\§glyph vector variable>.  
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=glyph_vector_primary: glyph_vector_variable@>@/ 
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.06.08.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.06.08.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Glyph> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) glyph_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) glyph_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§glyph vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§glyph vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=glyph_vector_primary: LEFT_PARENTHESIS@>@/ 
@=glyph_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) glyph_vector secondary.@>

@* \§glyph vector secondary>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> glyph_vector_secondary@>
  
@q ** (2) glyph_vector secondary --> glyph_vector_primary.@>
@*1 \§glyph vector secondary> $\longrightarrow$ 
\§glyph vector primary>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=glyph_vector_secondary: glyph_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) glyph_vector tertiary.  @>

@* \§glyph vector tertiary>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> glyph_vector_tertiary@>

@q ***** (5) glyph_vector tertiary --> glyph_vector_secondary.@>
@ \§glyph vector tertiary> $\longrightarrow$ 
\§glyph vector secondary>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=glyph_vector_tertiary: glyph_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) glyph_vector expression.@>
@* \§glyph vector expression>.

\LOG
\initials{LDF 2005.06.08.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> glyph_vector_expression@>

@q ** (2) glyph_vector expression --> glyph_vector_tertiary.  @>
@*1 \§glyph vector expression> $\longrightarrow$ 
\§glyph vector tertiary>.

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=glyph_vector_expression: glyph_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

