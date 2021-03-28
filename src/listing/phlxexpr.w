@q phlxexpr.w @> 
@q Created by Laurence Finston Do Mai 19 12:06:49 CEST 2005 @>
       

@q * (0) helix expressions.  @>
@** helix expressions.

\LOG
\initials{LDF 2005.05.19.}
Created this file.
\ENDLOG 

@q * (1) helix_primary.  @>
@* \§helix primary>.
  
\LOG
\initials{LDF 2005.05.19.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> helix_primary@>@/

@q ** (2) helix_primary --> helix_variable.@>
@*1 \§helix primary> $\longrightarrow$ \§helix variable>.  

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=helix_primary: helix_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Helix>(
                                  static_cast<Helix*>(
                                     entry->object))); 

};

@q ** (2) helix_primary --> LEFT_PARENTHESIS helix_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§helix primary> $\longrightarrow$ \.{\LP} 
\§helix expression> \.{\RP}.

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=helix_primary: LEFT_PARENTHESIS helix_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) helix_primary --> LAST @>
@q ***** (5) helix_vector_expression.@>

@*4 \§helix primary> $\longrightarrow$ 
\.{LAST} \§helix vector expression>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=helix_primary: LAST helix_vector_expression@>@/
{ 

   Helix* c;

         c = create_new<Helix>(0);

   Pointer_Vector<Helix>* pv 
      = static_cast<Pointer_Vector<Helix>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.05.19.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Helix>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.05.19.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.05.19.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) helix_secondary.  @>
@* \§helix secondary>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> helix_secondary@>
  
@q ** (2) helix secondary --> helix_primary.@>
@*1 \§helix secondary> $\longrightarrow$ \§helix primary>.

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=helix_secondary: helix_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) helix secondary --> helix_secondary transformer.  @>
@*1 \§helix secondary> $\longrightarrow$ \§helix secondary> 
\§transformer>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.

\initials{LDF 2005.12.20.}
@:BUG FIX@> BUG FIX:  Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=helix_secondary: helix_secondary transformer@>@/
{

  Helix* p = static_cast<Helix*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  @=$$@> = static_cast<void*>(p); 

  delete t;

};

@q * (1) helix tertiary.@>
@* \§helix tertiary>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> helix_tertiary@>

@q ** (2) helix tertiary --> helix_secondary.  @>
@*1 \§helix tertiary> $\longrightarrow$ \§helix secondary>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=helix_tertiary: helix_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) helix expression.@>
@* \§helix expression>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> helix_expression@>

@q ** (2) helix expression --> helix_tertiary.  @>
@*1 \§helix expression> $\longrightarrow$ \§helix tertiary>.

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=helix_expression: helix_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

