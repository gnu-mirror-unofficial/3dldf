@q pplnvxpr.w @> 
@q Created by Laurence Finston Sun Oct 30 14:44:57 CET 2005 @>
     

@q * (0) |plane_vector| expressions.@>
@** \§plane vector> expressions.
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |plane_vector| primary.  @>
@* \§plane vector primary>.
\initials{LDF 2005.10.30.}
  
\LOG
\initials{LDF 2005.10.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> plane_vector_primary@>@/

@q ** (2) plane_vector_primary --> plane_vector_variable.@>
@*1 \§plane vector primary> $\longrightarrow$ 
\§plane vector variable>.  
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=plane_vector_primary: plane_vector_variable@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `plane_vector_primary --> "
                << "plane_vector_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.10.30.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      cerr_strm << thread_name 
                << "ERROR! In `yyparse()', rule " 
                << endl 
                << "Rule `plane_vector_primary --> "
                << "plane_vector_variable':"
                << endl << "`entry' == 0 or `entry->object' == 0."
                << endl 
                << "Setting `plane_vector_primary' "
                << "to 0 and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.10.30.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Plane> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) plane_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) plane_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§plane vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§plane vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=plane_vector_primary: LEFT_PARENTHESIS@>@/ 
@=plane_vector_expression RIGHT_PARENTHESIS@>@/ 
{
 @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                << "*** Parser:  `plane_vector_primary "
                << "--> LEFT_PARENTHESIS plane_vector_expression "
                << "RIGHT_PARENTHESIS'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) plane_vector secondary.@>

@* \§plane vector secondary>.
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> plane_vector_secondary@>
  
@q ** (2) plane_vector secondary --> plane_vector_primary.@>
@*1 \§plane vector secondary> $\longrightarrow$ 
\§plane vector primary>.
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=plane_vector_secondary: plane_vector_primary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser:  `plane_vector_secondary "
                 << "--> plane_vector_primary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

};

@q * (1) plane_vector tertiary.  @>

@* \§plane vector tertiary>.
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> plane_vector_tertiary@>

@q ***** (5) plane_vector tertiary --> plane_vector_secondary.@>
@ \§plane vector tertiary> $\longrightarrow$ 
\§plane vector secondary>.
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=plane_vector_tertiary: plane_vector_secondary@>@/ 
{

@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `plane_vector_tertiary "
                 << "--> plane_vector_secondary'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) plane_vector expression.@>
@* \§plane vector expression>.

\LOG
\initials{LDF 2005.10.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> plane_vector_expression@>

@q ** (2) plane_vector expression --> plane_vector_tertiary.  @>
@*1 \§plane vector expression> $\longrightarrow$ 
\§plane vector tertiary>.

\LOG
\initials{LDF 2005.10.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=plane_vector_expression: plane_vector_tertiary@>@/ 
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `plane_vector_expression "
                 << "--> plane_vector_tertiary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

