Citizen.CreateThread(function()

    while true do

        Citizen.Wait(10)

        if IsControlJustPressed(1,166) then
            menu()
        end

    end

end)

function menu()

    local menuTest = RageUI.CreateMenu("Titre","sous-titre")

    RageUI.Visible(menuTest, not RageUI.Visible(menuTest))

    while menuTest do
        
        Citizen.Wait(0)

        RageUI.IsVisible(menuTest,true,true,true,function()
        
            RageUI.ButtonWithStyle("Titre du bouton","Description", {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then    
                    print("J'ai appuyer sur le bouton")
                end
            end)  

            RageUI.Separator("TEST")

            RageUI.ButtonWithStyle("Titre du bouton",nil, {RightBadge = RageUI.BadgeStyle.Lock}, true, function(Hovered, Active, Selected)
                if Selected then    
                end
            end)  

        
        end, function()
        end)

        if not RageUI.Visible(menuTest) then
            menuTest=RMenu:DeleteType("Titre", true)
        end

    end

end