@q pglyexpr.w @> 
@q Created by Laurence Finston Mi Jun  8 15:38:24 CEST 2005 @>
       

@q * (0) glyph expressions.  @>
@** glyph expressions.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.08.}
Created this file.
\ENDLOG 

@q * (1) glyph_primary.  @>
@* \§glyph primary>.
\initials{LDF 2005.06.08.}  

\LOG
\initials{LDF 2005.06.08.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> glyph_primary@>@/

@q ** (2) glyph_primary --> glyph_variable.@>
@*1 \§glyph primary> $\longrightarrow$ \§glyph variable>.  

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=glyph_primary: glyph_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Glyph>(
                                  static_cast<Glyph*>(
                                     entry->object))); 

};

@q ** (2) glyph_primary --> LEFT_PARENTHESIS glyph_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§glyph primary> $\longrightarrow$ \.{\LP} 
\§glyph expression> \.{\RP}.

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=glyph_primary: LEFT_PARENTHESIS glyph_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) glyph_primary --> LAST @>
@q ***** (5) glyph_vector_expression.@>

@*4 \§glyph primary> $\longrightarrow$ 
\.{LAST} \§glyph vector expression>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=glyph_primary: LAST glyph_vector_expression@>@/
{ 

   Glyph* c;

         c = create_new<Glyph>(0);

   Pointer_Vector<Glyph>* pv 
      = static_cast<Pointer_Vector<Glyph>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.06.08.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Glyph>*>(0))
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.06.08.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.06.08.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) glyph_secondary.  @>
@* \§glyph secondary>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> glyph_secondary@>
  
@q ** (2) glyph secondary --> glyph_primary.@>
@*1 \§glyph secondary> $\longrightarrow$ \§glyph primary>.

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=glyph_secondary: glyph_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: glyph_secondary --> glyph_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q ** (2) glyph secondary --> glyph_secondary transformer.  @>
@*1 \§glyph secondary> $\longrightarrow$ \§glyph secondary> 
\§transformer>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this rule.

\initials{LDF 2005.12.16.}
@:BUG FIX@> BUG FIX: Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=glyph_secondary: glyph_secondary transformer@>@/
{

  Glyph* p = static_cast<Glyph*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  @=$$@> = static_cast<void*>(p); 

  delete t;

};

@q * (1) glyph tertiary.@>
@* \§glyph tertiary>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> glyph_tertiary@>

@q ** (2) glyph tertiary --> glyph_secondary.  @>
@*1 \§glyph tertiary> $\longrightarrow$ \§glyph secondary>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=glyph_tertiary: glyph_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) glyph expression.@>
@* \§glyph expression>.
\initials{LDF 2005.06.08.}

\LOG
\initials{LDF 2005.06.08.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> glyph_expression@>

@q ** (2) glyph expression --> glyph_tertiary.  @>
@*1 \§glyph expression> $\longrightarrow$ \§glyph tertiary>.

\LOG
\initials{LDF 2005.06.08.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=glyph_expression: glyph_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

