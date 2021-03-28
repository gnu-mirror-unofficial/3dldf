@q pclrcmnd.w @> 
@q Created by Laurence Finston Sun Aug 29 18:22:07 CEST 2004  @>
     

@q * (0) Clear Commands.@>
@** Clear Commands.

@q ** (2) command --> CLEAR vector_type_variable.@>

@*1 \§command> $\longrightarrow$ \.{CLEAR} 
\§vector type variable>.

\LOG
\initials{LDF 2004.08.27.}
Added this rule.  It must be cleaned up and put into a function in 
|namespace Scan_Parse|.

\initials{LDF 2005.01.03.}
Removed code from this rule.  I'm about to start putting it in
|Scan_Parse::clear_vector_func()| in \filename{scanprsf.web}.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=command: CLEAR vector_type_variable@>
{

   Scan_Parse::clear_vector_func(static_cast<Scanner_Node>(parameter), 
                                 static_cast<Id_Map_Entry_Node>(@=$2@>)); 

   @=$$@> = static_cast<void*>(0);

};

@q ** (2) command --> CLEAR path_variable.@>

@*1 \§command> $\longrightarrow$ \.{CLEAR} \§path variable>.

\LOG
\initials{LDF 2004.11.01.}
Added this rule.

\initials{LDF 2005.10.24.}
Changed |path_like_variable| to |path_variable|.
Removed debugging code.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=command: CLEAR_CONNECTORS path_variable@>
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>); 

@q **** (4) Error handling:  |entry == 0|.@>   
@ Error handling:  |entry == 0|.
\initials{LDF 2004.11.01.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
   {
       @=$$@> = static_cast<void*>(0);

   } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |entry != 0 && entry->object != 0|.@>   

@ |entry != 0 && entry->object != 0|.
\initials{LDF 2004.11.01.}

@<Define rules@>=

   Path* p = static_cast<Path*>(entry->object);
  
   p->clear_connectors(); 

   @=$$@> = static_cast<void*>(0);

};

@q ** (2) command --> CLEAR pen_variable.@>

@*1 \§command> $\longrightarrow$ \.{CLEAR} \§pen variable>.

\LOG
\initials{LDF 2004.11.12.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=command: CLEAR pen_variable@>
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>); 

@q **** (4) Error handling:  |entry == 0|.@>   
@ Error handling:  |entry == 0|.
\initials{LDF 2004.11.12.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
   {
       @=$$@> = static_cast<void*>(0);

   } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |entry != 0 && entry->object != 0|.@>   

@ |entry != 0 && entry->object != 0|.
\initials{LDF 2004.11.12.}

@<Define rules@>=
  
   delete static_cast<Pen*>(entry->object);

   entry->object = 0;

   @=$$@> = static_cast<void*>(0);

};

@q ** (2) command --> CLEAR picture_variable.@>

@*1 \§command> $\longrightarrow$ \.{CLEAR} \§picture variable>.

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=command: CLEAR picture_variable@>
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>); 

@q **** (4) Error handling:  |entry == 0|.@>   
@ Error handling:  |entry == 0|.
\initials{LDF 2004.12.14.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0)) 
   {
       @=$$@> = static_cast<void*>(0);

   } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |entry != 0|.@>   

@ |entry != 0|.
\initials{LDF 2004.12.14.}

If |entry->object == 0|, just don't anything.  
Clearing an empty `picture' is allowed.  There's no need to 
signal an error or issue a warning.
\initials{LDF 2004.12.14.}

@<Define rules@>=
  
   if (entry->object)
      static_cast<Picture*>(entry->object)->clear(); 

   @=$$@> = static_cast<void*>(0);

};

@q ** (2) command --> CLEAR transform_variable.@>
@*1 \§command> $\longrightarrow$ \.{CLEAR} \§transform variable>.

\LOG
\initials{LDF 2007.08.21.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=command: CLEAR transform_variable@>
{
    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>); 
    delete static_cast<Transform*>(entry->object);
    entry->object = 0;
    @=$$@> = static_cast<void*>(0);
};

@q * (0) @>

