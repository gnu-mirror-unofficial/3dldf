@q arcvexpr.w @> 
     
@q * (0) |arc_vector| expressions.@>
@** \§arc vector> expressions.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |arc_vector| primary.  @>
@* \§arc vector primary>.
\initials{LDF 2007.10.13.}
  
\LOG
\initials{LDF 2007.10.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> arc_vector_primary@>@/

@q ** (2) arc_vector_primary --> arc_vector_variable.@>
@*1 \§arc vector primary> $\longrightarrow$ 
\§arc vector variable>.  
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=arc_vector_primary: arc_vector_variable@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `arc_vector_primary --> "
                << "arc_vector_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  
|entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0)|.
\initials{LDF 2007.10.13.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      cerr_strm << thread_name 
                << "ERROR! In `yyparse()', rule " 
                << endl 
                << "Rule `arc_vector_primary --> "
                << "arc_vector_variable':"
                << endl << "`entry' == 0 or `entry->object' == 0."
                << endl 
                << "Setting `arc_vector_primary' "
                << "to 0 and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

      @=$$@> = static_cast<void*>(0);

    } /* |if (   entry == static_cast<Id_Map_Entry_Node>(0) 
              || entry->object == static_cast<void*>(0))|  */

@q **** (4) |!(   entry == static_cast<Id_Map_Entry_Node>(0) 
               || entry->object == static_cast<void*>(0))|.@> 

@ |!(entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))|.
\initials{LDF 2007.10.13.}

@<Define rules@>=
  else 
     {

        typedef Pointer_Vector<Arc> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else|  */

};

@q ** (2) arc_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) arc_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§arc vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§arc vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_vector_primary: LEFT_PARENTHESIS@>@/ 
@=arc_vector_expression RIGHT_PARENTHESIS@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                << "*** Parser:  `arc_vector_primary "
                << "--> LEFT_PARENTHESIS arc_vector_expression "
                << "RIGHT_PARENTHESIS'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) arc_vector secondary.@>

@* \§arc vector secondary>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> arc_vector_secondary@>
  
@q ** (2) arc_vector secondary --> arc_vector_primary.@>
@*1 \§arc vector secondary> $\longrightarrow$ 
\§arc vector primary>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_vector_secondary: arc_vector_primary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser:  `arc_vector_secondary "
                 << "--> arc_vector_primary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

};

@q * (1) arc_vector tertiary.  @>

@* \§arc vector tertiary>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> arc_vector_tertiary@>

@q ***** (5) arc_vector tertiary --> arc_vector_secondary.@>
@ \§arc vector tertiary> $\longrightarrow$ 
\§arc vector secondary>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_vector_tertiary: arc_vector_secondary@>@/ 
{

@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `arc_vector_tertiary "
                 << "--> arc_vector_secondary'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) arc_vector expression.@>
@* \§arc vector expression>.

\LOG
\initials{LDF 2007.10.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> arc_vector_expression@>

@q ** (2) arc_vector expression --> arc_vector_tertiary.  @>
@*1 \§arc vector expression> $\longrightarrow$ 
\§arc vector tertiary>.

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=arc_vector_expression: arc_vector_tertiary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `arc_vector_expression "
                 << "--> arc_vector_tertiary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

