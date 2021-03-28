@q pprdexpr.w @> 
@q Created by Laurence Finston Fri Jan 20 21:46:37 CET 2006 @>
       

@q * (0) paraboloid expressions.  @>
@** paraboloid expressions.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Created this file.
\ENDLOG 

@q * (1) paraboloid_primary.  @>
@* \§paraboloid primary>.
\initials{LDF 2006.01.20.}  

\LOG
\initials{LDF 2006.01.20.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> paraboloid_primary@>@/

@q ** (2) paraboloid_primary --> paraboloid_variable.@>
@*1 \§paraboloid primary> $\longrightarrow$ \§paraboloid variable>.  

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=paraboloid_primary: paraboloid_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Paraboloid>(
                                  static_cast<Paraboloid*>(
                                     entry->object))); 

};

@q ** (2) paraboloid_primary --> LEFT_PARENTHESIS paraboloid_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§paraboloid primary> $\longrightarrow$ \.{\LP} 
\§paraboloid expression> \.{\RP}.

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_primary: LEFT_PARENTHESIS paraboloid_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) paraboloid_primary --> LAST @>
@q ***** (5) paraboloid_vector_expression.@>

@*4 \§paraboloid primary> $\longrightarrow$ 
\.{LAST} \§paraboloid vector expression>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=paraboloid_primary: LAST paraboloid_vector_expression@>@/
{ 
   Paraboloid* c;

         c = create_new<Paraboloid>(0);

   Pointer_Vector<Paraboloid>* pv 
      = static_cast<Pointer_Vector<Paraboloid>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2006.01.20.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Paraboloid>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2006.01.20.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2006.01.20.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) paraboloid_secondary.  @>
@* \§paraboloid secondary>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> paraboloid_secondary@>
  
@q ** (2) paraboloid secondary --> paraboloid_primary.@>
@*1 \§paraboloid secondary> $\longrightarrow$ \§paraboloid primary>.

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_secondary: paraboloid_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) paraboloid secondary --> paraboloid_secondary transformer.  @>
@*1 \§paraboloid secondary> $\longrightarrow$ \§paraboloid secondary> 
\§transformer>.

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_secondary: paraboloid_secondary transformer@>@/
{

  Paraboloid* p = static_cast<Paraboloid*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q * (1) paraboloid tertiary.@>
@* \§paraboloid tertiary>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> paraboloid_tertiary@>

@q ** (2) paraboloid tertiary --> paraboloid_secondary.  @>
@*1 \§paraboloid tertiary> $\longrightarrow$ \§paraboloid secondary>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_tertiary: paraboloid_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) paraboloid expression.@>
@* \§paraboloid expression>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> paraboloid_expression@>

@q ** (2) paraboloid expression --> paraboloid_tertiary.  @>
@*1 \§paraboloid expression> $\longrightarrow$ \§paraboloid tertiary>.

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_expression: paraboloid_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

