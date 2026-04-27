@context (Normal, NotAvailable, Collect, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Cone, :Blue])
@context (Normal, Available, Collect, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:186 =#

    y_target = -5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Cone, :Yellow])
@context (Normal, Available, Deliver, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Cone, :Green])
@context (Normal, NotAvailable, Collect, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Cube, :Yellow])
@context (Normal, Available, Deliver, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Sphere, :Green])
@context (HumanNearby, Available, Deliver, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Cone, :Blue])
@context (HumanNearby, Available, Collect, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:184 =#

    y_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Sphere, :Blue])
@context (Normal, NotAvailable, Deliver, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Cube, :Green])
@context (HumanNearby, Available, Deliver, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Cone, :Green])
@context (Normal, Available, Collect, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:185 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Cube, :Yellow])
@context (Normal, Available, Deliver, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Cube, :Blue])
@context (Normal, NotAvailable, Collect, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Cone, :Yellow])
@context (HumanNearby, NotAvailable, Collect, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Cone, :Yellow])
@context (HumanNearby, Available, Deliver, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Sphere, :Red])
@context (Emergency, NotAvailable, Deliver, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Cube, :Yellow])
@context (HumanNearby, Available, Collect, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:184 =#

    y_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Sphere, :Green])
@context (Normal, NotAvailable, Deliver, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Cone, :Red])
@context (HumanNearby, Available, Collect, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:185 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Cube, :Green])
@context (HumanNearby, NotAvailable, Deliver, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Cube, :Blue])
@context (Normal, NotAvailable, Collect, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Sphere, :Red])
@context (Emergency, Available, Deliver, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Cone, :Red])
@context (Emergency, Available, Collect, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Cube, :Red])
@context (Emergency, NotAvailable, Collect, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Cone, :Green])
@context (HumanNearby, Available, Deliver, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Sphere, :Green])
@context (HumanNearby, NotAvailable, Deliver, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Cube, :Yellow])
@context (HumanNearby, NotAvailable, Collect, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Cube, :Red])
@context (Emergency, NotAvailable, Collect, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Sphere, :Green])
@context (HumanNearby, NotAvailable, Collect, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Cone, :Green])
@context (Emergency, Available, Deliver, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Cone, :Blue])
@context (HumanNearby, Available, Deliver, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Cone, :Red])
@context (Normal, Available, Deliver, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Cone, :Red])
@context (HumanNearby, NotAvailable, Deliver, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Sphere, :Green])
@context (Emergency, NotAvailable, Deliver, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Sphere, :Blue])
@context (HumanNearby, Available, Deliver, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Cube, :Yellow])
@context (Normal, Available, Deliver, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Cube, :Green])
@context (Normal, Available, Deliver, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Sphere, :Red])
@context (HumanNearby, Available, Collect, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:185 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Cube, :Yellow])
@context (Normal, NotAvailable, Deliver, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Cube, :Yellow])
@context (HumanNearby, Available, Collect, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:186 =#

    y_target = -5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Cone, :Green])
@context (Normal, NotAvailable, Collect, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Cube, :Blue])
@context (Emergency, Available, Deliver, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Cone, :Green])
@context (Normal, Available, Deliver, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Sphere, :Blue])
@context (Normal, NotAvailable, Deliver, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Sphere, :Blue])
@context (HumanNearby, NotAvailable, Collect, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Cube, :Green])
@context (HumanNearby, Available, Collect, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:186 =#

    y_target = -5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Cone, :Red])
@context (HumanNearby, Available, Collect, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:186 =#

    y_target = -5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Cone, :Blue])
@context (Emergency, Available, Deliver, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Cone, :Yellow])
@context (Normal, NotAvailable, Collect, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Cube, :Red])
@context (HumanNearby, NotAvailable, Deliver, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Cube, :Red])
@context (Normal, Available, Deliver, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Cone, :Yellow])
@context (HumanNearby, Available, Collect, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:185 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Cube, :Red])
@context (Normal, Available, Deliver, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Cube, :Red])
@context (Emergency, Available, Collect, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Cone, :Blue])
@context (HumanNearby, Available, Collect, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:185 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Cube, :Blue])
@context (Emergency, Available, Collect, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Sphere, :Green])
@context (HumanNearby, NotAvailable, Collect, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Cone, :Blue])
@context (HumanNearby, NotAvailable, Deliver, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Cone, :Yellow])
@context (HumanNearby, Available, Deliver, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Cone, :Yellow])
@context (Emergency, NotAvailable, Deliver, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Cone, :Green])
@context (Normal, NotAvailable, Collect, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Sphere, :Blue])
@context (Normal, NotAvailable, Deliver, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Sphere, :Red])
@context (Emergency, Available, Collect, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Cone, :Yellow])
@context (HumanNearby, NotAvailable, Deliver, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Cone, :Red])
@context (Emergency, NotAvailable, Collect, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Cube, :Red])
@context (Normal, NotAvailable, Deliver, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Cone, :Blue])
@context (Emergency, NotAvailable, Deliver, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Cone, :Red])
@context (Emergency, Available, Deliver, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Sphere, :Blue])
@context (Emergency, Available, Deliver, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Cube, :Yellow])
@context (Normal, Available, Collect, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:184 =#

    y_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Sphere, :Red])
@context (HumanNearby, NotAvailable, Deliver, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Cone, :Green])
@context (HumanNearby, Available, Collect, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:186 =#

    y_target = -5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Cone, :Yellow])
@context (Emergency, Available, Collect, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Sphere, :Blue])
@context (Emergency, Available, Deliver, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Sphere, :Red])
@context (HumanNearby, NotAvailable, Collect, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Cube, :Blue])
@context (Emergency, NotAvailable, Collect, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Cone, :Blue])
@context (Emergency, NotAvailable, Collect, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Cone, :Red])
@context (Normal, NotAvailable, Collect, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Cube, :Green])
@context (Normal, NotAvailable, Collect, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Sphere, :Yellow])
@context (Emergency, NotAvailable, Deliver, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Cone, :Blue])
@context (Emergency, NotAvailable, Collect, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Cone, :Yellow])
@context (Emergency, NotAvailable, Collect, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Sphere, :Yellow])
@context (Emergency, NotAvailable, Deliver, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Sphere, :Green])
@context (HumanNearby, NotAvailable, Collect, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Cone, :Red])
@context (Normal, Available, Collect, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:186 =#

    y_target = -5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Cone, :Blue])
@context (Emergency, NotAvailable, Collect, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Cube, :Green])
@context (Normal, Available, Collect, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:185 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Cube, :Red])
@context (HumanNearby, Available, Collect, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:184 =#

    y_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Sphere, :Red])
@context (Emergency, Available, Collect, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Cone, :Red])
@context (Normal, NotAvailable, Deliver, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Sphere, :Yellow])
@context (Emergency, NotAvailable, Deliver, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Cube, :Red])
@context (HumanNearby, NotAvailable, Collect, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Sphere, :Green])
@context (HumanNearby, Available, Deliver, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Sphere, :Yellow])
@context (Normal, Available, Deliver, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Sphere, :Yellow])
@context (Emergency, NotAvailable, Collect, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Cube, :Blue])
@context (HumanNearby, NotAvailable, Deliver, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Sphere, :Red])
@context (Emergency, NotAvailable, Deliver, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Sphere, :Red])
@context (Normal, Available, Collect, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:185 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Cube, :Blue])
@context (Emergency, NotAvailable, Deliver, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Cube, :Blue])
@context (HumanNearby, NotAvailable, Collect, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Cube, :Yellow])
@context (HumanNearby, Available, Deliver, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Cube, :Blue])
@context (Normal, NotAvailable, Deliver, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Cube, :Red])
@context (Emergency, Available, Deliver, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Sphere, :Green])
@context (Emergency, Available, Collect, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Sphere, :Red])
@context (HumanNearby, NotAvailable, Collect, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Sphere, :Yellow])
@context (HumanNearby, Available, Deliver, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Sphere, :Blue])
@context (HumanNearby, NotAvailable, Deliver, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Cone, :Blue])
@context (Normal, NotAvailable, Deliver, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Cube, :Blue])
@context (Normal, Available, Collect, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:185 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Cube, :Green])
@context (Emergency, Available, Collect, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Sphere, :Yellow])
@context (Normal, Available, Collect, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:184 =#

    y_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Sphere, :Blue])
@context (Emergency, NotAvailable, Deliver, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Sphere, :Yellow])
@context (HumanNearby, NotAvailable, Deliver, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Sphere, :Yellow])
@context (Emergency, Available, Collect, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Cube, :Blue])
@context (Emergency, NotAvailable, Deliver, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Cube, :Green])
@context (Normal, NotAvailable, Deliver, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Cone, :Yellow])
@context (Normal, NotAvailable, Collect, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Sphere, :Green])
@context (Emergency, Available, Collect, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Cube, :Yellow])
@context (Normal, NotAvailable, Deliver, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Sphere, :Green])
@context (Emergency, Available, Deliver, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Cube, :Green])
@context (Normal, Available, Deliver, Cone, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Cone, :Blue])
@context (Normal, Available, Collect, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:184 =#

    y_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Sphere, :Yellow])
@context (HumanNearby, NotAvailable, Deliver, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Cube, :Green])
@context (HumanNearby, Available, Collect, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:184 =#

    y_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Collect, :Sphere, :Yellow])
@context (Normal, Available, Collect, Sphere, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:184 =#

    y_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Sphere, :Green])
@context (Emergency, Available, Collect, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Cone, :Green])
@context (Normal, NotAvailable, Collect, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Cone, :Red])
@context (Emergency, Available, Collect, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Collect, :Cube, :Green])
@context (Normal, NotAvailable, Collect, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Collect, :Cone, :Green])
@context (HumanNearby, NotAvailable, Collect, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Sphere, :Red])
@context (HumanNearby, NotAvailable, Deliver, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:179 =#

    y_target = 10#= /usr/src/app/droneScenario.jl:189 =#

    x_target = 5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Deliver, :Sphere, :Blue])
@context (Emergency, NotAvailable, Collect, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Sphere, :Blue])
@context (Emergency, NotAvailable, Collect, Sphere, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Sphere, :Red])
@context (Emergency, Available, Deliver, Sphere, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Sphere, :Yellow])
@context (Emergency, NotAvailable, Collect, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Collect, :Cube, :Yellow])
@context (Normal, Available, Collect, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:186 =#

    y_target = -5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Cone, :Green])
@context (Normal, Available, Collect, Cone, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:170 =#

    x_target = -10#= /usr/src/app/droneScenario.jl:186 =#

    y_target = -5#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Collect, :Cone, :Red])
@context (HumanNearby, Available, Deliver, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:190 =#

    x_target = 15#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Cube, :Red])
@context (Normal, Available, Deliver, Cube, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:192 =#

    x_target = 20#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :Available, :Deliver, :Cube, :Yellow])
@context (HumanNearby, Available, Deliver, Cube, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:166 =#

    v = 5#= /usr/src/app/droneScenario.jl:180 =#

    y_target = 0#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :Available, :Deliver, :Cube, :Green])
@context (HumanNearby, NotAvailable, Collect, Sphere, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:HumanNearby, :NotAvailable, :Collect, :Sphere, :Blue])
@context (Emergency, Available, Deliver, Cube, Red) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Cube, :Red])
@context (Emergency, NotAvailable, Deliver, Cone, Yellow) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :NotAvailable, :Deliver, :Cone, :Yellow])
@context (Normal, NotAvailable, Deliver, Cone, Green) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:165 =#

    v = 10#= /usr/src/app/droneScenario.jl:181 =#

    y_target = -10#= /usr/src/app/droneScenario.jl:191 =#

    x_target = 10#= /usr/src/app/droneScenario.jl:154 =#

    if !(x == x_target && y == y_target)
        #= /usr/src/app/droneScenario.jl:155 =#

        vx = (v * (x_target - x)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)#= /usr/src/app/droneScenario.jl:156 =#

        vy = (v * (y_target - y)) / sqrt((x_target - x) ^ 2 + (y_target - y) ^ 2)
    else
        #= /usr/src/app/droneScenario.jl:158 =#

        vx = 0#= /usr/src/app/droneScenario.jl:159 =#

        vy = 0
    end#= /usr/src/app/droneScenario.jl:161 =#

    return (vx, vy)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Normal, :NotAvailable, :Deliver, :Cone, :Green])
@context (Emergency, Available, Deliver, Cube, Blue) function operate(x::Float64, y::Float64)
    #= /usr/src/app/droneScenario.jl:150 =#

    return (0, 0)
end#= /root/.julia/packages/Contexts/MNfz2/src/COPCompositionLanguage.jl:736 =#

push!(get!(contextualFunctions, operate, []),
    Union{Expr, Symbol}[:Emergency, :Available, :Deliver, :Cube, :Blue])
function operate(x::Float64, y::Float64)
    contexts::Tuple = Tuple([(Contexts.contextRuleManager.groups[c])()
                             for c in (Normal, NotAvailable, Collect, Cone, Blue)])
    operate(contexts, x, y)
end
