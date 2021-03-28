@q pphdexpr.w @> 
@q Created by Laurence Finston Mo Okt 24 13:20:03 CEST 2005 @>
       

@q * polyhedron expressions.  @>
@** {\bf polyhedron} expressions.

\LOG
\initials{LDF 2004.08.30.}
Created this file.
\ENDLOG 

@q ** polyhedron primary.  @>
@ \§polyhedron primary>.
  
\LOG
\initials{LDF 2004.08.30.}  
Added this section.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> polyhedron_primary@>@/

@q *** (3) polyhedron_primary --> polyhedron_variable.@>
@*2 \§polyhedron primary> $\longrightarrow$ \§polyhedron variable>.  

\LOG
\initials{LDF 2004.08.30.}
Added this rule.

\initials{LDF 2004.11.23.}
No longer issuing an error message if |entry->object == 0|.
This condition occurs legitimately when one tries to show
an ``unknown |tetrahedron|''.
\ENDLOG 

@<Define rules@>=
@=polyhedron_primary: polyhedron_variable@>@/
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "***  Parser:" 
                << endl << "`polyhedron_primary --> polyhedron_variable'.";
      log_message(cerr_strm); 
      cerr_message(cerr_strm); 
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Polyhedron>(
                                  static_cast<Polyhedron*>(
                                     entry->object))); 
}
;

@q *** polyhedron_primary --> polyhedron_argument.@>
@ \§polyhedron primary> $\longrightarrow$ \§polyhedron argument>.  

@q *** polyhedron_primary --> ( polyhedron_expression )  @>
@ \§polyhedron primary> $\longrightarrow$ `\.{\LP}' 
\§polyhedron expression> `\.{\RP}'.

\LOG
\initials{LDF 2004.08.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=polyhedron_primary: LEFT_PARENTHESIS polyhedron_expression RIGHT_PARENTHESIS@>@/
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "***  Parser:" 
                << endl 
                << "`polyhedron_primary --> ( polyhedron_expression )'.";
      cerr_message(cerr_strm); 
      cerr_strm.str("");

    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$2@>;

};

@q ***** (5) polyhedron_primary --> LAST @>
@q ***** (5) polyhedron_vector_expression.@>

@*4 \§polyhedron primary> $\longrightarrow$ 
\.{LAST} \§polyhedron vector expression>.
\initials{LDF 2005.01.14.}

\LOG
\initials{LDF 2005.01.14.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=polyhedron_primary: LAST polyhedron_vector_expression@>@/
{ 
@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ @; 
   if (DEBUG) 
     {
         cerr_strm << thread_name << "*** Parser:  `polyhedron_primary "
                   << "--> LAST polyhedron_vector_expression'.";

         log_message(cerr_strm);
         cerr_message(cerr_strm);
         cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */

@q ******* (7) @> 

   Polyhedron* t;

   try 
      {
         t = create_new<Polyhedron>(0);
      }

   catch (bad_alloc)
      {
         cerr_strm << thread_name << "ERROR!  In `yyparse()', rule "
                   << "`polyhedron_primary "
                   << "--> LAST polyhedron_vector_expression':"
                   << endl << "`create_new<Polyhedron>()' failed.  "
                   << "Rethrowing `bad_alloc'.";

         log_message(cerr_strm);
         cerr_message(cerr_strm, error_stop_value);
         cerr_strm.str("");

         throw;

      }  /* |catch (bad_alloc)|  */

@q ******* (7) @> 

   Pointer_Vector<Polyhedron>* pv 
      = static_cast<Pointer_Vector<Polyhedron>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.01.14.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Polyhedron>*>(0))
      {
          cerr_strm << thread_name 
                    << "ERROR!  In `yyparse()', rule "
                    << endl 
                    << "`polyhedron_primary "
                    << "--> LAST polyhedron_vector_expression':"
                    << endl << "Invalid `polyhedron_vector_expression'.  "
                    << "Setting `polyhedron_primary' to 0"
                    << endl << "and will try to continue.";

          log_message(cerr_strm);
          cerr_message(cerr_strm, error_stop_value);
          cerr_strm.str("");

          delete t;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.01.14.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          cerr_strm << thread_name 
                    << "ERROR!  In `yyparse()', rule "
                    << endl 
                    << "`polyhedron_primary "
                    << "--> LAST polyhedron_vector_expression':"
                    << endl << "`polyhedron_vector_expression' is empty.  "
                    << "Setting `polyhedron_primary' to 0"
                    << endl << "and will try to continue.";

          log_message(cerr_strm);
          cerr_message(cerr_strm, error_stop_value);
          cerr_strm.str("");

          delete t;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.01.14.}

@<Define rules@>=

   else 
      {
         *t = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(t); 
      }
@q ******* (7) @> 

};

@q ** (2) polyhedron secondary.  @>
@*1 \§polyhedron secondary>.
\initials{LDF 2004.08.30.}  

\LOG
\initials{LDF 2004.08.30.}  
Added this section.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> polyhedron_secondary@>
  
@q *** polyhedron secondary --> polyhedron_primary.  @>
@ \§polyhedron secondary> $\longrightarrow$ \§polyhedron primary>.

\LOG
\initials{LDF 2004.08.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=polyhedron_secondary: polyhedron_primary@>@/
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "***  Parser:" 
                << endl << "`polyhedron_secondary --> polyhedron_primary'.";
      cerr_message(cerr_strm); 
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

}
;

@q *** (3) polyhedron secondary --> polyhedron_secondary transformer.@>
@*2 \§polyhedron secondary> $\longrightarrow$ 
\§polyhedron secondary> \§transformer>.
\initials{LDF 2004.08.30.}

\LOG
\initials{LDF 2004.08.30.}
Added this rule.

\initials{LDF 2006.01.20.}
@:BUG FIX@> BUG FIX:  Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=polyhedron_secondary: polyhedron_secondary transformer@>@/
{

  Polyhedron* p = static_cast<Polyhedron*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q *** (3) polyhedron secondary --> polyhedron_secondary REFLECTED_IN @>
@q *** (3) path_expression.@> 

@*2 \§polyhedron secondary> $\longrightarrow$ 
\§polyhedron secondary> 
\.{REFLECTED\_IN} \§path expression>.

\LOG
\initials{LDF 2004.10.05.}
Added this rule.

\initials{LDF 2004.12.03.}
Changed |REFLECTED IN| to |REFLECTED_IN|.

\initials{LDF 2005.10.24.}
Changed |path_like_expression| to |path_expression|.
Removed debugging code.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=polyhedron_secondary: polyhedron_secondary REFLECTED_IN @>
@=path_expression@>@/ 
{

   Polyhedron* p = reflect_in_func<Polyhedron>(static_cast<Scanner_Node>(parameter),
                                             static_cast<Polyhedron*>(@=$1@>),
                                             static_cast<Path*>(@=$3@>));

   @=$$@> = static_cast<void*>(p);

};

@q ** (2) polyhedron tertiary.  @>
@*1 \§polyhedron tertiary>.

\LOG
\initials{LDF 2004.08.30.}  
Added this section.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> polyhedron_tertiary@>

@q *** polyhedron tertiary --> polyhedron_secondary.  @>
@ \§polyhedron tertiary> $\longrightarrow$ \§polyhedron secondary>.

\LOG
\initials{LDF 2004.08.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=polyhedron_tertiary: polyhedron_secondary@>@/
{

@<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "***  Parser:" 
                << endl << "`polyhedron_tertiary --> polyhedron_secondary'.";
      cerr_message(cerr_strm); 
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

}
;

@q ** polyhedron expression.  @>
@ \§polyhedron expression>.

\LOG
\initials{LDF 2004.08.30.}  
Added this section.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> polyhedron_expression@>

@q *** polyhedron expression --> polyhedron_tertiary.  @>
@ \§polyhedron expression> $\longrightarrow$ \§polyhedron tertiary>.

\LOG
\initials{LDF 2004.08.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=polyhedron_expression: polyhedron_tertiary@>@/
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "***  Parser:" 
                << endl << "`polyhedron_expression --> polyhedron_tertiary'.";
      cerr_message(cerr_strm); 
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;
}
;

