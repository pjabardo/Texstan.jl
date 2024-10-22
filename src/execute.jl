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
