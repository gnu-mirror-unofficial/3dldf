@q phypexpr.w @> 
@q Created by Laurence Finston Mon Nov  7 19:41:56 CET 2005 @>
       

@q * (0) hyperbola expressions.  @>
@** hyperbola expressions.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Created this file.
\ENDLOG 

@q * (1) hyperbola_primary.  @>
@* \§hyperbola primary>.
\initials{LDF 2005.11.14.}  

\LOG
\initials{LDF 2005.11.14.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> hyperbola_primary@>@/

@q ** (2) hyperbola_primary --> hyperbola_variable.@>
@*1 \§hyperbola primary> $\longrightarrow$ \§hyperbola variable>.  

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=hyperbola_primary: hyperbola_variable@>@/
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Hyperbola>(
                                  static_cast<Hyperbola*>(
                                     entry->object))); 

};

@q ** (2) hyperbola_primary --> LEFT_PARENTHESIS hyperbola_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§hyperbola primary> $\longrightarrow$ \.{\LP} 
\§hyperbola expression> \.{\RP}.

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=hyperbola_primary: LEFT_PARENTHESIS hyperbola_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) hyperbola_primary --> LAST @>
@q ***** (5) hyperbola_vector_expression.@>

@*4 \§hyperbola primary> $\longrightarrow$ 
\.{LAST} \§hyperbola vector expression>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=hyperbola_primary: LAST hyperbola_vector_expression@>@/
{ 

   Hyperbola* c;

         c = create_new<Hyperbola>(0);

   Pointer_Vector<Hyperbola>* pv 
      = static_cast<Pointer_Vector<Hyperbola>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.11.14.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Hyperbola>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.11.14.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.11.14.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q ** (2) hyperbola_primary --> GET_HYPERBOLA point_vector_primary@>
@*1 \§hyperbola primary> $\longrightarrow$ \.{GET\_HYPERBOLA}
\§point vector primary>.
\initials{LDF 2007.07.09.}

\LOG
\initials{LDF 2007.07.09.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=

@=hyperbola_primary: GET_HYPERBOLA point_vector_primary numeric_primary@>@/ 
{

   @=$$@> = get_conic_section_func<Hyperbola>(
                                     static_cast<Pointer_Vector<Point>*>(@=$2@>), 
                                     static_cast<int>(@=$3@>),
                                     Shape::HYPERBOLA_TYPE,
                                     static_cast<Hyperbola*>(0),
                                     parameter);

};

@q ** (2) hyperbola_primary --> GET_HYPERBOLA conic_section_lattice_expression@>
@*1 \§hyperbola primary> $\longrightarrow$ \.{GET\_HYPERBOLA}
\§conic section lattice expression>.
\initials{LDF 2007.09.26.}

\LOG
\initials{LDF 2007.09.26.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=

@=hyperbola_primary: GET_HYPERBOLA conic_section_lattice_expression@>@/ 
{

   Conic_Section_Lattice* c = static_cast<Conic_Section_Lattice*>(@=$2@>);

   @=$$@> = (c) ?  c->get_hyperbola(static_cast<Scanner_Node>(parameter))
                :  @=$$@> = static_cast<void*>(0);

};

@q * (1) hyperbola_secondary.  @>
@* \§hyperbola secondary>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> hyperbola_secondary@>
  
@q ** (2) hyperbola secondary --> hyperbola_primary.@>
@*1 \§hyperbola secondary> $\longrightarrow$ \§hyperbola primary>.

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=hyperbola_secondary: hyperbola_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: hyperbola_secondary --> hyperbola_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q ** (2) hyperbola secondary --> hyperbola_secondary transformer.  @>
@*1 \§hyperbola secondary> $\longrightarrow$ \§hyperbola secondary> 
\§transformer>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this rule.

\initials{LDF 2005.12.20.}
@:BUG FIX@> BUG FIX:  Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=hyperbola_secondary: hyperbola_secondary transformer@>@/
{

  Hyperbola* p = static_cast<Hyperbola*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  @=$$@> = static_cast<void*>(p); 

  delete t;

};

@q * (1) hyperbola tertiary.@>
@* \§hyperbola tertiary>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> hyperbola_tertiary@>

@q ** (2) hyperbola tertiary --> hyperbola_secondary.  @>
@*1 \§hyperbola tertiary> $\longrightarrow$ \§hyperbola secondary>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=hyperbola_tertiary: hyperbola_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) hyperbola expression.@>
@* \§hyperbola expression>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> hyperbola_expression@>

@q ** (2) hyperbola expression --> hyperbola_tertiary.  @>
@*1 \§hyperbola expression> $\longrightarrow$ \§hyperbola tertiary>.

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=hyperbola_expression: hyperbola_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

