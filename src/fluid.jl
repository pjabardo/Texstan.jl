struct FluidProp
    kfluid::Int
        
end


isconstprop(fl::FluidProp) = fl.kfluid==1

