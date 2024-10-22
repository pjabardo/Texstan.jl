module Texstan

export texstan, readtexstanfiles

function texstan(exe, fname::AbstractString, dname)
    d = pwd()
    
    exe1 = abspath(exe)
    fname1 = abspath(fname)
    
    try
        cd(dname)
        if Sys.islinux() || Sys.isapple()
            run(pipeline(`echo $fname1`, `wine $exe1`))
        else
            run(pipeline(`echo $fname1`, ` $exe1`))
        end
    finally
        cd(d)
    end
    
end

function readtexstanfiles(fname)

end



abstract type AbstractTexstanGeometry end

struct BoundaryLayer2d <: AbstractTexstanGeometry
    kgeom::Int
end

struct BoundaryLayerRev <: AbstractTexstanGeometry
    kgeom::Int
end

struct BoundaryLayerNozzle <: AbstractTexstanGeometry
    kgeom::Int
end

struct PipeFlow <: AbstractTexstanGeometry
    kgeom::Int
end

struct PlaneFlowSymm <: AbstractTexstanGeometry
    kgeom::Int
end

struct PlaneFlow <: AbstractTexstanGeometry
    kgeom::Int
end

struct AnnularDuct <: AbstractTexstanGeometry
    kgeom::Int
    ri::Float64
    ro::Float64
end


kgeom(geo::AbstractTexstanGeometry) = geo.kgeom



struct FluidProp
    kfluid::Int
        
end


isconstprop(fl::FluidProp) = fl.kfluid==1



end
