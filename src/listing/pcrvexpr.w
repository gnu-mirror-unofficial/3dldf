@q pcrvexpr.w @> 
@q Created by Laurence Finston Tue Dec 14 18:41:42 CET 2004 @>
     

@q * (0) |circle_vector| expressions.@>
@** \§circle vector> expressions.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |circle_vector| primary.  @>
@* \§circle vector primary>.
\initials{LDF 2004.12.14.}
  
\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> circle_vector_primary@>@/

@q ** (2) circle_vector_primary --> circle_vector_variable.@>
@*1 \§circle vector primary> $\longrightarrow$ 
\§circle vector variable>.  
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=circle_vector_primary: circle_vector_variable@>@/ 
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

        typedef Pointer_Vector<Circle> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) circle_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) circle_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§circle vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§circle vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=circle_vector_primary: LEFT_PARENTHESIS@>@/ 
@=circle_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) circle_vector secondary.@>

@* \§circle vector secondary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> circle_vector_secondary@>
  
@q ** (2) circle_vector secondary --> circle_vector_primary.@>
@*1 \§circle vector secondary> $\longrightarrow$ 
\§circle vector primary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=circle_vector_secondary: circle_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q *** (3) circle_vector_secondary --> circle_secondary REFLECTED_OFF @>
@q *** (3) path_expression WITH_DIRECTION point_expression.  @>

@*2 \§circle vector secondary> $\longrightarrow$ \§circle secondary> 
\.{REFLECTED\_OFF} \§path expression>
\.{WITH\_DIRECTION} \§point expression>.

\LOG
\initials{LDF 2004.12.14.}
Added this rule.

\initials{LDF 2005.10.24.}
Changed |path_like_expression| to |path_expression|.
Removed debugging code.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=circle_vector_secondary: circle_secondary REFLECTED_OFF @>
@=path_expression WITH_DIRECTION point_expression@>@/ 
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    typedef Pointer_Vector<Circle> PV;

    PV* pv = new PV;

    *pv += create_new<Circle>(0, scanner_node);
    *pv += create_new<Circle>(0, scanner_node);
    *pv += create_new<Circle>(0, scanner_node);
    *pv += create_new<Circle>(0, scanner_node);

@q ******* (7) Call |Scan_Parse::reflect_off_func<Circle>()|.@> 

@ Call |Scan_Parse::reflect_off_func<Circle>()|.
\initials{LDF 2004.12.14.}

@<Define rules@>=

   int status = reflect_off_func<Circle>(scanner_node,
                                         static_cast<Circle*>(@=$1@>), 
                                         static_cast<Circle*>(@=$3@>), 
                                         static_cast<Point*>(@=$5@>), 
                                         pv);          

@q ******** (8) Error handling:  |status != 0|.         @> 
@q ******** (8) |Scan_Parse::reflect_off_func()| failed.@> 

@ Error handling:  |status != 0|.  
|Scan_Parse::reflect_off_func()| failed.
\initials{LDF 2004.12.14.}

@<Define rules@>=                        
  
  if (status != 0)
     {
       
       @=$$@> = static_cast<void*>(0);

     } /* |if (status != 0)|  */
      
@q ******** (8) |Scan_Parse::reflect_off_func()| succeeded.@> 

@ |Scan_Parse::reflect_off_func()| succeeded.
\initials{LDF 2004.12.14.}

@<Define rules@>=                        

  else /* |status == 0|  */
     {
       
          @=$$@> = static_cast<void*>(pv);

     }  /* |else| (|status == 0|)  */

@q ******* (7).@> 

};

@q * (1) circle_vector tertiary.  @>

@* \§circle vector tertiary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> circle_vector_tertiary@>

@q ***** (5) circle_vector tertiary --> circle_vector_secondary.@>
@ \§circle vector tertiary> $\longrightarrow$ 
\§circle vector secondary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=circle_vector_tertiary: circle_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) circle_vector expression.@>
@* \§circle vector expression>.

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> circle_vector_expression@>

@q ** (2) circle_vector expression --> circle_vector_tertiary.  @>
@*1 \§circle vector expression> $\longrightarrow$ 
\§circle vector tertiary>.

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=circle_vector_expression: circle_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

