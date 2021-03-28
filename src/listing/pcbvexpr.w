@q pcbvexpr.w @> 
@q Created by Laurence Finston Tue Dec 14 22:14:58 CET 2004 @>
     

@q * (0) |cuboid_vector| expressions.@>
@** \§cuboid vector> expressions.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |cuboid_vector| primary.  @>
@* \§cuboid vector primary>.
\initials{LDF 2004.12.14.}
  
\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cuboid_vector_primary@>@/

@q ** (2) cuboid_vector_primary --> cuboid_vector_variable.@>
@*1 \§cuboid vector primary> $\longrightarrow$ 
\§cuboid vector variable>.  
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=cuboid_vector_primary: cuboid_vector_variable@>@/ 
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2004.12.14.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2004.12.14.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Cuboid> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) cuboid_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) cuboid_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§cuboid vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§cuboid vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cuboid_vector_primary: LEFT_PARENTHESIS@>@/ 
@=cuboid_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) cuboid_vector secondary.@>

@* \§cuboid vector secondary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> cuboid_vector_secondary@>
  
@q ** (2) cuboid_vector secondary --> cuboid_vector_primary.@>
@*1 \§cuboid vector secondary> $\longrightarrow$ 
\§cuboid vector primary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cuboid_vector_secondary: cuboid_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q *** (3) cuboid_vector_secondary --> cuboid_secondary REFLECTED_OFF @>
@q *** (3) path_expression WITH_DIRECTION point_expression.           @>

@*2 \§cuboid vector secondary> $\longrightarrow$ \§cuboid secondary> 
\.{REFLECTED\_OFF} \§path expression>
\.{WITH\_DIRECTION} \§point expression>.

\LOG
\initials{LDF 2004.12.14.}
Added this rule.

\initials{LDF 2004.12.15.}
Working on the function |Solid::reflect_off()|.

\initials{LDF 2005.10.24.}
Changed |path_like_expression| to |path_expression|.
Removed debugging code.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=cuboid_vector_secondary: cuboid_secondary REFLECTED_OFF @>
@=path_expression WITH_DIRECTION point_expression@>@/ 
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter); 

    typedef Pointer_Vector<Cuboid> PV;

    PV* pv = new PV;

    *pv += create_new<Cuboid>(0, scanner_node);
    *pv += create_new<Cuboid>(0, scanner_node);
    *pv += create_new<Cuboid>(0, scanner_node);
    *pv += create_new<Cuboid>(0, scanner_node);

@q ******* (7) Call |Scan_Parse::reflect_off_func<Cuboid>()|.@> 

@ Call |Scan_Parse::reflect_off_func<Cuboid>()|.
\initials{LDF 2004.12.14.}

@<Define rules@>=

   int status = reflect_off_func<Cuboid>(static_cast<Scanner_Node>(parameter),
                                         static_cast<Cuboid*>(@=$1@>), 
                                         static_cast<Path*>(@=$3@>), 
                                         static_cast<Point*>(@=$5@>), 
                                         pv);          

   @=$$@> = (status == 0) ? static_cast<void*>(pv) : 0;

};

@q * (1) cuboid_vector tertiary.  @>

@* \§cuboid vector tertiary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> cuboid_vector_tertiary@>

@q ***** (5) cuboid_vector tertiary --> cuboid_vector_secondary.@>
@ \§cuboid vector tertiary> $\longrightarrow$ 
\§cuboid vector secondary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cuboid_vector_tertiary: cuboid_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) cuboid_vector expression.@>
@* \§cuboid vector expression>.

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cuboid_vector_expression@>

@q ** (2) cuboid_vector expression --> cuboid_vector_tertiary.@>
@*1 \§cuboid vector expression> $\longrightarrow$ 
\§cuboid vector tertiary>.

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cuboid_vector_expression: cuboid_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

