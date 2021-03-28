@q pelvexpr.w @> 
@q Created by Laurence Finston Tue Dec 14 15:19:51 CET 2004 @>
     

@q * (0) |ellipse_vector| expressions.@>
@** \§ellipse vector> expressions.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |ellipse_vector| primary.  @>
@* \§ellipse vector primary>.
\initials{LDF 2004.12.14.}
  
\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipse_vector_primary@>@/

@q ** (2) ellipse_vector_primary --> ellipse_vector_variable.@>
@*1 \§ellipse vector primary> $\longrightarrow$ 
\§ellipse vector variable>.  
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=ellipse_vector_primary: ellipse_vector_variable@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `ellipse_vector_primary --> "
                << "ellipse_vector_variable'.";

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
                << "Rule `ellipse_vector_primary --> "
                << "ellipse_vector_variable':"
                << endl << "`entry' == 0 or `entry->object' == 0."
                << endl 
                << "Setting `ellipse_vector_primary' "
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

        typedef Pointer_Vector<Ellipse> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) ellipse_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) ellipse_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§ellipse vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§ellipse vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipse_vector_primary: LEFT_PARENTHESIS@>@/ 
@=ellipse_vector_expression RIGHT_PARENTHESIS@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                << "*** Parser:  `ellipse_vector_primary "
                << "--> LEFT_PARENTHESIS ellipse_vector_expression "
                << "RIGHT_PARENTHESIS'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) ellipse_vector secondary.@>

@* \§ellipse vector secondary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> ellipse_vector_secondary@>
  
@q ** (2) ellipse_vector secondary --> ellipse_vector_primary.@>
@*1 \§ellipse vector secondary> $\longrightarrow$ 
\§ellipse vector primary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipse_vector_secondary: ellipse_vector_primary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser:  `ellipse_vector_secondary "
                 << "--> ellipse_vector_primary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

};

@q *** (3) ellipse_vector_secondary --> ellipse_secondary REFLECTED_OFF @>
@q *** (3) path_expression WITH_DIRECTION point_expression.             @>

@*2 \§ellipse vector secondary> $\longrightarrow$ \§ellipse secondary> 
\.{REFLECTED\_OFF} \§path expression>
\.{WITH\_DIRECTION} \§point expression>.

\LOG
\initials{LDF 2004.12.14.}
Added this rule.

\initials{LDF 2004.12.14.}
@:BUG FIX@> BUG FIX:  Changed \§ellipse-like expression> 
to \§path-like expression>.

\initials{LDF 2005.10.24.}
Changed |path_like_expression| to |path_expression|.
Removed debugging code.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=ellipse_vector_secondary: ellipse_secondary REFLECTED_OFF @>
@=path_expression WITH_DIRECTION point_expression@>@/ 
{

    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    typedef Pointer_Vector<Ellipse> PV;

    PV* pv = new PV;

    *pv += create_new<Ellipse>(0, scanner_node);
    *pv += create_new<Ellipse>(0, scanner_node);
    *pv += create_new<Ellipse>(0, scanner_node);
    *pv += create_new<Ellipse>(0, scanner_node);

@q ******* (7) Call |Scan_Parse::reflect_off_func<Ellipse>()|.@> 

@ Call |Scan_Parse::reflect_off_func<Ellipse>()|.
\initials{LDF 2004.12.14.}

@<Define rules@>=

   int status = reflect_off_func<Ellipse>(scanner_node,
                                          static_cast<Ellipse*>(@=$1@>), 
                                          static_cast<Ellipse*>(@=$3@>), 
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

@q * (1) ellipse_vector tertiary.  @>

@* \§ellipse vector tertiary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> ellipse_vector_tertiary@>

@q ***** (5) ellipse_vector tertiary --> ellipse_vector_secondary.@>
@ \§ellipse vector tertiary> $\longrightarrow$ 
\§ellipse vector secondary>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipse_vector_tertiary: ellipse_vector_secondary@>@/ 
{

@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `ellipse_vector_tertiary "
                 << "--> ellipse_vector_secondary'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) ellipse_vector expression.@>
@* \§ellipse vector expression>.

\LOG
\initials{LDF 2004.12.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipse_vector_expression@>

@q ** (2) ellipse_vector expression --> ellipse_vector_tertiary.  @>
@*1 \§ellipse vector expression> $\longrightarrow$ 
\§ellipse vector tertiary>.

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipse_vector_expression: ellipse_vector_tertiary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `ellipse_vector_expression "
                 << "--> ellipse_vector_tertiary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

