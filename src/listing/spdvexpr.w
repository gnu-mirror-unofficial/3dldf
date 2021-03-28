@q spdvexpr.w @> 
@q Created by Laurence Finston Mon Nov  9 13:22:10 CET 2009 @>
       

@q Laurence.Finston@@gmx.de  (@@ stands for a single ``at'' sign.)@>

@q * (0) sphere_development expressions.  @>
@** sphere_development expressions.
\initials{LDF 2009.11.09.}

\LOG
\initials{LDF 2009.11.09.}
Created this file.
\ENDLOG 

@q * (1) sphere_development_primary.  @>
@* \§sphere_development primary>.
\initials{LDF 2009.11.09.}  

\LOG
\initials{LDF 2009.11.09.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_development_primary@>@/

@q ** (2) sphere_development_primary --> sphere_development_variable.@>
@*1 \§sphere_development primary> $\longrightarrow$ \§sphere_development variable>.  

\LOG
\initials{LDF 2009.11.09.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=sphere_development_primary: sphere_development_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Sphere_Development>(
                                  static_cast<Sphere_Development*>(
                                     entry->object))); 

};

@q ** (2) sphere_development_primary --> LEFT_PARENTHESIS sphere_development_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§sphere_development primary> $\longrightarrow$ \.{\LP} 
\§sphere_development expression> \.{\RP}.

\LOG
\initials{LDF 2009.11.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_primary: LEFT_PARENTHESIS sphere_development_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) sphere_development_primary --> LAST @>
@q ***** (5) sphere_development_vector_expression.@>

@*4 \§sphere_development primary> $\longrightarrow$ 
\.{LAST} \§sphere_development vector expression>.
\initials{LDF 2009.11.09.}

\LOG
\initials{LDF 2009.11.09.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=sphere_development_primary: LAST sphere_development_vector_expression@>@/
{ 

   Sphere_Development* c;

         c = create_new<Sphere_Development>(0);

   Pointer_Vector<Sphere_Development>* pv 
      = static_cast<Pointer_Vector<Sphere_Development>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2009.11.09.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Sphere_Development>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2009.11.09.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2009.11.09.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) sphere_development_secondary.  @>
@* \§sphere_development secondary>.
\initials{LDF 2009.11.09.}

\LOG
\initials{LDF 2009.11.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_development_secondary@>
  
@q ** (2) sphere_development secondary --> sphere_development_primary.@>
@*1 \§sphere_development secondary> $\longrightarrow$ \§sphere_development primary>.

\LOG
\initials{LDF 2009.11.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_secondary: sphere_development_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: sphere_development_secondary --> sphere_development_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q ** (2) sphere_development secondary --> sphere_development_secondary transformer.  @>
@*1 \§sphere_development secondary> $\longrightarrow$ \§sphere_development secondary> 
\§transformer>.

\LOG
\initials{LDF 2009.11.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_secondary: sphere_development_secondary transformer@>@/
{

  Sphere_Development* p = static_cast<Sphere_Development*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q * (1) sphere_development tertiary.@>
@* \§sphere_development tertiary>.
\initials{LDF 2009.11.09.}

\LOG
\initials{LDF 2009.11.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_development_tertiary@>

@q ** (2) sphere_development tertiary --> sphere_development_secondary.  @>
@*1 \§sphere_development tertiary> $\longrightarrow$ \§sphere_development secondary>.
\initials{LDF 2009.11.09.}

\LOG
\initials{LDF 2009.11.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_tertiary: sphere_development_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) sphere_development expression.@>
@* \§sphere_development expression>.
\initials{LDF 2009.11.09.}

\LOG
\initials{LDF 2009.11.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_development_expression@>

@q ** (2) sphere_development expression --> sphere_development_tertiary.  @>
@*1 \§sphere_development expression> $\longrightarrow$ \§sphere_development tertiary>.

\LOG
\initials{LDF 2009.11.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_expression: sphere_development_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

