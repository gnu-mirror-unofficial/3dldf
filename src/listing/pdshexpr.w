@q pdshexpr.w @> 
@q Created by Laurence Finston Mon Jun  7 16:47:47 CEST 2004  @>
     

@q * (0) dash_pattern expressions.  @>
@** {\bf dash\_pattern} expressions.

\LOG
\initials{LDF 2004.06.07.}  
Created this file.
\ENDLOG 

@q ** (2) dash_pattern primary.  @>
@*1 \§dash pattern primary>.
  
@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> dash_pattern_primary@>@/

@q *** (3) dash_pattern_primary --> dash_pattern_variable.@>
@*2 \§dash pattern primary> $\longrightarrow$ \§dash pattern variable>.  

\LOG
\initials{LDF 2004.11.22.}
No longer issuing an error message if |entry->object == 0|.
This condition occurs legitimately when one tries to show 
an ``unknown |dash_pattern|''. 
\ENDLOG 

@<Define rules@>=
@=dash_pattern_primary: dash_pattern_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>); 

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */@;

  {
      Dash_Pattern* s
        = create_new<Dash_Pattern>(static_cast<Dash_Pattern*>(entry->object));
    
    @=$$@> = static_cast<void*>(s);
  }

};

@q *** (3) dash_pattern_primary --> dash_pattern_argument.@>
@*2 \§dash pattern primary> $\longrightarrow$ 
\§dash pattern argument>.  

@q *** dash_pattern_primary --> ( dash_pattern_expression )  @>
@ \§dash pattern primary> $\longrightarrow$ `\.{\LP}' 
\§dash pattern expression> `\.{\RP}'.

@<Define rules@>=
@=dash_pattern_primary: LEFT_PARENTHESIS dash_pattern_expression@>@/
@=RIGHT_PARENTHESIS@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr << "\n*** Parser: dash_pattern_primary --> "
           << "`(' dash_pattern_expression `)' "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$2@>;

};

@q ***** (5) dash_pattern_primary --> LAST @>
@q ***** (5) dash_pattern_vector_expression.@>

@*4 \§dash pattern primary> $\longrightarrow$ 
\.{LAST} \§dash pattern vector expression>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=dash_pattern_primary: LAST dash_pattern_vector_expression@>@/
{ 

@q ******* (7) @> 

   Dash_Pattern* p;

         p = create_new<Dash_Pattern>(0);

   Pointer_Vector<Dash_Pattern>* pv 
      = static_cast<Pointer_Vector<Dash_Pattern>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.01.13.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Dash_Pattern>*>(0))
      {

          delete p;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.01.13.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete p;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.01.13.}

@<Define rules@>=

   else 
      {
         *p = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(p); 
      }
@q ******* (7) @> 

};

@q ** (2) dash_pattern secondary.  @>
@*1 \§dash pattern secondary>.
\initials{LDF Undated.}

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> dash_pattern_secondary@>
  
@q *** (3) dash_pattern secondary --> dash_pattern_primary.@>
@*2 \§dash pattern secondary> $\longrightarrow$ \§dash pattern primary>.
\initials{LDF Undated.}

@<Define rules@>=
@=dash_pattern_secondary: dash_pattern_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q *** (3) dash_pattern secondary --> dash_pattern_secondary transformer.  @>
@*2 \§dash pattern secondary> $\longrightarrow$ \§dash pattern secondary> 
\§transformer>.
\initials{LDF Undated.}

\LOG
\initials{LDF Undated.}
@:BUG FIX@> BUG FIX: |dash_pattern_secondary| on the right-hand side of the rule
was formerly |dash_pattern_primary|.  This caused input with |dash_pattern_secondaries| 
with multiple transformers to fail.

\initials{LDF 2005.12.16.}
@:BUG FIX@> BUG FIX: Now deleting |Transform* t|.
\ENDLOG 

@<Define rules@>=
@=dash_pattern_secondary: dash_pattern_secondary transformer@>@/
{

  Dash_Pattern* d = static_cast<Dash_Pattern*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>); 

  *d *= *t;

  delete t;

  @=$$@> = static_cast<void*>(d); 

};

@q ** (2) dash_pattern tertiary.  @>
@*1 \§dash pattern tertiary>.
\initials{LDF Undated.}

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> dash_pattern_tertiary@>

@q *** (3) dash_pattern tertiary --> dash_pattern_secondary.  (dash_pattern_tertiary 1).  @>
@*2 \§dash pattern tertiary> $\longrightarrow$ \§dash pattern secondary>.

@<Define rules@>=
@=dash_pattern_tertiary: dash_pattern_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) dash_pattern expression.  @>
@*1 \§dash pattern expression>.
\initials{LDF Undated.}

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> dash_pattern_expression@>

@q *** (3) dash_pattern expression --> dash_pattern_tertiary.  @>
@*2 \§dash pattern expression> $\longrightarrow$ \§dash pattern tertiary>.
\initials{LDF Undated.}

@<Define rules@>=
@=dash_pattern_expression: dash_pattern_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

