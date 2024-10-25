export BoundaryLayer2d, BoundaryLayerRev, BoundaryLayerNozzle
export PipeFlow, PlaneFlowSymm, PlaneFlow, AnnularDuct


abstract type AbstractTexstanGeometry end

struct BL2d <: AbstractTexstanGeometry
    x::Vector{Float64}
end

struct BLAxisymm <: AbstractTexstanGeometry
    x::Vector{Float64}
    r::Vector{Float64}
end

struct BLNozzle <: AbstractTexstanGeometry
    x::Vector{Float64}
    r::Vector{Float64}
end


struct PipeFlow <: AbstractTexstanGeometry
    kgeom::Int
end

struct PlaneFlowSymm <: AbstractTexstanGeometry
end

struct PlaneFlow <: AbstractTexstanGeometry
end

struct AnnularDuct <: AbstractTexstanGeometry
    ri::Float64
    ro::Float64
end

kgeom(geo::BL2d) = 1
kgeom(geo::BLAxisymm) = 2
kgeom(geo::BLNozzle) = 3

kgeom(geo::PipeFlow) = 4
kgeom(geo::PlaneFlowSymm) = 5
kgeom(geo::PlaneFlow) = 6
kgeom(geo::AnnularDuct) = 7

isinternal(geo::BL2d) = false
isinternal(geo::BLAxisymm) = false
isinternal(geo::BLNozzle) = false

isinternal(geo::PipeFlow) = true
isinternal(geo::PlaneFlowSymm) = true
isinternal(geo::PlaneFlow) = true
isinternal(geo::AnnularDuct) = true
