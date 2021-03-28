@q peldexpr.w @> 
@q Created by Laurence Finston Do Mai 26 14:12:04 CEST 2005 @>
       

@q * (0) ellipsoid expressions.  @>
@** ellipsoid expressions.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Created this file.
\ENDLOG 

@q * (1) ellipsoid_primary.  @>
@* \§ellipsoid primary>.
\initials{LDF 2005.05.26.}  

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_primary@>@/

@q ** (2) ellipsoid_primary --> ellipsoid_variable.@>
@*1 \§ellipsoid primary> $\longrightarrow$ \§ellipsoid variable>.  

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=ellipsoid_primary: ellipsoid_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
  {

      @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Ellipsoid>(
                                  static_cast<Ellipsoid*>(
                                     entry->object))); 

};

@q ** (2) ellipsoid_primary --> LEFT_PARENTHESIS ellipsoid_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§ellipsoid primary> $\longrightarrow$ \.{\LP} 
\§ellipsoid expression> \.{\RP}.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_primary: LEFT_PARENTHESIS ellipsoid_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) ellipsoid_primary --> LAST @>
@q ***** (5) ellipsoid_vector_expression.@>

@*4 \§ellipsoid primary> $\longrightarrow$ 
\.{LAST} \§ellipsoid vector expression>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=ellipsoid_primary: LAST ellipsoid_vector_expression@>@/
{ 
   Ellipsoid* c;

         c = create_new<Ellipsoid>(0);

   Pointer_Vector<Ellipsoid>* pv 
      = static_cast<Pointer_Vector<Ellipsoid>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.05.26.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Ellipsoid>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.05.26.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.05.26.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) ellipsoid_secondary.  @>
@* \§ellipsoid secondary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_secondary@>
  
@q ** (2) ellipsoid secondary --> ellipsoid_primary.@>
@*1 \§ellipsoid secondary> $\longrightarrow$ \§ellipsoid primary>.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_secondary: ellipsoid_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) ellipsoid secondary --> ellipsoid_secondary transformer.  @>
@*1 \§ellipsoid secondary> $\longrightarrow$ \§ellipsoid secondary> 
\§transformer>.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.

\initials{LDF 2005.12.16.}
@:BUG FIX@> BUG FIX: Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=ellipsoid_secondary: ellipsoid_secondary transformer@>@/
{

  Ellipsoid* p = static_cast<Ellipsoid*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q * (1) ellipsoid tertiary.@>
@* \§ellipsoid tertiary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_tertiary@>

@q ** (2) ellipsoid tertiary --> ellipsoid_secondary.  @>
@*1 \§ellipsoid tertiary> $\longrightarrow$ \§ellipsoid secondary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_tertiary: ellipsoid_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) ellipsoid expression.@>
@* \§ellipsoid expression>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_expression@>

@q ** (2) ellipsoid expression --> ellipsoid_tertiary.  @>
@*1 \§ellipsoid expression> $\longrightarrow$ \§ellipsoid tertiary>.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_expression: ellipsoid_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

