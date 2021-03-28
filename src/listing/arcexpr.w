@q arcexpr.w @> 

@q * (0) arc expressions.  @>
@** arc expressions.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Created this file.
\ENDLOG 

@q * (1) arc_primary.  @>
@* \§arc primary>.
\initials{LDF 2007.10.13.}  

\LOG
\initials{LDF 2007.10.13.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> arc_primary@>@/

@q ** (2) arc_primary --> arc_variable.@>
@*1 \§arc primary> $\longrightarrow$ \§arc variable>.  

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=arc_primary: arc_variable@>@/
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) ||  entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (   entry == static_cast<Id_Map_Entry_Node>(0) 
              || entry->object == static_cast<void*>(0))|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Arc>(
                                  static_cast<Arc*>(
                                     entry->object))); 

};

@q ** (2) arc_primary --> LEFT_PARENTHESIS arc_expression @> 
@q ** (2) RIGHT_PARENTHESIS                               @>

@*1 \§arc primary> $\longrightarrow$ \.{\LP} 
\§arc expression> \.{\RP}.

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_primary: LEFT_PARENTHESIS arc_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) arc_primary --> LAST @>
@q ***** (5) arc_vector_expression.@>

@*4 \§arc primary> $\longrightarrow$ 
\.{LAST} \§arc vector expression>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=arc_primary: LAST arc_vector_expression@>@/
{ 

   Arc* c;

         c = create_new<Arc>(0);

   Pointer_Vector<Arc>* pv 
      = static_cast<Pointer_Vector<Arc>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == static_cast<Pointer_Vector<Arc>*>(0)|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2007.10.13.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Arc>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == static_cast<Pointer_Vector<Arc>*>(0))|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2007.10.13.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2007.10.13.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) arc_secondary.  @>
@* \§arc secondary>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> arc_secondary@>
  
@q ** (2) arc secondary --> arc_primary.@>
@*1 \§arc secondary> $\longrightarrow$ \§arc primary>.

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_secondary: arc_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) arc secondary --> arc_secondary transformer.  @>
@*1 \§arc secondary> $\longrightarrow$ \§arc secondary> 
\§transformer>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_secondary: arc_secondary transformer@>@/
{

  Arc* p = static_cast<Arc*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  @=$$@> = static_cast<void*>(p); 

  delete t;

};

@q * (1) arc tertiary.@>
@* \§arc tertiary>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> arc_tertiary@>

@q ** (2) arc tertiary --> arc_secondary.  @>
@*1 \§arc tertiary> $\longrightarrow$ \§arc secondary>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_tertiary: arc_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) arc expression.@>
@* \§arc expression>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> arc_expression@>

@q ** (2) arc expression --> arc_tertiary.  @>
@*1 \§arc expression> $\longrightarrow$ \§arc tertiary>.

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_expression: arc_tertiary@>@/
{

  @=$$@> = @=$1@>;

};
