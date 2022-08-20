local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
 
local win = lib.CreateLib("YBA Menu by Sirzhik v-0.0.4", "RJTheme7")
local main_sec = win:NewTab("NPC")
local character_sec = win:NewTab("Character")
local vamp = win:NewTab("Vampire")
local fight = win:NewTab("Fighting Style")
 
local Section = main_sec:NewSection("NPC")
Section:NewButton("Travel", "Travel NPC", function()
    local args = {
        [1] = "PromptTriggered",
        [2] = game:GetService("ReplicatedStorage").NewDialogue.FastTravel
    }
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
 
 
end)
 
Section:NewButton("Arcade", "Arcade", function()
    local args = {
        [1] = "DialogueInteracted",
        [2] = {
            ["DialogueName"] = "Item Machine",
            ["Speaker"] = "Item Machine"
        }
    }
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
 
end)
 
Section:NewButton("Cosmetic Roller", "Cossmetic roller NPC", function()
 
local args = {
    [1] = "DialogueInteracted",
    [2] = {
        ["DialogueName"] = "Cosmetic Roller",
        ["Speaker"] = "Fang the Negotiator"
    }
}
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
 
end)
 
Section:NewButton("DialogueInteracted", "DialogueInteracted NPC", function()
 
    local args = {
    [1] = "DialogueInteracted",
    [2] = {
        ["DialogueName"] = "Cosmetic Roller",
        ["Speaker"] = "Fang the Negotiator"
    }
}
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
 
end)
 
Section:NewButton("Sell", "Sell NPC", function()
    local args = {
        [1] = "DialogueInteracted",
        [2] = {
            ["DialogueName"] = "Merchant",
            ["Speaker"] = "ShiftPlox, The Travelling Merchant"
        }
    }
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
end)
 
local Section_char = character_sec:NewSection("Character")
Section_char:NewButton("Speed 1", "WalkSpeed = 100", function()
    while true do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        wait()
    end
end)
 
Section_char:NewButton("Speed 2", "WalkSpeed = 200", function()
    while true do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
        wait()
    end
end)
 
Section_char:NewButton("Jump 1", "JumpPower = 100", function()
    while true do
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
        wait()
    end
end)
 
Section_char:NewButton("Jump 2", "JumpPower = 200", function()
    while true do
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
        wait()
    end
end)
 
local Section_vamp = vamp:NewSection("NPC")
Section_vamp:NewButton("No Burn", "No burn", function()
    local args = {
        [1] = "VampireBurnOff"
    }
    while true do
        game:GetService("Players").LocalPlayer.Character.RemoteFunction:InvokeServer(unpack(args))
        wait()
    end
end)
 
local Section_fight = fight:NewSection("Fight")
Section_fight:NewButton("Sword", "Buy Sword", function()
    local args = {
        [1] = "DialogueInteracted",
        [2] = {
            ["DialogueName"] = "Uzurashi",
            ["Speaker"] = "Uzurashi"
        }
    }
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
    
end)
 
Section_fight:NewButton("Hamon", "Buy Hamon", function()
local args = {
        [1] = "DialogueInteracted",
        [2] = {
            ["DialogueName"] = "Jonathan Joemama",
            ["Speaker"] = "Jonathan Joemama"
        }
    }
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
    
end)
 
Section_fight:NewButton("Boxing", "Buy Boxing", function()
    local args = {
        [1] = "DialogueInteracted",
        [2] = {
            ["DialogueName"] = "Boxing Gloves",
            ["Speaker"] = "Boxing Gloves"
        }
    }
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
 
end)
 
Section_fight:NewButton("Spin", "Buy Spin", function()
        local args = {
        [1] = "DialogueInteracted",
        [2] = {
            ["DialogueName"] = "Guy Zeppelin",
            ["Speaker"] = "Guy Zeppelin"
        }
    }
 
    game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
 
end)
