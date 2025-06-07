local Z3US = {}

local function create(class, props)
    local inst = Instance.new(class)
    for k, v in pairs(props) do inst[k] = v end
    return inst
end

function Z3US.Init()
    local gui = create("ScreenGui", { Parent = game.CoreGui, Name = "Z3US_GUI" })
    local frame = create("Frame", {
        Parent = gui,
        Size = UDim2.new(0, 400, 0, 300),
        Position = UDim2.new(0.5, -200, 0.5, -150),
        BackgroundColor3 = Color3.fromRGB(30,30,30),
        Active = true, Draggable = true
    })

    local function button(text, y, url)
        local btn = create("TextButton", {
            Parent = frame,
            Text = text,
            Position = UDim2.new(0.1, 0, y, 0),
            Size = UDim2.new(0.8, 0, 0, 40),
            BackgroundColor3 = Color3.fromRGB(50,50,50),
            TextColor3 = Color3.new(1,1,1),
            TextScaled = true
        })
        btn.MouseButton1Click:Connect(function()
            loadstring(game:HttpGet(url))()
        end)
    end

    button("Arsenal", 0.3, "https://raw.githubusercontent.com/KRATOS457/TURBO/main/Games/arsenal.lua")
    button("Planks", 0.5, "https://raw.githubusercontent.com/KRATOS457/TURBO/main/Games/planks.lua")
end

return Z3US
