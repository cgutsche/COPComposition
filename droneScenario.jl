using Pkg
Pkg.activate("COPEnv")
using Contexts
using Plots
using StatsPlots

@info "Started call perfomance measurement script."

@newContext Normal, Emergency, HumanNearby
activateContext(Normal)
Mode = ContextGroup(Normal, Emergency, HumanNearby)

@newContext Available, NotAvailable
activateContext(NotAvailable)
Availability = ContextGroup(Available, NotAvailable)

@newContext Deliver, Collect
activateContext(Collect)
Operation = ContextGroup(Deliver, Collect)

@newContext Red, Blue, Green, Yellow
activateContext(Blue)
Color = ContextGroup(Red, Blue, Green, Yellow)

@newContext Sphere, Cube, Cone
activateContext(Sphere)
Shape = ContextGroup(Sphere, Cube, Cone)

function operateAlt(x::Float64, y::Float64)
    if isActive(Emergency | (NotAvailable & Collect))
        return(0, 0)
    end
    if isActive(Normal)
        v = 10
    else
        v = 5
    end
    if isActive(Deliver)
        if isActive(Blue)
            x_target = 5
        elseif isActive(Red)
            x_target = 15
        elseif isActive(Yellow)
            x_target = 20
        else
            x_target = 10
        end
        if isActive(Sphere)
            y_target = 10
        elseif isActive(Cube)
            y_target = 0
        else
            y_target = -10
        end
    else
        x_target = -10
        if isActive(Sphere)
            y_target = 5
        elseif isActive(Cube)
            y_target = 0
        else
            y_target = -5
        end
    end
    if !(x == x_target && y == y_target)
        vx = v * (x_target - x) / sqrt((x_target - x)^2 + (y_target - y)^2)
        vy = v * (y_target - y) / sqrt((x_target - x)^2 + (y_target - y)^2)
    else
        vx = 0
        vy = 0
    end
    return (vx, vy)
end

function operateAlt2(modeContext::Union{NormalContextType, HumanNearbyContextType, EmergencyContextType},
                     AvailabilityContext::Union{AvailableContextType, NotAvailableContextType},
                     operationContext::Union{DeliverContextType, CollectContextType},
                     shapeContext::Union{SphereContextType, CubeContextType, ConeContextType},
                     colorContext::Union{RedContextType, BlueContextType, GreenContextType, YellowContextType},
                     x::Float64, y::Float64) 
    @context Normal function get_v()
        return 10
    end
    @context HumanNearby function get_v()
        return 5
    end
    @context (Collect, Blue) function get_x()
        return -10
    end
    @context (Collect, Red) function get_x()
        return -10
    end
    @context (Collect, Green) function get_x()
        return -10
    end
    @context (Collect, Yellow) function get_x()
        return -10
    end
    @context (Deliver, Blue) function get_x()
        return 5
    end
    @context (Deliver, Yellow) function get_x()
        return 20
    end
    @context (Deliver, Red) function get_x()
        return 15
    end
    @context (Deliver, Green) function get_x()
        return 10
    end
    @context (Collect, Sphere) function get_y()
        return 5
    end
    @context (Collect, Cube) function get_y()
        return 0
    end
    @context (Collect, Cone) function get_y()
        return -5
    end
    @context (Deliver, Sphere) function get_y()
        return 10
    end
    @context (Deliver, Cube) function get_y()
        return 0
    end
    @context (Deliver, Cone) function get_y()
        return -10
    end
    if isActive(Emergency | (NotAvailable & Collect))
        return (0, 0)
    end
    v = @context modeContext get_v() 
    x_target = @context (operationContext, colorContext) get_x()
    y_target = @context (operationContext, shapeContext) get_y()
    if !(x == x_target && y == y_target)
        vx = v * (x_target - x) / sqrt((x_target - x)^2 + (y_target - y)^2)
        vy = v * (y_target - y) / sqrt((x_target - x)^2 + (y_target - y)^2)
    else
        vx = 0
        vy = 0
    end
    return (vx, vy)
end

@contextual function operate(x::Float64, y::Float64)
    @output "/output/droneScenario_generated.jl"
    @skeleton begin 
        @slot mode 
    end
    @slotDef mode begin
        @context Emergency | (NotAvailable & Collect) begin return (0, 0) end
        @context !(Emergency | (NotAvailable & Collect)) begin
            @slot get_velocity
            @slot operation
            if !(x == x_target && y == y_target)
                vx = v * (x_target - x) / sqrt((x_target - x)^2 + (y_target - y)^2)
                vy = v * (y_target - y) / sqrt((x_target - x)^2 + (y_target - y)^2)
            else
                vx = 0
                vy = 0
            end
            return (vx, vy)
        end
    end
    @slotDef get_velocity begin
        @context Normal      begin v = 10 end
        @context HumanNearby begin v = 5 end
    end
    @slotDef operation begin
        @context Collect begin
           x_target = -10
           @slot shape
        end
        @context Deliver begin
            @slot targetshape 
            @slot color
        end
    end
    @slotDef targetshape begin
        @context Sphere   begin y_target = 10 end
        @context Cube     begin y_target = 0 end
        @context Cone     begin y_target = -10 end
    end
    @slotDef shape begin
        @context Sphere   begin y_target = 5 end
        @context Cube     begin y_target = 0 end
        @context Cone     begin y_target = -5 end
    end
    @slotDef color begin
        @context Blue     begin x_target = 5 end
        @context Red      begin x_target = 15 end
        @context Green    begin x_target = 10 end
        @context Yellow   begin x_target = 20 end
    end
end

include("/output/droneScenario_generated.jl")

@info "Code generated, proceeding with measurements."

t_cop = []
t_cop_const = []
t_cop_mdp = []
t_if = []
t_alt = []
t_alt_const = []
t_alt_control = []

RandContexts = []
for c1 in Mode.subContexts
    # uncomment to skip Emergency context
    #if c1 == Emergency
    #    continue
    #end
    for c2 in Availability.subContexts
        for c3 in Operation.subContexts
            # uncomment to skip invalid context combinations
            #if ((c3 == Collect) && (c2 == NotAvailable))
            #    continue
            #end
            for c4 in Shape.subContexts
                for c5 in Color.subContexts
                    push!(RandContexts, [c1, c2, c3, c4, c5])
                end
            end
        end
    end 
end
RandContexts = repeat(RandContexts, outer = 5000)
t_control = []

coord_control_1 = []
coord_control_2 = []
coord_control_3 = []
coord_control_4 = []
coord_control_5 = []

function testConC2()
    t4 = @elapsed begin
        ctuple = (Mode(), Availability(), Operation(), Shape(), Color())
    end
    t2 = @elapsed begin
        test4 = @context ctuple operate(0.0, 0.0)
    end
    push!(t_cop_mdp, t2)
    push!(t_control, t4)
end
function testCon()
    t1 = @elapsed (test1 = @context (Mode(), Availability(), Operation(), Shape(), Color()) operate(0.0, 0.0))
    push!(t_cop, t1)
    push!(coord_control_1, test1)
end
function testConC(contexts::Tuple)
    t2 = @elapsed begin
        test4 = @context contexts operate(0.0, 0.0)
    end
    push!(t_cop_const, t2)
    push!(coord_control_2, test4)
end

function testIf()
    t3 = @elapsed test2 = operateAlt(0.0, 0.0)
    push!(t_if, t3)
    push!(coord_control_3, test2)
end
function testSplitContextConst(contexts::Vector{Context})
    t4 = @elapsed begin
        mode = Mode()
        op = Operation()
        color = Color() 
        shape = Shape()
        av = Availability()
    end
    activateContext.(contexts)
    t3 = @elapsed test2 = operateAlt2(contexts[1], contexts[2], contexts[3], contexts[4], contexts[5], 0.0, 0.0)
    push!(t_alt_control, t4)
    push!(t_alt_const, t3)
    push!(coord_control_4, test2)
end
function testSplitContext()
    t3 = @elapsed test2 = operateAlt2(Mode(), Availability(), Operation(), Shape(), Color(), 0.0, 0.0)
    push!(t_alt, t3)
    push!(coord_control_5, test2)
end

testConC((Normal, Available, Deliver, Sphere, Blue))
testCon()
testIf()
testSplitContext()
testSplitContextConst([Normal, Available, Deliver, Sphere, Blue])
empty!(t_cop)
empty!(t_cop_const)
empty!(t_cop_mdp)
empty!(t_if)
empty!(t_alt)
empty!(t_alt_const)
empty!(t_control)
empty!(t_alt_control)
empty!(coord_control_1)
empty!(coord_control_2)
empty!(coord_control_3)
empty!(coord_control_4)
empty!(coord_control_5)
@info "Measure CoSMuCOP, explicit."
for i in 1:length(RandContexts)
    for c in RandContexts[i]
        activateContext(c)
    end
    context = (RandContexts[i][1], RandContexts[i][2], RandContexts[i][3], RandContexts[i][4], RandContexts[i][5])
    testConC(context)
end

# for i in 1:length(RandContexts)
#     for c in RandContexts[i]
#         activateContext(c)
#     end
#     testConC2()
# end

@info "Measure CoSMuCOP, explicit."
for i in 1:length(RandContexts)
    for c in RandContexts[i]
        activateContext(c)
    end
    testCon()
end
for i in 1:length(RandContexts)
    for c in RandContexts[i]
        activateContext(c)
    end
    testIf()
end
@info "Measure Split, implicit."
for i in 1:length(RandContexts)
    for c in RandContexts[i]
        activateContext(c)
    end
    testSplitContext()
end
@info "Measure Split, explicit."
for i in 1:length(RandContexts)
    for c in RandContexts[i]
        activateContext(c)
    end
    testSplitContextConst(RandContexts[i])
end


for i in 1:length(RandContexts)
    if coord_control_1[i] != coord_control_2[i] || coord_control_1[i] != coord_control_3[i] || coord_control_1[i] != coord_control_4[i] || coord_control_1[i] != coord_control_5[i]
        println("Mismatch in results in i = $i !")
        println(RandContexts[i])
        println(coord_control_1[i], " ", coord_control_2[i], " ", coord_control_3[i], " ", coord_control_4[i], " ", coord_control_5[i])
        error("Results do not match!")
    end
end

@info "Measurements finished. Defining plot."

t_cop = t_cop .* 10^6
t_if = t_if .* 10^6
t_cop_const = t_cop_const .* 10^6
t_control = t_control .* 10^6
t_alt = t_alt .* 10^6
t_alt_const = t_alt_const .* 10^6
t_alt_control = t_alt_control .* 10^6
t_cop_mdp = t_cop_mdp .* 10^6

p = plot(ylabel = "Time [μs]", xguidefontsize=14, yguidefontsize=14, xtickfontsize=14, ytickfontsize=14, legendfontsize=14,legend=:outertopright)

p = boxplot!([1], t_cop, outliers=false, label = "contex, implicit", xformatter=:none, linewidth=1, linecolor = :black)
p = boxplot!([2], t_cop_const, outliers=false, label = "context, explicit", xformatter=:none, linewidth=1, linecolor = :black)
p = boxplot!([3], t_if, outliers=false, label = "if-then-else", xformatter=:none, linewidth=1, linecolor = :black)
p = boxplot!([4], t_alt, outliers=false, label = "context split, implicit", xformatter=:none, linewidth=1, linecolor = :black)
p = boxplot!([5], t_alt_const, outliers=false, label = "context split, explicit", xformatter=:none, linewidth=1, linecolor = :black)

@info "Saving finished."

savefig(p, "/output/call_performance_boxplot.pdf")
display(p)
readline()
