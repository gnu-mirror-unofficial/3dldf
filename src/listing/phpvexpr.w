@q phpbvexpr.w @> 
@q Created by Laurence Finston Mon Nov  7 19:47:47 CET 2005 @>
     

@q * (0) |hyperbola_vector| expressions.@>
@** \§hyperbola vector> expressions.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |hyperbola_vector| primary.  @>
@* \§hyperbola vector primary>.
\initials{LDF 2005.11.14.}
  
\LOG
\initials{LDF 2005.11.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> hyperbola_vector_primary@>@/

@q ** (2) hyperbola_vector_primary --> hyperbola_vector_variable.@>
@*1 \§hyperbola vector primary> $\longrightarrow$ 
\§hyperbola vector variable>.  
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=hyperbola_vector_primary: hyperbola_vector_variable@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `hyperbola_vector_primary --> "
                << "hyperbola_vector_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.11.14.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      cerr_strm << thread_name 
                << "ERROR! In `yyparse()', rule " 
                << endl 
                << "Rule `hyperbola_vector_primary --> "
                << "hyperbola_vector_variable':"
                << endl << "`entry' == 0 or `entry->object' == 0."
                << endl 
                << "Setting `hyperbola_vector_primary' "
                << "to 0 and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.11.14.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Hyperbola> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) hyperbola_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) hyperbola_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§hyperbola vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§hyperbola vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=hyperbola_vector_primary: LEFT_PARENTHESIS@>@/ 
@=hyperbola_vector_expression RIGHT_PARENTHESIS@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                << "*** Parser:  `hyperbola_vector_primary "
                << "--> LEFT_PARENTHESIS hyperbola_vector_expression "
                << "RIGHT_PARENTHESIS'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) hyperbola_vector secondary.@>

@* \§hyperbola vector secondary>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> hyperbola_vector_secondary@>
  
@q ** (2) hyperbola_vector secondary --> hyperbola_vector_primary.@>
@*1 \§hyperbola vector secondary> $\longrightarrow$ 
\§hyperbola vector primary>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=hyperbola_vector_secondary: hyperbola_vector_primary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser:  `hyperbola_vector_secondary "
                 << "--> hyperbola_vector_primary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

};

@q * (1) hyperbola_vector tertiary.  @>

@* \§hyperbola vector tertiary>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> hyperbola_vector_tertiary@>

@q ***** (5) hyperbola_vector tertiary --> hyperbola_vector_secondary.@>
@ \§hyperbola vector tertiary> $\longrightarrow$ 
\§hyperbola vector secondary>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=hyperbola_vector_tertiary: hyperbola_vector_secondary@>@/ 
{

@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `hyperbola_vector_tertiary "
                 << "--> hyperbola_vector_secondary'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) hyperbola_vector expression.@>
@* \§hyperbola vector expression>.

\LOG
\initials{LDF 2005.11.14.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> hyperbola_vector_expression@>

@q ** (2) hyperbola_vector expression --> hyperbola_vector_tertiary.  @>
@*1 \§hyperbola vector expression> $\longrightarrow$ 
\§hyperbola vector tertiary>.

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=hyperbola_vector_expression: hyperbola_vector_tertiary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `hyperbola_vector_expression "
                 << "--> hyperbola_vector_tertiary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

