@q cmpxvxpr.w @> 

@q * (0) |complex_vector| expressions.@>
@** \§complex vector> expressions.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |complex_vector| primary.  @>
@* \§complex vector primary>.
\initials{LDF 2007.12.02.}
  
\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> complex_vector_primary@>@/

@q ** (2) complex_vector_primary --> complex_vector_variable.@>
@*1 \§complex vector primary> $\longrightarrow$ 
\§complex vector variable>.  
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=complex_vector_primary: complex_vector_variable@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `complex_vector_primary --> "
                << "complex_vector_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  
|entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0)|.@> 

@ Error handling:  
|entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0)|.
\initials{LDF 2007.12.02.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      cerr_strm << thread_name 
                << "ERROR! In `yyparse()', rule " 
                << endl 
                << "Rule `complex_vector_primary --> "
                << "complex_vector_variable':"
                << endl << "`entry' == static_cast<Id_Map_Entry_Node>(0) or "
                << "`entry->object' == static_cast<void*>(0)."
                << endl 
                << "Setting `complex_vector_primary' "
                << "to static_cast<void*>(0) and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

      @=$$@> = static_cast<void*>(0);

    } /* |if (   entry == static_cast<Id_Map_Entry_Node>(0) 
              || entry->object == static_cast<void*>(0))|  */

@q **** (4) |!(   entry == static_cast<Id_Map_Entry_Node>(0)  @>
@q **** (4)    || entry->object == static_cast<void*>(0))|.   @>

@ |!(entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))|.
\initials{LDF 2007.12.02.}

@<Define rules@>=
  else 
     {

        typedef Pointer_Vector<Complex> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else|  */

};

@q ** (2) complex_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) complex_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§complex vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§complex vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_vector_primary: LEFT_PARENTHESIS@>@/ 
@=complex_vector_expression RIGHT_PARENTHESIS@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                << "*** Parser:  `complex_vector_primary "
                << "--> LEFT_PARENTHESIS complex_vector_expression "
                << "RIGHT_PARENTHESIS'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) complex_vector secondary.@>

@* \§complex vector secondary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> complex_vector_secondary@>
  
@q ** (2) complex_vector secondary --> complex_vector_primary.@>
@*1 \§complex vector secondary> $\longrightarrow$ 
\§complex vector primary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_vector_secondary: complex_vector_primary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser:  `complex_vector_secondary "
                 << "--> complex_vector_primary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

};

@q * (1) complex_vector tertiary.  @>

@* \§complex vector tertiary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> complex_vector_tertiary@>

@q ***** (5) complex_vector tertiary --> complex_vector_secondary.@>
@ \§complex vector tertiary> $\longrightarrow$ 
\§complex vector secondary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_vector_tertiary: complex_vector_secondary@>@/ 
{

@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `complex_vector_tertiary "
                 << "--> complex_vector_secondary'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) complex_vector expression.@>
@* \§complex vector expression>.

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> complex_vector_expression@>

@q ** (2) complex_vector expression --> complex_vector_tertiary.  @>
@*1 \§complex vector expression> $\longrightarrow$ 
\§complex vector tertiary>.

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_vector_expression: complex_vector_tertiary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `complex_vector_expression "
                 << "--> complex_vector_tertiary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};
