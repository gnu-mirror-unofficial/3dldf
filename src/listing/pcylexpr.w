@q pcylexpr.w @> 
@q Created by Laurence Finston Mi Mai 25 16:14:32 CEST 2005 @>
       

@q * (0) cylinder expressions.  @>
@** cylinder expressions.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Created this file.
\ENDLOG 

@q * (1) cylinder_primary.  @>
@* \§cylinder primary>.
  
\LOG
\initials{LDF 2005.05.25.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cylinder_primary@>@/

@q ** (2) cylinder_primary --> cylinder_variable.@>
@*1 \§cylinder primary> $\longrightarrow$ \§cylinder variable>.  

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=cylinder_primary: cylinder_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Cylinder>(
                                  static_cast<Cylinder*>(
                                     entry->object))); 

};

@q ** (2) cylinder_primary --> LEFT_PARENTHESIS cylinder_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§cylinder primary> $\longrightarrow$ \.{\LP} 
\§cylinder expression> \.{\RP}.

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cylinder_primary: LEFT_PARENTHESIS cylinder_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) cylinder_primary --> LAST @>
@q ***** (5) cylinder_vector_expression.@>

@*4 \§cylinder primary> $\longrightarrow$ 
\.{LAST} \§cylinder vector expression>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=cylinder_primary: LAST cylinder_vector_expression@>@/
{ 

@q ******* (7) @> 

   Cylinder* c;

         c = create_new<Cylinder>(0);

@q ******* (7) @> 

   Pointer_Vector<Cylinder>* pv 
      = static_cast<Pointer_Vector<Cylinder>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.05.25.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Cylinder>*>(0))
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.05.25.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.05.25.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) cylinder_secondary.  @>
@* \§cylinder secondary>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cylinder_secondary@>
  
@q ** (2) cylinder secondary --> cylinder_primary.@>
@*1 \§cylinder secondary> $\longrightarrow$ \§cylinder primary>.

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cylinder_secondary: cylinder_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: cylinder_secondary --> cylinder_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q ** (2) cylinder secondary --> cylinder_secondary transformer.  @>
@*1 \§cylinder secondary> $\longrightarrow$ \§cylinder secondary> 
\§transformer>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.

\initials{LDF 2005.12.16.}
@:BUG FIX@> BUG FIX: Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=cylinder_secondary: cylinder_secondary transformer@>@/
{

  Cylinder* p = static_cast<Cylinder*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q * (1) cylinder tertiary.@>
@* \§cylinder tertiary>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cylinder_tertiary@>

@q ** (2) cylinder tertiary --> cylinder_secondary.  @>
@*1 \§cylinder tertiary> $\longrightarrow$ \§cylinder secondary>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cylinder_tertiary: cylinder_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) cylinder expression.@>
@* \§cylinder expression>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cylinder_expression@>

@q ** (2) cylinder expression --> cylinder_tertiary.  @>
@*1 \§cylinder expression> $\longrightarrow$ \§cylinder tertiary>.

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cylinder_expression: cylinder_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

