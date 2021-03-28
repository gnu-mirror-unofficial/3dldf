@q prcvexpr.w @> 
@q Created by Laurence Finston Tue Dec 14 19:37:03 CET 2004 @>
     

@q * (0) |rectangle_vector| expressions.@>
@** \§rectangle vector> expressions.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |rectangle_vector| primary.  @>
@* \§rectangle vector primary>.
\initials{LDF 2004.12.14.}
  
\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> rectangle_vector_primary@>@/

@q ** (2) rectangle_vector_primary --> rectangle_vector_variable.@>
@*1 \§rectangle vector primary> $\longrightarrow$ 
\§rectangle vector variable>.  
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=rectangle_vector_primary: rectangle_vector_variable@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `rectangle_vector_primary --> "
                << "rectangle_vector_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2004.12.14.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      cerr_strm << thread_name 
                << "ERROR! In `yyparse()', rule " 
                << endl 
                << "Rule `rectangle_vector_primary --> "
                << "rectangle_vector_variable':"
                << endl << "`entry' == 0 or `entry->object' == 0."
                << endl 
                << "Setting `rectangle_vector_primary' "
                << "to 0 and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2004.12.14.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Rectangle> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) rectangle_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) rectangle_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§rectangle vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§rectangle vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=rectangle_vector_primary: LEFT_PARENTHESIS@>@/ 
@=rectangle_vector_expression RIGHT_PARENTHESIS@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                << "*** Parser:  `rectangle_vector_primary "
                << "--> LEFT_PARENTHESIS rectangle_vector_expression "
                << "RIGHT_PARENTHESIS'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) rectangle_vector secondary.@>

@* \§rectangle vector secondary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> rectangle_vector_secondary@>
  
@q ** (2) rectangle_vector secondary --> rectangle_vector_primary.@>
@*1 \§rectangle vector secondary> $\longrightarrow$ 
\§rectangle vector primary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=rectangle_vector_secondary: rectangle_vector_primary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser:  `rectangle_vector_secondary "
                 << "--> rectangle_vector_primary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

};

@q *** (3) rectangle_vector_secondary --> rectangle_secondary REFLECTED_OFF @>
@q *** (3) path_expression WITH_DIRECTION point_expression.                 @>

@*2 \§rectangle vector secondary> $\longrightarrow$ \§rectangle secondary> 
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
@=rectangle_vector_secondary: rectangle_secondary REFLECTED_OFF @>
@=path_expression WITH_DIRECTION point_expression@>@/ 
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    typedef Pointer_Vector<Rectangle> PV;

    PV* pv = new PV;

*pv += create_new<Rectangle>(0, scanner_node);
    *pv += create_new<Rectangle>(0, scanner_node);
    *pv += create_new<Rectangle>(0, scanner_node);
    *pv += create_new<Rectangle>(0, scanner_node);

@q ******* (7) Call |Scan_Parse::reflect_off_func<Rectangle>()|.@> 

@ Call |Scan_Parse::reflect_off_func<Rectangle>()|.
\initials{LDF 2004.12.14.}

@<Define rules@>=

    int status = reflect_off_func<Rectangle>(scanner_node,
                                             static_cast<Rectangle*>(@=$1@>), 
                                             static_cast<Rectangle*>(@=$3@>), 
                                             static_cast<Point*>(@=$5@>), 
                                             pv);          

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

@q * (1) rectangle_vector tertiary.  @>

@* \§rectangle vector tertiary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> rectangle_vector_tertiary@>

@q ***** (5) rectangle_vector tertiary --> rectangle_vector_secondary.@>
@ \§rectangle vector tertiary> $\longrightarrow$ 
\§rectangle vector secondary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=rectangle_vector_tertiary: rectangle_vector_secondary@>@/ 
{

@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `rectangle_vector_tertiary "
                 << "--> rectangle_vector_secondary'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) rectangle_vector expression.@>
@* \§rectangle vector expression>.

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> rectangle_vector_expression@>

@q ** (2) rectangle_vector expression --> rectangle_vector_tertiary.  @>
@*1 \§rectangle vector expression> $\longrightarrow$ 
\§rectangle vector tertiary>.

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=rectangle_vector_expression: rectangle_vector_tertiary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `rectangle_vector_expression "
                 << "--> rectangle_vector_tertiary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

