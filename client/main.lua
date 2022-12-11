local weapons = {
    [1] = {nom = "Sniper Lourd MK2", weapon = "WEAPON_HEAVYSNIPER_MK2"},
    [2] = {nom = "Club de golf", weapon = "WEAPON_GOLFCLUB"},
    [3] = {nom = "Pistolet", weapon = "WEAPON_PISTOL"},
    [4] = {nom = "Pistolet de combat", weapon = "WEAPON_COMBATPISTOL"},
    [5] = {nom = "Bouteille Cassé", weapon = "WEAPON_BOTTLE"},
    [6] = {nom = "Pistolet Vintage", weapon = "WEAPON_VINTAGEPISTOL"},
    [7] = {nom = "Revolver MK2", weapon = "WEAPON_REVOLVER_MK2"},
    [8] = {nom = "Double Action", weapon = "WEAPON_DOUBLEACTION"},
    [9] = {nom = "Bullbup Shotgun", weapon = "WEAPON_BULLPUPSHOTGUN"},
    [10] = {nom = "DB Shotgun", weapon = "WEAPON_DBSHOTGUN"},
    [11] = {nom = "Carabine MK2", weapon = "WEAPON_SPECIALCARBINE_MK2"},
    [12] = {nom = "Fusils d'assaut MK2", weapon = "WEAPON_ASSAULTRIFLE_MK2"},
    [13] = {nom = "Grenade", weapon = "WEAPON_GRENADE"},
    [14] = {nom = "BZ Gas", weapon = "WEAPON_BZGAS"},
    [15] = {nom = "Proxi Mine", weapon = "WEAPON_PROXMINE"},
    [16] = {nom = "Viseur", weapon = "scope"},
    [17] = {nom = "Silencieux", weapon = "silencieux"},
    [18] = {nom = "Gilet Léger", weapon = "smallarmor"},
    [19] = {nom = "Gilet Lourd", weapon = "heavyarmor"},

}

local ArmoriesZone = {
	{coord = vector3(-394.63580322266,6056.4765625,31.50012588501), weapon1 = 2, weapon2 = 6, weapon3 = 18},
    {coord = vector3(-375.85021972656,6100.9965820313,31.444368362427), weapon1 = 5, weapon2 = 6, weapon3 = 18},
    {coord = vector3(-347.82800292969,6080.6918945313,31.38173866272), weapon1 = 6, weapon2 = 6, weapon3 = 18},
    {coord = vector3(-350.88229370117,6125.41796875,31.440021514893), weapon1 = 8, weapon2 = 6, weapon3 = 18},
    {coord = vector3(-301.37030029297,6121.6435546875,31.499631881714), weapon1 = 9, weapon2 = 6, weapon3 = 16},
    {coord = vector3(-214.93046569824,6198.5981445313,31.490184783936), weapon1 = 10, weapon2 = 6, weapon3 = 16},
    {coord = vector3(-229.59439086914,6260.7827148438,31.489261627197), weapon1 = 11, weapon2 = 6, weapon3 = 16},
    {coord = vector3(-173.33860778809,6279.5458984375,31.489349365234), weapon1 = 11, weapon2 = 6, weapon3 = 17},
    {coord = vector3(-116.48934173584,6323.6713867188,31.490367889404), weapon1 = 12, weapon2 = 6, weapon3 = 17},
    {coord = vector3(-133.87547302246,6359.6333007813,31.478233337402), weapon1 = 7, weapon2 = 6, weapon3 = 17},
    {coord = vector3(-62.245002746582,6393.4287109375,31.490348815918), weapon1 = 13, weapon2 = 6, weapon3 = 17},
    {coord = vector3(-9.4378995895386,6476.4331054688,31.498146057129), weapon1 = 14, weapon2 = 6, weapon3 = 17},
    {coord = vector3(81.888618469238,6535.1206054688,31.676448822021), weapon1 = 1, weapon2 = 6, weapon3 = 19},
    {coord = vector3(53.939487457275,6647.265625,32.276447296143), weapon1 = 12, weapon2 = 6, weapon3 = 19},
    {coord = vector3(99.319389343262,6618.8935546875,32.474624633789), weapon1 = 14, weapon2 = 6, weapon3 = 16},
    {coord = vector3(180.40127563477,6601.8798828125,32.047172546387), weapon1 = 13, weapon2 = 6, weapon3 = 17},
    {coord = vector3(26.210014343262,6604.5268554688,32.470439910889), weapon1 = 13, weapon2 = 6, weapon3 = 17},
    {coord = vector3(-14.396872520447,6584.5678710938,31.471263885498), weapon1 = 12, weapon2 = 6, weapon3 = 19},
    {coord = vector3(-70.434860229492,6554.119140625,31.491580963135), weapon1 = 14, weapon2 = 6, weapon3 = 16},
    {coord = vector3(-105.262550354,6532.4506835938,29.809150695801), weapon1 = 13, weapon2 = 6, weapon3 = 19},
    {coord = vector3(-136.44947814941,6497.5825195313,29.719762802124), weapon1 = 7, weapon2 = 6, weapon3 = 17},
    {coord = vector3(-171.84910583496,6434.7465820313,31.915157318115), weapon1 = 12, weapon2 = 6, weapon3 = 17},
    {coord = vector3(-240.71504211426,6382.7172851563,31.401935577393), weapon1 = 11, weapon2 = 6, weapon3 = 17},
    {coord = vector3(-266.79092407227,6335.0180664063,32.426181793213), weapon1 = 11, weapon2 = 6, weapon3 = 16},
    {coord = vector3(-319.58233642578,6290.0888671875,32.48934173584), weapon1 = 9, weapon2 = 6, weapon3 = 16},
    {coord = vector3(-343.30505371094,6243.7939453125,31.487516403198), weapon1 = 8, weapon2 = 6, weapon3 = 18},
    {coord = vector3(-377.25994873047,6244.4916992188,31.487245559692), weapon1 = 6, weapon2 = 6, weapon3 = 18},
    {coord = vector3(-456.25439453125,6110.9506835938,30.360961914063), weapon1 = 5, weapon2 = 6, weapon3 = 18},
    {coord = vector3(-441.20974731445,6034.3803710938,31.340538024902), weapon1 = 2, weapon2 = 6, weapon3 = 18},
}

for k,v in pairs(ArmoriesZone) do
    RMenu.Add('Event', v.weapon1, RageUI.CreateMenu("Armurerie", " "))
    RMenu:Get('Event', v.weapon1):SetSubtitle("~b~Choisissez l'arme que vous voulez prendre")
    RMenu:Get('Event', v.weapon1).EnableMouse = false
    RMenu:Get('Event', v.weapon1).Closed = function()
    end;
end

RageUI.CreateWhile(1.0, function()
    for k,v in pairs(ArmoriesZone) do
        local dst = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), v.coord, false)
        if dst <= 3.0 then
            ShowHelpNotification("Appuyer sur ~b~E~w~ pour ouvrir l'armurerie")
            if IsControlJustPressed(1, 38) then
                RageUI.Visible(RMenu:Get('Event', v.weapon1), not RageUI.Visible(RMenu:Get('Event', v.weapon1)))
            end
        end

        if RageUI.Visible(RMenu:Get('Event', v.weapon1)) then
            RageUI.DrawContent({ header = true, glare = true, instructionalButton = false }, function()
                RageUI.Button(weapons[v.weapon1].nom, nil, {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('ns_eventweapon:giveweapon', weapons[v.weapon1].weapon)
                        RageUI.Visible(RMenu:Get('Event', v.weapon1), not RageUI.Visible(RMenu:Get('Event', v.weapon1)))
                    end
                end)
                RageUI.Button(weapons[v.weapon2].nom, nil, {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('ns_eventweapon:giveweapon', weapons[v.weapon2].weapon)
                        RageUI.Visible(RMenu:Get('Event', v.weapon1), not RageUI.Visible(RMenu:Get('Event', v.weapon1)))
                    end
                end)
                if v.weapon3 ~= nil then
                    RageUI.Button(weapons[v.weapon3].nom, nil, {}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            TriggerServerEvent('ns_eventweapon:giveitem', weapons[v.weapon3].weapon, 2, 1)
                            RageUI.Visible(RMenu:Get('Event', v.weapon1), not RageUI.Visible(RMenu:Get('Event', v.weapon1)))
                        end
                    end)
                end
            end, function()
            end)
        end
    end
end, 1)

ShowHelpNotification = function(msg)
	AddTextEntry('NSPDHelpNotif', msg)
	DisplayHelpTextThisFrame('NSPDHelpNotif', false)
end

-- Create Blips
Citizen.CreateThread(function()
    for k, v in pairs(ArmoriesZone) do
        local blip = AddBlipForCoord(v.coord)

        SetBlipSprite(blip, 351)
        SetBlipScale(blip, 0.70)
        SetBlipColour(blip, 2)
        SetBlipCategory(blip, 7)
        SetBlipDisplay(blip, 8)
        SetBlipAsShortRange(blip, 1)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName("évènement")
        EndTextCommandSetBlipName(blip)
    end
end)