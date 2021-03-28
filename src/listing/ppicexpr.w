@q ppicexpr.w @> 
@q Created by Laurence Finston Fri May 21 21:19:28 MEST 2004  @>
     

@q * (0) picture expressions.  @>
@** picture expressions.

\LOG
\initials{LDF 2004.05.21.}  Created this file.
\ENDLOG 

@q * (1) picture primary.  @>
@* \§picture primary>.
  
@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> picture_primary@>@/

@q ** (2) picture_primary --> picture_variable.@>
@*1 \§picture primary> $\longrightarrow$ \§picture variable>.  

\LOG
\initials{LDF 2004.06.04.}  
No longer creating a new |Picture| for 
|@=$$@>|.  |Pictures| are persistent, i.e., they shouldn't be copied and 
deleted in rules that use |picture_primaries|, |picture_secondaries|, 
|picture_tertiaries|, or |picture_expressions|.

\initials{LDF 2004.06.30.}
Changed value of |@=$$@>| from |Picture*|, cast to |void*|, 
to |Id_Map_Entry_Node|, cast to |void*|.
\ENDLOG 

@<Define rules@>=
@=picture_primary: picture_variable@>@/
{
#if DEBUG_COMPILE
   bool DEBUG = false; /* |true| */ @; 
   stringstream cerr_strm;
   if (DEBUG)
      {
          cerr_strm << "*** Parser:  In rule `picture_primary: picture_variable':"
                    << endl;
          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */@;

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>); 

  if (entry == static_cast<Id_Map_Entry_Node>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@ |entry->object| can be a |void| pointer if the |picture| was declared, 
but hasn't been assigned to.  It shouldn't be necessary to assign to a 
|picture| before using it.
\initials{LDF 2004.06.03.}

\LOG
\initials{LDF 2004.06.03.}  
Added this conditional.  
\ENDLOG 

@<Define rules@>=
  else if (entry->object == static_cast<void*>(0))
    {
      entry->known_state = Id_Map_Entry_Type::KNOWN;
 
      Picture* p = new Picture;
      p->clear();

      entry->object = static_cast<void*>(p);
      
      @=$$@> = static_cast<void*>(entry);

    }

@
@<Define rules@>=

  else /* |entry != 0 && entry->object != 0|  */@;

  {
    @=$$@> = static_cast<void*>(entry);

  }  /* |else| (|entry != 0 && entry->object != 0|)  */@;

};

@q *** (3) picture_primary --> picture_argument..@>
@ \§picture primary> $\longrightarrow$ \§picture argument>.  

@q *** picture_primary --> ( picture_expression )  @>
@ \§picture primary> $\longrightarrow$ `\.{\LP}' \§picture expression> `\.{\RP}'.

@<Define rules@>=
@=picture_primary: LEFT_PARENTHESIS picture_expression RIGHT_PARENTHESIS@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr << "*** Parser: picture_primary --> `(' picture_expression `)'."
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$2@>;

};

@q ** (2) picture secondary.  @>
@ \§picture secondary>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> picture_secondary@>
  
@q *** picture secondary --> picture_primary.@>
@ \§picture secondary> $\longrightarrow$ \§picture primary>.

@<Define rules@>=
@=picture_secondary: picture_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr << "\n*** Parser: picture_secondary --> picture_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q *** (3) picture secondary --> picture_primary transformer.@>
@*2 \§picture secondary> $\longrightarrow$ \§picture primary> \§transformer>.

\LOG
\initials{LDF 2004.06.30.}
|picture_primary| is now an |Id_Map_Entry_Node|, cast to |void*|.  
Changed value of |@=$$@>| from |Picture*|, cast to |void*|, 
to |Id_Map_Entry_Node|, cast to |void*|.
Made changes to account for these facts.

\initials{LDF 2004.12.02.}
Commented-out this rule.  It doesn't work properly, 
since temporaries are not created for |pictures|.

\initials{LDF 2004.12.02.}
Commented this rule back in.
Now issuing a warning to the effect that |transformation_commands| 
should be used instead of |transformers| for transforming |pictures|,
setting |picture_secondary| to |picture_primary| unchanged, 
and continuing.  

\initials{LDF 2006.01.20.}
@:BUG FIX@> BUG FIX:  Now deleting |Transform* t|.
\ENDLOG 

@<Define rules@>=
@=picture_secondary: picture_primary transformer@>@/
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
    DEBUG = false; /* |true| */ @; 
   if (DEBUG)
      {
          cerr_strm << thread_name 
                    << "*** Parser: `picture_secondary --> "
                    << "picture_primary transformer'.";

          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */@;

   cerr_strm << thread_name << "WARNING!  In `yyparse()', rule "
             << endl << "`picture_secondary --> "
             << "picture_primary transformer':"
             << endl << "It's not possible to transform "
             << "`pictures' using `transformers'.  "
             << "Use a `transformation_command' instead."
             << endl << "Setting `picture_secondary' to "
             << "`picture_primary' unchanged and continuing.";

   log_message(cerr_strm);
   cerr_message(cerr_strm, warning_stop_value);
   cerr_strm.str("");

   Transform* t = static_cast<Transform*>(@=$2@>);

   delete t;

   @=$$@> = @=$1@>;

};

@q ** (2) picture tertiary.  @>
@ \§picture tertiary>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> picture_tertiary@>

@q *** picture tertiary --> picture_secondary.@>
@ \§picture tertiary> $\longrightarrow$ \§picture secondary>.

@<Define rules@>=
@=picture_tertiary: picture_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q *** (3) picture tertiary --> picture_tertiary PLUS picture_secondary.  @>
@ \§picture tertiary> $\longrightarrow$ \§picture tertiary> 
`\.{PLUS}' \§picture secondary>.
\initials{LDF 2004.05.21.}  

Pictures cannot yet be subtracted in 3DLDF.
\initials{LDF 2004.05.21.}

\LOG
\initials{LDF 2004.05.21.}  
Added this rule.

\initials{LDF 2004.06.04.}  
No longer deleting |q| at the end of this rule. 
|Pictures| are persistent, i.e., they shouldn't be copied and 
deleted in rules that use |picture_primaries|, |picture_secondaries|, 
|picture_tertiaries|, or |picture_expressions|.

\initials{LDF 2004.06.30.}
|picture_tertiary| and |picture_secondary| are now both |Id_Map_Entry_Nodes|,
cast to |void*|.  
Changed value of |@=$$@>| from |Picture*|, cast to |void*|, 
to |Id_Map_Entry_Node|, cast to |void*|.
Made changes to account for these facts.
\ENDLOG 

@<Define rules@>=
@=picture_tertiary: picture_tertiary PLUS picture_secondary@>@/
{

  Id_Map_Entry_Node entry_0 = static_cast<Id_Map_Entry_Node>(@=$1@>);
  Id_Map_Entry_Node entry_1 = static_cast<Id_Map_Entry_Node>(@=$3@>);

  Picture* p = static_cast<Picture*>(entry_0->object); 
  Picture* q = static_cast<Picture*>(entry_1->object); 

  *p += *q;

  @=$$@> = static_cast<void*>(entry_0);
  
}
;

@q ** (2) picture expression.  @>
@*1 \§picture expression>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> picture_expression@>

@q *** picture expression --> picture_tertiary.  @>
@ \§picture expression> $\longrightarrow$ \§picture tertiary>.

@<Define rules@>=
@=picture_expression: picture_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

