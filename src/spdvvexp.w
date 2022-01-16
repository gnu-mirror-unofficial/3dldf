@q spdvvexp.w @> 
@q Created by Laurence Finston Tue Nov 10 13:13:41 CET 2009  @>
     
@q * (0) Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2009, 2010, 2011, 2012, 2013, 2014, @>
@q 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022 The Free Software Foundation, Inc.  @>

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

@q * (0) |sphere_development_vector| expressions.@>
@** \�sphere development vector> expressions.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.09.}
Created this file.
\ENDLOG 

@q * (1) |sphere_development_vector| primary.  @>
@* \�sphere development vector primary>.
\initials{LDF 2009.11.10.}
  
\LOG
\initials{LDF 2009.11.10.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_development_vector_primary@>@/

@q ** (2) sphere_development_vector_primary --> sphere_development_vector_variable.@>
@*1 \�sphere development vector primary> $\longrightarrow$ 
\�sphere development vector variable>.  
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=sphere_development_vector_primary: sphere_development_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2009.11.10.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2009.11.10.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Sphere_Development> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) sphere_development_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) sphere_development_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \�sphere development vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\�sphere development vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_vector_primary: LEFT_PARENTHESIS@>@/ 
@=sphere_development_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) sphere_development_vector secondary.@>

@* \�sphere development vector secondary>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> sphere_development_vector_secondary@>
  
@q ** (2) sphere_development_vector secondary --> sphere_development_vector_primary.@>
@*1 \�sphere development vector secondary> $\longrightarrow$ 
\�sphere development vector primary>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_vector_secondary: sphere_development_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) sphere_development_vector tertiary.  @>

@* \�sphere development vector tertiary>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> sphere_development_vector_tertiary@>

@q ***** (5) sphere_development_vector tertiary --> sphere_development_vector_secondary.@>
@ \�sphere development vector tertiary> $\longrightarrow$ 
\�sphere development vector secondary>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_vector_tertiary: sphere_development_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) sphere_development_vector expression.@>
@* \�sphere development vector expression>.

\LOG
\initials{LDF 2009.11.10.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_development_vector_expression@>

@q ** (2) sphere_development_vector expression --> sphere_development_vector_tertiary.  @>
@*1 \�sphere development vector expression> $\longrightarrow$ 
\�sphere development vector tertiary>.

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_vector_expression: sphere_development_vector_tertiary@>@/ 
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

