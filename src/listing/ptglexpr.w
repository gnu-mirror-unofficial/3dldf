@q ptglexpr.w @> 
@q Created by Laurence Finston Thu Jan 20 12:13:01 CET 2005 @>
       

@q * (0) triangle expressions.  @>
@** \§triangle expressions>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Created this file.
\ENDLOG 

@q * (1) triangle primary.  @>
@* \§triangle primary>.
\initials{LDF 2005.01.20.}
  
\LOG
\initials{LDF 2005.01.20.}  
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> triangle_primary@>@/

@q ** (2) triangle_primary --> triangle_variable.@>
@*1 \§triangle primary> $\longrightarrow$ \§triangle variable>.  
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=triangle_primary: triangle_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Triangle>(
                                  static_cast<Triangle*>(
                                     entry->object))); 
};

@q ** (2) triangle_primary --> LEFT_PARENTHESIS triangle_expression @>
@q ** (2) RIGHT_PARENTHESIS.                                        @> 

@*1 \§triangle primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS} 
\§triangle expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=triangle_primary: LEFT_PARENTHESIS triangle_expression RIGHT_PARENTHESIS@>@/
{
   @=$$@> = @=$2@>;

};

@q ** (2) triangle_primary --> LAST @>
@q ** (2) triangle_vector_expression.@>

@*1 \§triangle primary> $\longrightarrow$ 
\.{LAST} \§triangle vector expression>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=triangle_primary: LAST triangle_vector_expression@>@/
{ 

   Triangle* r;

         r = create_new<Triangle>(0);

   Pointer_Vector<Triangle>* pv 
      = static_cast<Pointer_Vector<Triangle>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.01.14.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Triangle>*>(0))
      {

          delete r;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.01.14.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete r;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.01.14.}

@<Define rules@>=

   else 
      {
         *r = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(r); 
      }
@q ******* (7) @> 

};

@q * (1) triangle secondary.@>
@* \§triangle secondary>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> triangle_secondary@>
  
@q ** (2) triangle secondary --> triangle_primary.@>
@*1 \§triangle secondary> $\longrightarrow$ \§triangle primary>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=triangle_secondary: triangle_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) triangle secondary --> triangle_secondary transformer.@>
@*1 \§triangle secondary> $\longrightarrow$ 
\§triangle secondary> \§transformer>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.

\initials{LDF 2006.01.20.}
@:BUG FIX@> BUG FIX:  Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=triangle_secondary: triangle_secondary transformer@>@/
{

  Triangle* p = static_cast<Triangle*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q * (1)  triangle tertiary.@>
@* \§triangle tertiary>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> triangle_tertiary@>

@q ** (2) triangle tertiary --> triangle_secondary.  @>
@*1 \§triangle tertiary> $\longrightarrow$ \§triangle secondary>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=triangle_tertiary: triangle_secondary@>@/
{

   @=$$@> = @=$1@>;

};

@q * (1) triangle expression.  @>
@* \§triangle expression>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> triangle_expression@>

@q ** (2) triangle expression --> triangle_tertiary.  @>
@*1 \§triangle expression> $\longrightarrow$ \§triangle tertiary>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=triangle_expression: triangle_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

