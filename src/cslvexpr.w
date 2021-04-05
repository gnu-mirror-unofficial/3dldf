@q cslvexpr.w @> 
@q Created by Laurence Finston Sun Jul 29 16:20:55 CEST 2007 @>
       
@q * (0) Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, @>
@q 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021 The Free Software Foundation, Inc. @>

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

@q * (0) |conic_section_lattice_vector| expressions.@>
@** \�conic section lattice vector> expressions.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Created this file.  Copied the rules from \filename{porgvexpr.w}, changing
\�origami figure vector> expressions to \�conic section vector> expressions.
\ENDLOG 

@q * (1) |conic_section_lattice_vector| primary.  @>
@* \�conic section lattice vector primary>.
\initials{LDF 2007.07.29.}
  
\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conic_section_lattice_vector_primary@>@/

@q ** (2) conic_section_lattice_vector_primary --> @>
@q ** (2) conic_section_lattice_vector_variable.@>
@*1 \�conic section lattice vector primary> $\longrightarrow$ 
\�conic section lattice vector variable>.  
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=conic_section_lattice_vector_primary: conic_section_lattice_vector_variable@>@/ 
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2007.07.29.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2007.07.29.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Conic_Section_Lattice> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) conic_section_lattice_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) conic_section_lattice_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \�conic section lattice vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\�conic section lattice vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_vector_primary: LEFT_PARENTHESIS@>@/ 
@=conic_section_lattice_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) conic_section_lattice_vector secondary.@>

@* \�conic section lattice vector secondary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> conic_section_lattice_vector_secondary@>
  
@q ** (2) conic_section_lattice_vector secondary --> conic_section_lattice_vector_primary.@>
@*1 \�conic section lattice vector secondary> $\longrightarrow$ 
\�conic section lattice vector primary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_vector_secondary: conic_section_lattice_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) conic_section_lattice_vector tertiary.  @>

@* \�conic section lattice vector tertiary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> conic_section_lattice_vector_tertiary@>

@q ***** (5) conic_section_lattice_vector tertiary --> conic_section_lattice_vector_secondary.@>
@ \�conic section lattice vector tertiary> $\longrightarrow$ 
\�conic section lattice vector secondary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_vector_tertiary: conic_section_lattice_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) conic_section_lattice_vector expression.@>
@* \�conic section lattice vector expression>.

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conic_section_lattice_vector_expression@>

@q ** (2) conic_section_lattice_vector expression --> conic_section_lattice_vector_tertiary.  @>
@*1 \�conic section lattice vector expression> $\longrightarrow$ 
\�conic section lattice vector tertiary>.

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_vector_expression: conic_section_lattice_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * Emacs-Lisp code for use in indirect buffers when using the          @>
@q   GNU Emacs editor.  The local variable list is not evaluated when an @>
@q   indirect buffer is visited, so it's necessary to evaluate the       @>
@q   following s-expression in order to use the facilities normally      @>
@q   accessed via the local variables list.                              @>
@q   \initials{LDF 2004.02.12}.                                          @>
@q   (progn (cweb-mode) (outline-minor-mode t) (setq fill-column 80))    @>

@q Local Variables:                   @>
@q mode:CWEB                          @>
@q eval:(outline-minor-mode t)        @>
@q abbrev-file-name:"~/.abbrev_defs"  @>
@q eval:(read-abbrev-file)            @>
@q fill-column:80                     @>
@q run-cweave-on-file:"3DLDFprg.web"  @>
@q End:                               @>
