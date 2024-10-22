export BoundaryLayer2d, BoundaryLayerRev, BoundaryLayerNozzle
export PipeFlow, PlaneFlowSymm, PlaneFlow, AnnularDuct


abstract type AbstractTexstanGeometry end

struct BoundaryLayer2d <: AbstractTexstanGeometry
    kgeom::Int
    x::Vector{Float64}
end

struct BLAxisymm <: AbstractTexstanGeometry
    kgeom::Int
    x::Vector{Float64}
    r::Vector{Float64}
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

