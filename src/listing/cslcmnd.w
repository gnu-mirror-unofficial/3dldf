@q cslcmnd.w @> 
@q Created by Laurence Finston Fri Aug  3 14:34:23 CEST 2007 @>
       
@q * (0) Commands for conic_section_lattice.  @>
@** Commands for \§conic section lattice>.
\initials{LDF 2007.08.03.}

\LOG
\initials{LDF 2007.08.03.}
Created this file.
\ENDLOG 

@q * (1) command --> SHIFT_LATTICE   @> 
@q * (1) conic_section_lattice_variable.@> 
@* \§command> $\longrightarrow$ \.{SHIFT\_LATTICE}
\§conic section lattice variable>.
\initials{LDF 2007.08.07.}

\LOG
\initials{LDF 2007.08.07.}
Added this rule.
\ENDLOG

@q ** (2) Definition.@> 

@<Define rules@>=
@=command:  SHIFT_LATTICE conic_section_lattice_variable@>@/
{

    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>);
   
    if (entry && entry->object)
    {
        static_cast<Conic_Section_Lattice*>(entry->object)->
           shift_lattice(1, static_cast<Scanner_Node>(parameter)); 
    } 

    @=$$@> = static_cast<void*>(0);

};

@q * (1) command --> SHIFT_LATTICE conic_section_lattice_variable @> 
@q * (1) COMMA numeric_expression                                 @> 
@* \§command> $\longrightarrow$ \.{SHIFT\_LATTICE} 
\§conic section lattice variable> \.{COMMA} \§numeric expression>.
\initials{LDF 2007.08.07.}

\LOG
\initials{LDF 2007.08.07.}
Added this rule.
\ENDLOG

@q ** (2) Definition.@> 

@<Define rules@>=
@=command:  SHIFT_LATTICE conic_section_lattice_variable@>@/
@=COMMA numeric_expression@>@/
{
    
    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>);
   
    if (entry && entry->object)
    {
        real r = @=$4@>;

        signed short sign;

        if (r < 0 )
        {
           sign = -1;
           r *= -1;
        }
        else 
           sign = 1;

        r = floor(r + .5);

        int i = static_cast<int>(r) % 5;

        i *= sign;

        static_cast<Conic_Section_Lattice*>(entry->object)->
           shift_lattice(i, static_cast<Scanner_Node>(parameter)); 
    }
 
    @=$$@> = static_cast<void*>(0);

};

@q * (1) command --> SET_TRANSFORM conic_section_lattice_variable @> 
@q * (1) COMMA transform_expression                               @> 
@* \§command> $\longrightarrow$ \.{SET\_TRANSFORM} 
\§conic section lattice variable> \.{COMMA} \§transform expression>.
\initials{LDF 2007.08.21.}

\LOG
\initials{LDF 2007.08.21.}
Added this rule.
\ENDLOG

@q ** (2) Definition.@> 

@<Define rules@>=
@=command:  SET_TRANSFORM conic_section_lattice_variable@>@/
@=COMMA transform_expression@>@/
{
    
    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

    Transform* t = static_cast<Transform*>(@=$4@>); 
   
    if (entry && entry->object)
    {
        Conic_Section_Lattice* c 
           = static_cast<Conic_Section_Lattice*>(entry->object);
        c->set_transform(*t);
    }

    delete t;    

    @=$$@> = static_cast<void*>(0);

};

@q * (1) command --> RESET_TRANSFORM conic_section_lattice_variable.@> 

@* \§command> $\longrightarrow$ 
\.{RESET\_TRANSFORM} \§conic section lattice variable>.
\initials{LDF 2007.08.21.}

\LOG
\initials{LDF 2007.08.21.}
Added this rule.
\ENDLOG

@q ** (2) Definition.@> 

@<Define rules@>=
@=command:  RESET_TRANSFORM conic_section_lattice_variable@>@/
{
    
    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

    if (entry && entry->object)
    {
        Conic_Section_Lattice* c 
           = static_cast<Conic_Section_Lattice*>(entry->object);
        c->reset_transform();
    }

    @=$$@> = static_cast<void*>(0);

};

@q * (1) command --> DELETE_TRANSFORM conic_section_lattice_variable.@> 

@* \§command> $\longrightarrow$ 
\.{DELETE\_TRANSFORM} \§conic section lattice variable>.
\initials{LDF 2007.08.21.}

\LOG
\initials{LDF 2007.08.21.}
Added this rule.
\ENDLOG

@q ** (2) Definition.@> 

@<Define rules@>=
@=command:  DELETE_TRANSFORM conic_section_lattice_variable@>@/
{
    
    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

    if (entry && entry->object)
    {
        Conic_Section_Lattice* c 
           = static_cast<Conic_Section_Lattice*>(entry->object);
        c->delete_transform();
    }

    @=$$@> = static_cast<void*>(0);

};

