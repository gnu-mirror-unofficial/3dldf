@q pconexpr.w @> 
@q Created by Laurence Finston Di Mai 24 14:37:37 CEST 2005 @>
       

@q * (0) cone expressions.  @>
@** cone expressions.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Created this file.
\ENDLOG 

@q * (1) cone_primary.  @>
@* \§cone primary>.
  
\LOG
\initials{LDF 2005.05.24.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cone_primary@>@/

@q ** (2) cone_primary --> cone_variable.@>
@*1 \§cone primary> $\longrightarrow$ \§cone variable>.  

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=cone_primary: cone_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Cone>(
                                  static_cast<Cone*>(
                                     entry->object))); 

};

@q ** (2) cone_primary --> LEFT_PARENTHESIS cone_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§cone primary> $\longrightarrow$ \.{\LP} 
\§cone expression> \.{\RP}.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cone_primary: LEFT_PARENTHESIS cone_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) cone_primary --> LAST @>
@q ***** (5) cone_vector_expression.@>

@*4 \§cone primary> $\longrightarrow$ 
\.{LAST} \§cone vector expression>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=cone_primary: LAST cone_vector_expression@>@/
{ 
   Cone* c;

         c = create_new<Cone>(0);

   Pointer_Vector<Cone>* pv 
      = static_cast<Pointer_Vector<Cone>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.05.24.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Cone>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.05.24.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.05.24.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) cone_secondary.  @>
@* \§cone secondary>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cone_secondary@>
  
@q ** (2) cone secondary --> cone_primary.@>
@*1 \§cone secondary> $\longrightarrow$ \§cone primary>.

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cone_secondary: cone_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: cone_secondary --> cone_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q ** (2) cone secondary --> cone_secondary transformer.  @>
@*1 \§cone secondary> $\longrightarrow$ \§cone secondary> 
\§transformer>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.

\initials{LDF 2005.12.16.}
@:BUG FIX@> BUG FIX:  Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=cone_secondary: cone_secondary transformer@>@/
{

  Cone* p = static_cast<Cone*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q * (1) cone tertiary.@>
@* \§cone tertiary>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cone_tertiary@>

@q ** (2) cone tertiary --> cone_secondary.  @>
@*1 \§cone tertiary> $\longrightarrow$ \§cone secondary>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cone_tertiary: cone_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) cone expression.@>
@* \§cone expression>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cone_expression@>

@q ** (2) cone expression --> cone_tertiary.  @>
@*1 \§cone expression> $\longrightarrow$ \§cone tertiary>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cone_expression: cone_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

