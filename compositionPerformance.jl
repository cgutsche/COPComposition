using Pkg
Pkg.activate("COPEnv")
using Contexts
using Plots
using StatsPlots
using Statistics

@info "Started composition perfomance measurement script."

@newContext Normal, Emergency, HumanNearby
activateContext(Normal)
Mode = ContextGroup(Normal, Emergency, HumanNearby)


@newContext Available, NotAvailable
activateContext(NotAvailable)
Availability = ContextGroup(Available, NotAvailable)

@newContext Deliver, Collect
activateContext(Collect)
Operation = ContextGroup(Deliver, Collect)

@newContext Red1, Blue1
activateContext(Blue1)
Color = ContextGroup(Red1, Blue1)

@newContext Red2, Blue2, Green2
activateContext(Blue2)
Color = ContextGroup(Red2, Blue2, Green2)

@newContext Red3, Blue3, Green3, Yellow3
activateContext(Blue3)
Color = ContextGroup(Red3, Blue3, Green3, Yellow3)

@newContext Red4, Blue4, Green4, Yellow4, Orange4
activateContext(Blue4)
Color = ContextGroup(Red4, Blue4, Green4, Yellow4, Orange4)

@newContext Red5, Blue5, Green5, Yellow5, Orange5, Purple5
activateContext(Blue5)
Color = ContextGroup(Red5, Blue5, Green5, Yellow5, Orange5, Purple5)

@newContext Red6, Blue6, Green6, Yellow6, Orange6, Purple6, Cyan6
activateContext(Blue6)
Color = ContextGroup(Red6, Blue6, Green6, Yellow6, Orange6, Purple6, Cyan6)

@newContext Red7, Blue7, Green7, Yellow7, Orange7, Purple7, Cyan7, Magenta7
activateContext(Blue7)
Color = ContextGroup(Red7, Blue7, Green7, Yellow7, Orange7, Purple7, Cyan7, Magenta7)

@newContext Red8, Blue8, Green8, Yellow8, Orange8, Purple8, Cyan8, Magenta8, Black8
activateContext(Blue8)
Color = ContextGroup(Red8, Blue8, Green8, Yellow8, Orange8, Purple8, Cyan8, Magenta8, Black8)

@newContext Red9, Blue9, Green9, Yellow9, Orange9, Purple9, Cyan9, Magenta9, Black9, White9
activateContext(Blue9)
Color = ContextGroup(Red9, Blue9, Green9, Yellow9, Orange9, Purple9, Cyan9, Magenta9, Black9, White9)

@newContext Red10, Blue10, Green10, Yellow10, Orange10, Purple10, Cyan10, Magenta10, Black10, White10, Brown10
activateContext(Blue10)
Color = ContextGroup(Red10, Blue10, Green10, Yellow10, Orange10, Purple10, Cyan10, Magenta10, Black10, White10, Brown10)

@newContext Red11, Blue11, Green11, Yellow11, Orange11, Purple11, Cyan11, Magenta11, Black11, White11, Brown11, Pink11
activateContext(Blue11)
Color = ContextGroup(Red11, Blue11, Green11, Yellow11, Orange11, Purple11, Cyan11, Magenta11, Black11, White11, Brown11, Pink11)

@newContext Red12, Blue12, Green12, Yellow12, Orange12, Purple12, Cyan12, Magenta12, Black12, White12, Brown12, Pink12, Grey12
activateContext(Blue12)
Color = ContextGroup(Red12, Blue12, Green12, Yellow12, Orange12, Purple12, Cyan12, Magenta12, Black12, White12, Brown12, Pink12, Grey12)

@newContext Red13, Blue13, Green13, Yellow13, Orange13, Purple13, Cyan13, Magenta13, Black13, White13, Brown13, Pink13, Grey13, Lime13
activateContext(Blue13)
Color = ContextGroup(Red13, Blue13, Green13, Yellow13, Orange13, Purple13, Cyan13, Magenta13, Black13, White13, Brown13, Pink13, Grey13, Lime13)

@newContext Red14, Blue14, Green14, Yellow14, Orange14, Purple14, Cyan14, Magenta14, Black14, White14, Brown14, Pink14, Grey14, Lime14, Teal14
activateContext(Blue14)
Color = ContextGroup(Red14, Blue14, Green14, Yellow14, Orange14, Purple14, Cyan14, Magenta14, Black14, White14, Brown14, Pink14, Grey14, Lime14, Teal14)

@newContext Red15, Blue15, Green15, Yellow15, Orange15, Purple15, Cyan15, Magenta15, Black15, White15, Brown15, Pink15, Grey15, Lime15, Teal15, Navy15
activateContext(Blue15)
Color = ContextGroup(Red15, Blue15, Green15, Yellow15, Orange15, Purple15, Cyan15, Magenta15, Black15, White15, Brown15, Pink15, Grey15, Lime15, Teal15, Navy15)

@newContext Sphere, Cube, Cone
activateContext(Sphere)
Shape = ContextGroup(Sphere, Cube, Cone)


function test_v1()
    @contextual function operate1(x::Float64, y::Float64)
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
            @context Blue1     begin x_target = 5 end
            @context Red1      begin x_target = 15 end
        end
    end
end

function test_v2()
    @contextual function operate2(x::Float64, y::Float64)
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
                @slot target_y_col
            end
            @context Deliver begin
                @slot target_y_del
                @slot target_x_del
            end
        end
        @slotDef target_y_del begin
            @context Sphere   begin y_target = 10 end
            @context Cube     begin y_target = 0 end
            @context Cone     begin y_target = -10 end
        end
        @slotDef target_y_col begin
            @context Sphere   begin y_target = 5 end
            @context Cube     begin y_target = 0 end
            @context Cone     begin y_target = -5 end
        end
        @slotDef target_x_del begin
            @context Blue2     begin x_target = 5 end
            @context Red2      begin x_target = 15 end
            @context Green2    begin x_target = 10 end
        end
    end
end

function test_v3()
    @contextual function operate3(x::Float64, y::Float64)
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
            @context Blue3     begin x_target = 5 end
            @context Red3      begin x_target = 15 end
            @context Green3    begin x_target = 10 end
            @context Yellow3   begin x_target = 20 end
        end
    end
end

function test_v4()
    @contextual function operate4(x::Float64, y::Float64)
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
            @context Blue4     begin x_target = 5 end
            @context Red4      begin x_target = 15 end
            @context Green4    begin x_target = 10 end
            @context Yellow4   begin x_target = 20 end
            @context Orange4   begin x_target = 25 end
        end
    end
end

function test_v5()
    @contextual function operate5(x::Float64, y::Float64)
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
            @context Blue5     begin x_target = 5 end
            @context Red5      begin x_target = 15 end
            @context Green5    begin x_target = 10 end
            @context Yellow5   begin x_target = 20 end
            @context Orange5   begin x_target = 25 end
            @context Purple5   begin x_target = 30 end
        end
    end
end

function test_v6()
    @contextual function operate5(x::Float64, y::Float64)
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
            @context Blue6     begin x_target = 5 end
            @context Red6      begin x_target = 15 end
            @context Green6    begin x_target = 10 end
            @context Yellow6   begin x_target = 20 end
            @context Orange6   begin x_target = 25 end
            @context Purple6   begin x_target = 30 end
            @context Cyan6     begin x_target = 35 end
        end
    end
end

function test_v7()
    @contextual function operate5(x::Float64, y::Float64)
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
            @context Blue7     begin x_target = 5 end
            @context Red7      begin x_target = 15 end
            @context Green7    begin x_target = 10 end
            @context Yellow7   begin x_target = 20 end
            @context Orange7   begin x_target = 25 end
            @context Purple7   begin x_target = 30 end
            @context Cyan7     begin x_target = 35 end
            @context Magenta7  begin x_target = 40 end
        end
    end
end

function test_v8()
    @contextual function operate8(x::Float64, y::Float64)
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
            @context Blue8     begin x_target = 5 end
            @context Red8      begin x_target = 15 end
            @context Green8    begin x_target = 10 end
            @context Yellow8   begin x_target = 20 end
            @context Orange8   begin x_target = 25 end
            @context Purple8   begin x_target = 30 end
            @context Cyan8     begin x_target = 35 end
            @context Magenta8  begin x_target = 40 end
            @context Black8    begin x_target = 45 end
        end
    end
end

function test_v9()
    @contextual function operate9(x::Float64, y::Float64)
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
            @context Blue9     begin x_target = 5 end
            @context Red9      begin x_target = 15 end
            @context Green9    begin x_target = 10 end
            @context Yellow9   begin x_target = 20 end
            @context Orange9   begin x_target = 25 end
            @context Purple9   begin x_target = 30 end
            @context Cyan9     begin x_target = 35 end
            @context Magenta9  begin x_target = 40 end
            @context Black9    begin x_target = 45 end
            @context White9    begin x_target = 50 end
        end
    end
end

function test_v10()
    @contextual function operate10(x::Float64, y::Float64)
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
            @context Blue10     begin x_target = 5 end
            @context Red10      begin x_target = 15 end
            @context Green10    begin x_target = 10 end
            @context Yellow10   begin x_target = 20 end
            @context Orange10   begin x_target = 25 end
            @context Purple10   begin x_target = 30 end
            @context Cyan10     begin x_target = 35 end
            @context Magenta10  begin x_target = 40 end
            @context Black10    begin x_target = 45 end
            @context White10    begin x_target = 50 end
            @context Brown10    begin x_target = 55 end
        end
    end
end

function test_v11()
    @contextual function operate11(x::Float64, y::Float64)
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
            @context Blue11     begin x_target = 5 end
            @context Red11      begin x_target = 15 end
            @context Green11    begin x_target = 10 end
            @context Yellow11   begin x_target = 20 end
            @context Orange11   begin x_target = 25 end
            @context Purple11   begin x_target = 30 end
            @context Cyan11     begin x_target = 35 end
            @context Magenta11  begin x_target = 40 end
            @context Black11    begin x_target = 45 end
            @context White11    begin x_target = 50 end
            @context Brown11    begin x_target = 55 end
            @context Pink11     begin x_target = 60 end
        end
    end
end

function test_v12()
    @contextual function operate12(x::Float64, y::Float64)
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
            @context Blue12     begin x_target = 5 end
            @context Red12      begin x_target = 15 end
            @context Green12    begin x_target = 10 end
            @context Yellow12   begin x_target = 20 end
            @context Orange12   begin x_target = 25 end
            @context Purple12   begin x_target = 30 end
            @context Cyan12     begin x_target = 35 end
            @context Magenta12  begin x_target = 40 end
            @context Black12    begin x_target = 45 end
            @context White12    begin x_target = 50 end
            @context Brown12    begin x_target = 55 end
            @context Pink12     begin x_target = 60 end
            @context Grey12     begin x_target = 65 end
        end
    end
end

function test_v13()
    @contextual function operate13(x::Float64, y::Float64)
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
            @context Blue13     begin x_target = 5 end
            @context Red13      begin x_target = 15 end
            @context Green13    begin x_target = 10 end
            @context Yellow13   begin x_target = 20 end
            @context Orange13   begin x_target = 25 end
            @context Purple13   begin x_target = 30 end
            @context Cyan13     begin x_target = 35 end
            @context Magenta13  begin x_target = 40 end
            @context Black13    begin x_target = 45 end
            @context White13    begin x_target = 50 end
            @context Brown13    begin x_target = 55 end
            @context Pink13     begin x_target = 60 end
            @context Grey13     begin x_target = 65 end
            @context Lime13     begin x_target = 70 end
        end
    end
end

function test_v14()
    @contextual function operate14(x::Float64, y::Float64)
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
            @context Blue14     begin x_target = 5 end
            @context Red14      begin x_target = 15 end
            @context Green14    begin x_target = 10 end
            @context Yellow14   begin x_target = 20 end
            @context Orange14   begin x_target = 25 end
            @context Purple14   begin x_target = 30 end
            @context Cyan14     begin x_target = 35 end
            @context Magenta14  begin x_target = 40 end
            @context Black14    begin x_target = 45 end
            @context White14    begin x_target = 50 end
            @context Brown14    begin x_target = 55 end
            @context Pink14     begin x_target = 60 end
            @context Grey14     begin x_target = 65 end
            @context Lime14     begin x_target = 70 end
            @context Teal14     begin x_target = 75 end
        end
    end
end
function test_v15()
    @contextual function operate15(x::Float64, y::Float64)
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
            @context Blue15     begin x_target = 5 end
            @context Red15      begin x_target = 15 end
            @context Green15    begin x_target = 10 end
            @context Yellow15   begin x_target = 20 end
            @context Orange15   begin x_target = 25 end
            @context Purple15   begin x_target = 30 end
            @context Cyan15     begin x_target = 35 end
            @context Magenta15  begin x_target = 40 end
            @context Black15    begin x_target = 45 end
            @context White15    begin x_target = 50 end
            @context Brown15    begin x_target = 55 end
            @context Pink15     begin x_target = 60 end
            @context Grey15     begin x_target = 65 end
            @context Lime15     begin x_target = 70 end
            @context Teal15     begin x_target = 75 end
            @context Navy15     begin x_target = 80 end
        end
    end
end

NRuns = 100000
test_v1()
test_v2()
test_v3()
test_v4()
test_v5()
test_v6()
test_v7()
test_v8()
test_v9()
test_v10()
test_v11()
test_v12()
test_v13()
test_v14()
test_v15()

t_v1 = []
t_v2 = []
t_v3 = []
t_v4 = []
t_v5 = []
t_v6 = []
t_v7 = []
t_v8 = []
t_v9 = []
t_v10 = []
t_v11 = []
t_v12 = []
t_v13 = []
t_v14 = []
t_v15 = []

@info "Started Measurements."
for i in 1:NRuns
    t0 = @elapsed test_v1()
    push!(t_v1, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v2()
    push!(t_v2, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v3()
    push!(t_v3, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v4()
    push!(t_v4, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v5()
    push!(t_v5, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v6()
    push!(t_v6, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v7()
    push!(t_v7, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v8()
    push!(t_v8, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v9()
    push!(t_v9, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v10()
    push!(t_v10, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v11()
    push!(t_v11, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v12()
    push!(t_v12, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v13()
    push!(t_v13, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v14()
    push!(t_v14, t0)
end
for i in 1:NRuns
    t0 = @elapsed test_v15()
    push!(t_v15, t0)
end

@info "Measurements done. Generating plot."

t_v1 = 1e6 .* t_v1
t_v2 = 1e6 .* t_v2
t_v3 = 1e6 .* t_v3
t_v4 = 1e6 .* t_v4
t_v5 = 1e6 .* t_v5
t_v6 = 1e6 .* t_v6
t_v7 = 1e6 .* t_v7
t_v8 = 1e6 .* t_v8
t_v9 = 1e6 .* t_v9
t_v10 = 1e6 .* t_v10
t_v11 = 1e6 .* t_v11
t_v12 = 1e6 .* t_v12
t_v13 = 1e6 .* t_v13
t_v14 = 1e6 .* t_v14
t_v15 = 1e6 .* t_v15


x = [72, 108, 144, 180, 216, 252, 288, 324, 360, 396, 432, 468, 504, 540, 576]
function median_without_outliers(v::Vector{Float64})
    sorted_v = sort(v)
    trimmed_v = sorted_v[100:end-100]
    return median(trimmed_v)
end
y = [median_without_outliers(t_v1), 
     median_without_outliers(t_v2), 
     median_without_outliers(t_v3), 
     median_without_outliers(t_v4), 
     median_without_outliers(t_v5),
     median_without_outliers(t_v6),
     median_without_outliers(t_v7),
     median_without_outliers(t_v8),
     median_without_outliers(t_v9),
     median_without_outliers(t_v10),
     median_without_outliers(t_v11),
     median_without_outliers(t_v12),
     median_without_outliers(t_v13),
     median_without_outliers(t_v14),
     median_without_outliers(t_v15)]


println("Pearson coefficient: ", cor(x, y))


p = plot(xticks = ([i for i in 1:2:15], ["$(i*36+36)" for i in 1:2:15]),
         xlabel = "Number of Variants",
         ylabel = "Time [μs]",xguidefontsize=14, yguidefontsize=14, xtickfontsize=14, ytickfontsize=14, legendfontsize=14, legend=false)#, yscale=:log10, xscale=:log10)
p = boxplot!([1], t_v1, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([2], t_v2, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([3], t_v3, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([4], t_v4, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([5], t_v5, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([6], t_v6, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([7], t_v7, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([8], t_v8, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([9], t_v9, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([10], t_v10, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([11], t_v11, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([12], t_v12, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([13], t_v13, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([14], t_v14, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)
p = boxplot!([15], t_v15, outliers=false, xformatter=:none, color = :lightblue, label="", linewidth=1, linecolor = :black)

@info "Saving plot."

savefig(p, "/output/composition_performance_boxplot.pdf")
display(p)
readline()
