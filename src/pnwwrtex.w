@q pnwwrtex.w @> 
@q Created by Laurence Finston Mon 05 Jul 2021 01:19:27 PM CEST @>
       
@q * (0) Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2021 The Free Software Foundation, Inc.  @>

@q GNU 3DLDF is free software; you can redistribute it and/or modify @>
@q it under the terms of the GNU General Public License as published by @>
@q the Free Software Foundation; either version 3 of the License, or @>
@q (at your option) any later version. @>

@q GNU 3DLDF is distributed in the hope that it will be useful, @>
@q but WITHOUT ANY WARRANTY; without even the implied warranty of @>
@q MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the @>
@q GNU General Public License for more details. @>

@q You should have received a copy of the GNU General Public License @>
@q along with GNU 3DLDF; if not, write to the Free Software @>
@q Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA @>

@q GNU 3DLDF is a GNU package.  @>
@q It is part of the GNU Project of the  @>
@q Free Software Foundation @>
@q and is published under the GNU General Public License. @>
@q See the website http://www.gnu.org @>
@q for more information.   @>
@q GNU 3DLDF is available for downloading from @>
@q http://www.gnu.org/software/3dldf/LDF.html. @>

@q (``@@'' stands for a single at-sign in the following paragraph.) @>

@q Please send bug reports to Laurence.Finston@@gmx.de @>
@q The mailing list help-3dldf@@gnu.org is available for people to @>
@q ask other users for help.  @>
@q The mailing list info-3dldf@@gnu.org is for sending @>
@q announcements to users. To subscribe to these mailing lists, send an @>
@q email with ``subscribe <email-address>'' as the subject.  @>

@q The author can be contacted at: @>

@q Laurence D. Finston                 @> 
@q c/o Free Software Foundation, Inc.  @>
@q 51 Franklin St, Fifth Floor         @> 
@q Boston, MA  02110-1301              @>
@q USA                                 @>

@q Laurence.Finston@@gmx.de (@@ stands for a single ``at'' sign.)@>

@q * (0) newwrite expressions.  @>
@** newwrite expressions.

\LOG
\initials{LDF 2021.7.5.}
Created this file.
\ENDLOG 

@q * (1) newwrite primary.  @>
@* \§newwrite primary>.
  
@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> newwrite_primary@>@/

@q ** (2) newwrite_primary --> newwrite_variable.@>
@*1 \§newwrite primary> $\longrightarrow$ \§newwrite variable>.  

@<Define rules@>=
@=newwrite_primary: newwrite_variable@>@/
{
#if DEBUG_COMPILE
   bool DEBUG = true; /* |false| */ @; 
   stringstream cerr_strm;
   if (DEBUG)
      {
          cerr_strm << "*** Parser:  In rule `newwrite_primary: newwrite_variable':"
                    << endl;
          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */@;

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>); 

  if (entry == static_cast<Id_Map_Entry_Node>(0))
  {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

      @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

@ |entry->object| can be a |void| pointer if the |newwrite| was declared, 
but hasn't been assigned to.  It shouldn't be necessary to assign to a 
|newwrite| before using it.
\initials{LDF 2004.06.03.}

@<Define rules@>=
  else if (entry->object == static_cast<void*>(0))
    {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry->object is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

      entry->known_state = Id_Map_Entry_Type::KNOWN;
 
      Newwrite* p = new Newwrite;

      entry->object = static_cast<void*>(p);
      
      @=$$@> = static_cast<void*>(entry);

    }

@
@<Define rules@>=

  else /* |entry != 0 && entry->object != 0|  */@;
  {
#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry and entry->object are both non-NULL." << endl;

         static_cast<Newwrite*>(entry->object)->show("Newwrite (entry->object):");      
      }  
#endif /* |DEBUG_COMPILE|  */@;      

    @=$$@> = static_cast<void*>(entry);

  }  /* |else| (|entry != 0 && entry->object != 0|)  */@;
};

@q *** newwrite_primary --> ( newwrite_expression )  @>
@ \§newwrite primary> $\longrightarrow$ `\.{\LP}' \§newwrite expression> `\.{\RP}'.

@<Define rules@>=
@=newwrite_primary: LEFT_PARENTHESIS newwrite_expression RIGHT_PARENTHESIS@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 
  stringstream cerr_strm;
  if (DEBUG)
    {
      cerr << "*** Parser: newwrite_primary --> `(' newwrite_expression `)'."
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

   Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>); 

  if (entry == static_cast<Id_Map_Entry_Node>(0))
  {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

      @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

@ |entry->object| can be a |void| pointer if the |newwrite| was declared, 
but hasn't been assigned to.  It shouldn't be necessary to assign to a 
|newwrite| before using it.
\initials{LDF 2004.06.03.}

@<Define rules@>=
  else if (entry->object == static_cast<void*>(0))
    {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry->object is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

    }

@
@<Define rules@>=

  else /* |entry != 0 && entry->object != 0|  */@;
  {
#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry and entry->object are both non-NULL." << endl;

         static_cast<Newwrite*>(entry->object)->show("Newwrite (entry->object):");      
      }  
#endif /* |DEBUG_COMPILE|  */@;      

  }

   @=$$@> = @=$2@>;

#if DEBUG_COMPILE
   if (DEBUG)
      {
          cerr_strm << "*** Parser:  Exiting rule `'."
                    << endl;
          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ** (2) newwrite secondary.  @>
@ \§newwrite secondary>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> newwrite_secondary@>
  
@q *** newwrite secondary --> newwrite_primary.@>
@ \§newwrite secondary> $\longrightarrow$ \§newwrite primary>.

@<Define rules@>=
@=newwrite_secondary: newwrite_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 
  stringstream cerr_strm;
  if (DEBUG)
    {
      cerr << "\n*** Parser: newwrite_secondary --> newwrite_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>); 

  if (entry == static_cast<Id_Map_Entry_Node>(0))
  {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

      @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

@ |entry->object| can be a |void| pointer if the |newwrite| was declared, 
but hasn't been assigned to.  It shouldn't be necessary to assign to a 
|newwrite| before using it.
\initials{LDF 2004.06.03.}

@<Define rules@>=
  else if (entry->object == static_cast<void*>(0))
    {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry->object is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

    }

@
@<Define rules@>=

  else /* |entry != 0 && entry->object != 0|  */@;
  {
#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry and entry->object are both non-NULL." << endl;

         static_cast<Newwrite*>(entry->object)->show("Newwrite (entry->object):");      
      }  
#endif /* |DEBUG_COMPILE|  */@;      

  }

  @=$$@> = @=$1@>;

#if DEBUG_COMPILE
   if (DEBUG)
      {
          cerr_strm << "*** Parser:  Exiting rule `newwrite_secondary: newwrite_primary'."
                    << endl;
          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ** (2) newwrite tertiary.  @>
@ \§newwrite tertiary>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> newwrite_tertiary@>

@q *** newwrite tertiary --> newwrite_secondary.@>
@ \§newwrite tertiary> $\longrightarrow$ \§newwrite secondary>.

@<Define rules@>=
@=newwrite_tertiary: newwrite_secondary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 
  stringstream cerr_strm;
  if (DEBUG)
    {
      cerr << "\n*** Parser: newwrite_tertiary --> newwrite_secondary."
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>); 

  if (entry == static_cast<Id_Map_Entry_Node>(0))
  {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

      @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

@ |entry->object| can be a |void| pointer if the |newwrite| was declared, 
but hasn't been assigned to.  It shouldn't be necessary to assign to a 
|newwrite| before using it.
\initials{LDF 2004.06.03.}

@<Define rules@>=
  else if (entry->object == static_cast<void*>(0))
    {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry->object is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

    }

@
@<Define rules@>=

  else /* |entry != 0 && entry->object != 0|  */@;
  {
#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry and entry->object are both non-NULL." << endl;

         static_cast<Newwrite*>(entry->object)->show("Newwrite (entry->object):");      
      }  
#endif /* |DEBUG_COMPILE|  */@;      

  }

  @=$$@> = @=$1@>;

#if DEBUG_COMPILE
   if (DEBUG)
      {
          cerr_strm << "*** Parser:  Exiting rule `newwrite_tertiary: newwrite_secondary'."
                    << endl;
          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ** (2) newwrite expression.  @>
@*1 \§newwrite expression>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> newwrite_expression@>

@q *** newwrite expression --> newwrite_tertiary.  @>
@ \§newwrite expression> $\longrightarrow$ \§newwrite tertiary>.

@<Define rules@>=
@=newwrite_expression: newwrite_tertiary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 
  stringstream cerr_strm;
  if (DEBUG)
    {
      cerr << "\n*** Parser: newwrite_expression --> newwrite_tertiary."
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>); 

  if (entry == static_cast<Id_Map_Entry_Node>(0))
  {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

      @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

@ |entry->object| can be a |void| pointer if the |newwrite| was declared, 
but hasn't been assigned to.  It shouldn't be necessary to assign to a 
|newwrite| before using it.
\initials{LDF 2004.06.03.}

@<Define rules@>=
  else if (entry->object == static_cast<void*>(0))
    {

#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry->object is NULL." << endl;
      }  
#endif /* |DEBUG_COMPILE|  */@;      

    }

@
@<Define rules@>=

  else /* |entry != 0 && entry->object != 0|  */@;
  {
#if DEBUG_COMPILE
      if (DEBUG)
      { 
         cerr << "entry and entry->object are both non-NULL." << endl;

         static_cast<Newwrite*>(entry->object)->show("Newwrite (entry->object):");      
      }  
#endif /* |DEBUG_COMPILE|  */@;      

  }

  @=$$@> = @=$1@>;

#if DEBUG_COMPILE
   if (DEBUG)
      {
          cerr_strm << "*** Parser:  Exiting rule `newwrite_expression: newwrite_tertiary'."
                    << endl;
          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */@;

};

@q * Emacs-Lisp code for use in indirect buffers when using the          @>
@q   GNU Emacs editor.  The local variable list is not evaluated when an @>
@q   indirect buffer is visited, so it's necessary to evaluate the       @>
@q   following s-expression in order to use the facilities normally      @>
@q   accessed via the local variables list.                              @>
@q   \initials{LDF 2021.7.5.}.                                          @>
@q   (progn (cweb-mode) (outline-minor-mode t) (setq fill-column 70))    @>

@q Local Variables:                   @>
@q mode:CWEB                          @>
@q abbrev-file-name:"~/.abbrev_defs"  @>
@q eval:(read-abbrev-file)            @>
@q End:                               @>

