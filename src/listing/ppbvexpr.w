@q ppbvexpr.w @> 
@q Created by Laurence Finston Mon Nov  7 19:47:47 CET 2005 @>
     

@q * (0) |parabola_vector| expressions.@>
@** \§parabola vector> expressions.
\initials{LDF 2005.11.07.}

\LOG
\initials{LDF 2005.11.07.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |parabola_vector| primary.  @>
@* \§parabola vector primary>.
\initials{LDF 2005.11.07.}
  
\LOG
\initials{LDF 2005.11.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> parabola_vector_primary@>@/

@q ** (2) parabola_vector_primary --> parabola_vector_variable.@>
@*1 \§parabola vector primary> $\longrightarrow$ 
\§parabola vector variable>.  
\initials{LDF 2005.11.07.}

\LOG
\initials{LDF 2005.11.07.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=parabola_vector_primary: parabola_vector_variable@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `parabola_vector_primary --> "
                << "parabola_vector_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.11.07.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      cerr_strm << thread_name 
                << "ERROR! In `yyparse()', rule " 
                << endl 
                << "Rule `parabola_vector_primary --> "
                << "parabola_vector_variable':"
                << endl << "`entry' == 0 or `entry->object' == 0."
                << endl 
                << "Setting `parabola_vector_primary' "
                << "to 0 and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.11.07.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Parabola> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) parabola_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) parabola_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§parabola vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§parabola vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.11.07.}

\LOG
\initials{LDF 2005.11.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=parabola_vector_primary: LEFT_PARENTHESIS@>@/ 
@=parabola_vector_expression RIGHT_PARENTHESIS@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                << "*** Parser:  `parabola_vector_primary "
                << "--> LEFT_PARENTHESIS parabola_vector_expression "
                << "RIGHT_PARENTHESIS'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) parabola_vector secondary.@>

@* \§parabola vector secondary>.
\initials{LDF 2005.11.07.}

\LOG
\initials{LDF 2005.11.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> parabola_vector_secondary@>
  
@q ** (2) parabola_vector secondary --> parabola_vector_primary.@>
@*1 \§parabola vector secondary> $\longrightarrow$ 
\§parabola vector primary>.
\initials{LDF 2005.11.07.}

\LOG
\initials{LDF 2005.11.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=parabola_vector_secondary: parabola_vector_primary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser:  `parabola_vector_secondary "
                 << "--> parabola_vector_primary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

};

@q * (1) parabola_vector tertiary.  @>

@* \§parabola vector tertiary>.
\initials{LDF 2005.11.07.}

\LOG
\initials{LDF 2005.11.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> parabola_vector_tertiary@>

@q ***** (5) parabola_vector tertiary --> parabola_vector_secondary.@>
@ \§parabola vector tertiary> $\longrightarrow$ 
\§parabola vector secondary>.
\initials{LDF 2005.11.07.}

\LOG
\initials{LDF 2005.11.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=parabola_vector_tertiary: parabola_vector_secondary@>@/ 
{

@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `parabola_vector_tertiary "
                 << "--> parabola_vector_secondary'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) parabola_vector expression.@>
@* \§parabola vector expression>.

\LOG
\initials{LDF 2005.11.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> parabola_vector_expression@>

@q ** (2) parabola_vector expression --> parabola_vector_tertiary.  @>
@*1 \§parabola vector expression> $\longrightarrow$ 
\§parabola vector tertiary>.

\LOG
\initials{LDF 2005.11.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=parabola_vector_expression: parabola_vector_tertiary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `parabola_vector_expression "
                 << "--> parabola_vector_tertiary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

