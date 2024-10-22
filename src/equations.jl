

abstract type AbstractTexstanEquation end


struct MomentumSource
    
end
struct MomentumX{Source,Turb,Geom,Fluid,BCs} <: AbstractTexstanEquation
    geom::Geom
    fluid::Fluid
    turb::Turb
    source::Source
    bcs::BCs
end

    
