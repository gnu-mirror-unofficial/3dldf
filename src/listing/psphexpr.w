@q psphexpr.w @> 
@q Created by Laurence Finston Mo Jun  6 12:50:36 CEST 2005 @>
       

@q Laurence.Finston@@gmx.de  (@@ stands for a single ``at'' sign.)@>

@q * (0) sphere expressions.  @>
@** sphere expressions.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Created this file.
\ENDLOG 

@q * (1) sphere_primary.  @>
@* \§sphere primary>.
\initials{LDF 2005.06.06.}  

\LOG
\initials{LDF 2005.06.06.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_primary@>@/

@q ** (2) sphere_primary --> sphere_variable.@>
@*1 \§sphere primary> $\longrightarrow$ \§sphere variable>.  

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=sphere_primary: sphere_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Sphere>(
                                  static_cast<Sphere*>(
                                     entry->object))); 

};

@q ** (2) sphere_primary --> LEFT_PARENTHESIS sphere_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§sphere primary> $\longrightarrow$ \.{\LP} 
\§sphere expression> \.{\RP}.

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_primary: LEFT_PARENTHESIS sphere_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) sphere_primary --> LAST @>
@q ***** (5) sphere_vector_expression.@>

@*4 \§sphere primary> $\longrightarrow$ 
\.{LAST} \§sphere vector expression>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=sphere_primary: LAST sphere_vector_expression@>@/
{ 

   Sphere* c;

         c = create_new<Sphere>(0);

   Pointer_Vector<Sphere>* pv 
      = static_cast<Pointer_Vector<Sphere>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.06.06.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Sphere>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.06.06.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.06.06.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) sphere_secondary.  @>
@* \§sphere secondary>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_secondary@>
  
@q ** (2) sphere secondary --> sphere_primary.@>
@*1 \§sphere secondary> $\longrightarrow$ \§sphere primary>.

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_secondary: sphere_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: sphere_secondary --> sphere_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q ** (2) sphere secondary --> sphere_secondary transformer.  @>
@*1 \§sphere secondary> $\longrightarrow$ \§sphere secondary> 
\§transformer>.

\LOG
\initials{LDF 2005.06.06.}
Added this rule.

\initials{LDF 2006.01.20.}
@:BUG FIX@> BUG FIX:  Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=sphere_secondary: sphere_secondary transformer@>@/
{

  Sphere* p = static_cast<Sphere*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q * (1) sphere tertiary.@>
@* \§sphere tertiary>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_tertiary@>

@q ** (2) sphere tertiary --> sphere_secondary.  @>
@*1 \§sphere tertiary> $\longrightarrow$ \§sphere secondary>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_tertiary: sphere_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) sphere expression.@>
@* \§sphere expression>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_expression@>

@q ** (2) sphere expression --> sphere_tertiary.  @>
@*1 \§sphere expression> $\longrightarrow$ \§sphere tertiary>.

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_expression: sphere_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

