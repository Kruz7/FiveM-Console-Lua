MachoInjectResource('any', [[ 
for i = 0, GetNumResources(), 1 do
    local resource_name = GetResourceByFindIndex(i)
    if resource_name and GetResourceState(resource_name) == "started" then
        if GetNumResourceMetadata(resource_name, "client_script") == 4 and resource_name ~= seconderes then
            if GetResourceMetadata(resource_name, "client_script", 0) == "lib/Tunnel.lua" and GetResourceMetadata(resource_name, "client_script", 1) == "lib/Proxy.lua" and GetResourceMetadata(resource_name, "client_script", 2) == "client.lua" and GetResourceMetadata(resource_name, "client_script", 3) == "69.lua" then
                firstres = resource_name
            end
        end
        if GetNumResourceMetadata(resource_name, "server_script") == 2 and resource_name ~= firstres then
            if GetResourceMetadata(resource_name, "server_script", 0) == "@vrp/lib/utils.lua" and GetResourceMetadata(resource_name, "server_script", 1) == "server.lua" and GetResourceMetadata(resource_name, "client_script", 0) == "lib/Tunnel.lua" and GetResourceMetadata(resource_name, "client_script", 1) == "lib/Proxy.lua" and GetResourceMetadata(resource_name, "client_script", 2) == 'client.lua' then
                seconderes = resource_name
            end
        end
        if resource_name == "vRP" or resource_name == "vrp" then
            rp = true
        end
        if GetResourceMetadata(resource_name, "ac", 0) == "fg" then
            print("")
            print("Anticheat Bulundu: ^7[^1Fiveguard^7]")
            print('Dosya Konumu: ^7[^1' .. resource_name ..'^7]')
            print("")
            print("Try Stop Ac Source")
            print("^4Yardım: help^4")
        end
    end
end

RegisterCommand("help", function()
    print("^3Echo Lua Help Menü")
    print("^9--------------------------------")
    print("^1hesoyam:^7Kendini Revivelersin")
    print("^1kıyafet:^7Kıyafet Menu Açar (kıyafet2)")
    print("^1arac:^7Altına Araç Basar")
    print("^1carfix:^7Aracı Tamir Eder")
    print("^1carkey:^7Aracın Anahtarını Verir")
    print("^1savecar:^7Aracı Üstüne Alırsın")
    print("^9--------------------------------")
    print("^1wptpm:^7Waypointe teleport")
    print("^1cdtpm:^7Kordinatlara teleport")
    print("^1unteleport:^7Adminlerin Bring Atmasını Engeller")
    print("^1tesla:^7Aracı İşaretli Konuma Sürer")
    print("^9--------------------------------")
    print("^1pedbas:^7Herkese ped basma")
    print("^1carspawn:^7Herkese araç spawnlar")
    print("^1stopcar:^7Araç spawnını durdurur")
    print("^1aracmodstart:^7Araç Modunu Baslatır")
    print("^1aracmodstop:^7Araç Modunu Durdurur")
    print("^1sound:^7Sunucuya ses basar")
    print("^1stopsound:^7Ses basmayı durdurur")
    print("^1parmak:^7GSR testi.")
    print("^1hapis:^7Hapse Göndermeye Yarar.")
    print("^1qbadmin:^7Adminmenu Açmaya Çalışır. (qbadmin2- qbadmin3)")
    print("^9--------------------------------")
    print("^1carspawn:^7Belirli Aralıklarla Sunucudaki Herkese Araç Basar.")
    print("^1stopcar:^7Spawn İşlemini Durdurur")
    print("^1raincar:^7Araç Yağmuru Başlatır.")
    print("^1stoprain:^7Yağmuru Durdurur.")
    print("^1pedspawn:^7Görünmez Pedler Oluşturur.")
    print("^1pedattack:^7Pedleri Oyuncuya Saldırtır Ve Görünür Kılar.")
    print("^1pedstop:^7Pedleri Durdurur.")
    print("^1devesp:^7ESP Açmaya Yarar Idler Gözükür.")
    print("^9--------------------------------")
    print("^1boomcar:^7Verilen İDye Patlayan Araç Spawnlar.")
    print("^1heli:^7Verilen İDye Kamikaze Yapar.")
    print("^1stopheli:^7Kamikazeyi Durdurur.")
    print("^9-------^7[BETA]^9---------")
    print("^1itemshop:^7ak4y-dailywheel Üzerinden İtem Basar.")
    print("^1fishitem:^7ak4y-advenc-fish Üzerinden İtem Basar.")
    print("^1bedoitem:^7bedoflex-fish Üzerinden İtem Basar.")
    print("^1hasoitem:^7haso-base Üzerinden İtem Basar.")
    print("^1brutalrob:^7brutal-atm soygunu Üzerinden para Basar.")
    print("^1pltcash:^7plt-farmer Üzerinden para Basar.")
    print("^1uwuitem:^7mt-uwucafe Üzerinden item Basar.")
    print("^1mugshot:^7cqc-mugshot Üzerinden item Basar.")
    print("^1walkjobitem:^7walkjob Üzerinden item Basar.")
end, false)

RegisterCommand('arac',function(a,b)TriggerEvent('QBCore:Command:SpawnVehicle',b[1])end)
RegisterCommand("carfix",function()local a=GetVehiclePedIsIn(PlayerPedId(),false)if DoesEntityExist(a)then SetVehicleEngineHealth(a,1000)SetVehicleFixed(a)notify("Araç tamir edildi.")else notify("Araçta değilsiniz veya araç yakınında değil.")end end,false)function notify(b)SetNotificationTextEntry("STRING")AddTextComponentString(b)DrawNotification(true,false)end
RegisterCommand('carkey', function()
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1000)

            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            local vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 70)

            if DoesEntityExist(vehicle) then
                local plate = GetVehicleNumberPlateText(vehicle)
                TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
                Citizen.Wait(1000)
                print("^7Anahtar verildi: " .. GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)) .. " plate: " .. plate)
                break 
            else
                print("^1err:^7Araç Bulunamadı")
            end
        end
    end)
end)
RegisterCommand("wptpm", function(source, args, rawCommand)
    local playerId = source
    local WaypointHandle = GetFirstBlipInfoId(8)
    
    if DoesBlipExist(WaypointHandle) then
        local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)
        for a=1,1000 do SetPedCoordsKeepVehicle(PlayerPedId(),waypointCoords["x"],waypointCoords["y"],a+0.0)local b,c=GetGroundZFor_3dCoord(waypointCoords["x"],waypointCoords["y"],a+0.0)if b then SetPedCoordsKeepVehicle(PlayerPedId(),waypointCoords["x"],waypointCoords["y"],c)break end;Citizen.Wait(5)end

        print("^7Bypassed^0")
    else
        print("^7ERROR^0 Waypoint Bulunamadı")
    end

end, false)
RegisterCommand('cdtpm', function(source, args)
    local x = tonumber(args[1])
    local y = tonumber(args[2])
    local z = tonumber(args[3])

    if x and y and z then
        SetPedCoordsKeepVehicle(PlayerPedId(), x + 0.0, y + 0.0, z + 0.0)
        Wait(250)
        local timer = GetGameTimer() + 5000
        while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
            Wait(0)
            SetPedCoordsKeepVehicle(PlayerPedId(), x + 0.0, y + 0.0, z + 0.0)
            if timer <= GetGameTimer() then
                break
            end
        end
    else
        print("^7Koordinatları doğru formatta girin. Örnek: /cdtpm <x> <y> <z> (Virgül işaretlerini silin)")
    end
end, false)
RegisterCommand("unteleport", function(source, args, rawCommand)
    local lastPosition = nil

    local config = {
        duration = 5000,
        notificationText = "",
        textXOffset = 0.0, 
        textYOffset = -0.01, 
        outlineXOffset = 0.001, 
        outlineYOffset = 0.001, 
        positionX = 0.9, 
        positionY = 0.79, 
        slideInDuration = 3000, 
        soundName = "NAV_UP_DOWN"
    }

    local notificationActive = false
    local notificationStartTime = 0
    local weaponOut = false
    local originalPositionX, originalPositionY = config.positionX, config.positionY

    function TeleportToLastPosition()
        if lastPosition then
            SetEntityCoords(PlayerPedId(), lastPosition.x, lastPosition.y, lastPosition.z, false, false, false, false)
        else
            print("^7unteleported")
        end
    end

    function ShowNotification(text)
        if not notificationActive then
            config.notificationText = text
            notificationActive = true
            notificationStartTime = GetGameTimer()

            Citizen.CreateThread(function()
                PlayNotificationSound(config.soundName)

                while true do
                    local elapsedTime = GetGameTimer() - notificationStartTime

                    local progress = elapsedTime / config.slideInDuration

                    DrawNotification(progress)

                    if elapsedTime > config.slideInDuration then
                        break
                    end

                    Citizen.Wait(0)
                end

                Citizen.Wait(config.duration - config.slideInDuration)

                notificationActive = false
            end)
        end
    end

    function DrawNotification(progress)
        local alpha = 255

        local x = originalPositionX - (originalPositionX - config.positionX) * (1 - progress)
        local y = originalPositionY

        local color = 255
        if math.floor(GetGameTimer() / 500) % 2 == 0 then
            color = 0
        end

        DrawRect(x + config.outlineXOffset, y + config.outlineYOffset, 0.2, 0.06, color, 0, 255 - color, alpha)

        DrawRect(x + 0.001, y + 0.001, 0.198, 0.058, 0, 0, 0, alpha)

        local textX = x + config.textXOffset
        local textY = y + config.textYOffset
        SetTextFont(0)
        SetTextProportional(1)
        SetTextScale(0.0, 0.35)
        SetTextColour(255, 255, 255, alpha)
        SetTextCentre(true)
        SetTextDropshadow(0, 0, 0, 0, alpha)
        SetTextEntry("STRING")
        AddTextComponentString(config.notificationText)
        DrawText(textX, textY)
    end


    function PlayNotificationSound(soundName)
        PlaySoundFrontend(-1, soundName, "HUD_FRONTEND_DEFAULT_SOUNDSET", 0)
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5) 

            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            if lastPosition and #(playerCoords - lastPosition) > 10.0 then
                TeleportToLastPosition()
                ShowNotification("Admin Seni yanına Çekmeye çalıştı")
            else
                lastPosition = playerCoords
            end
        end
    end)

end, false)
local noclipActive = false
CreateThread(function()
    local key = 348 
    local me = PlayerPedId()
    local isInVehicle = false

    while true do
        Wait(0)

        local vehicle = GetVehiclePedIsIn(me, false)
        isInVehicle = vehicle ~= nil and vehicle ~= 0

        if IsControlJustReleased(0, key) then
            noclipActive = not noclipActive
            if noclipActive then
            else
            end
        end

        if noclipActive then
            SetLocalPlayerVisibleLocally(true)
            SetEntityAlpha(me, 51, false)
            FreezeEntityPosition(me, true, false)
            SetEntityInvincible(me, true)
            SetEntityVisible(me, false)

            if not isInVehicle then
                local x, y, z = table.unpack(GetEntityCoords(me, true))
                local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
                local pitch = GetGameplayCamRelativePitch()

                local dx = -math.sin(heading * math.pi / 180.0)
                local dy = math.cos(heading * math.pi / 180.0)
                local dz = math.sin(pitch * math.pi / 180.0)

                local len = math.sqrt(dx * dx + dy * dy + dz * dz)
                if len ~= 0 then
                    dx = dx / len
                    dy = dy / len
                    dz = dz / len
                end

                local speed = 0.5

                if IsControlPressed(0, 21) then 
                    speed = speed + 1
                end

                if IsControlPressed(0, 19) then 
                    speed = 0.25
                end

                if IsControlPressed(0, 32) then 
                    x = x + speed * dx
                    y = y + speed * dy
                    z = z + speed * dz
                end

                if IsControlPressed(0, 34) then 
                    local leftVector = vector3(-dy, dx, 0.0)
                    x = x + speed * leftVector.x
                    y = y + speed * leftVector.y
                end

                if IsControlPressed(0, 269) then 
                    x = x - speed * dx
                    y = y - speed * dy
                    z = z - speed * dz
                end

                if IsControlPressed(0, 9) then
                    local rightVector = vector3(dy, -dx, 0.0)
                    x = x + speed * rightVector.x
                    y = y + speed * rightVector.y
                end

                if IsControlPressed(0, 22) then 
                    z = z + speed
                end

                if IsControlPressed(0, 62) then
                    z = z - speed
                end

                SetEntityCoordsNoOffset(me, x, y, z, true, true, true)
                SetEntityHeading(me, heading)
            else
                local x, y, z = table.unpack(GetEntityCoords(vehicle, true))
                local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(vehicle)
                local pitch = GetGameplayCamRelativePitch()

                local dx = -math.sin(heading * math.pi / 180.0)
                local dy = math.cos(heading * math.pi / 180.0)
                local dz = math.sin(pitch * math.pi / 180.0)

                local len = math.sqrt(dx * dx + dy * dy + dz * dz)
                if len ~= 0 then
                    dx = dx / len
                    dy = dy / len
                    dz = dz / len
                end

                local speed = 0.5

                if IsControlPressed(0, 21) then 
                    speed = speed + 1
                end

                if IsControlPressed(0, 19) then 
                    speed = 0.25
                end

                if IsControlPressed(0, 32) then
                    x = x + speed * dx
                    y = y + speed * dy
                    z = z + speed * dz
                end

                if IsControlPressed(0, 34) then 
                    local leftVector = vector3(-dy, dx, 0.0)
                    x = x + speed * leftVector.x
                    y = y + speed * leftVector.y
                end

                if IsControlPressed(0, 269) then 
                    x = x - speed * dx
                    y = y - speed * dy
                    z = z - speed * dz
                end

                if IsControlPressed(0, 9) then 
                    local rightVector = vector3(dy, -dx, 0.0)
                    x = x + speed * rightVector.x
                    y = y + speed * rightVector.y
                end

                if IsControlPressed(0, 22) then
                    z = z + speed
                end

                if IsControlPressed(0, 62) then 
                    z = z - speed
                end
 
                SetEntityCoordsNoOffset(vehicle, x, y, z, true, true, true)
                SetEntityHeading(vehicle, heading)
            end
        else
            ResetEntityAlpha(me)
            SetEntityInvincible(me, false)
            SetEntityVisible(me, true)
            FreezeEntityPosition(me, false, true)
            
            ResetEntityAlpha(vehicle)
            SetEntityInvincible(vehicle, false)
            SetEntityVisible(vehicle, true)
        end
    end
end)
RegisterCommand('tesla', function()
    local arrivedAtDestination = false 

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(500) 

            local playerPed = PlayerPedId()

            if IsPedInAnyVehicle(playerPed, false) and GetPedInVehicleSeat(GetVehiclePedIsIn(playerPed, false), -1) == playerPed then
                local waypointBlip = GetFirstBlipInfoId(8)

                if not arrivedAtDestination and DoesBlipExist(waypointBlip) then
                    local waypointCoords = GetBlipInfoIdCoord(waypointBlip)

                    local vehicle = GetVehiclePedIsIn(playerPed, false)

                    TaskVehicleDriveToCoord(playerPed, vehicle, waypointCoords.x, waypointCoords.y, waypointCoords.z, 50.0, 1, GetEntityModel(vehicle), 2883621, 10.0, true)

                    while true do
                        Citizen.Wait(1000)
                        local distance = GetDistanceBetweenCoords(GetEntityCoords(playerPed), waypointCoords.x, waypointCoords.y, waypointCoords.z, true)
                        if distance < 5.0 then
                            arrivedAtDestination = true
                            PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1.0)
                            DrawNotification("Hedefinize vardınız.")
                            break
                        end
                    end
                end
            end
        end
    end)
end, false)
RegisterCommand("pedbas", function()
    if isSpawning then
        isSpawning = false
        print("NPC oluşturma durduruldu.")
    else
        isSpawning = true
        print("NPC oluşturma başlatıldı.")
        SpawnNPCs()
    end
end)

function SpawnNPCs()
    Citizen.CreateThread(function()
        while isSpawning do
            RequestModel(npcModel)

            while not HasModelLoaded(npcModel) do
                Wait(100)
            end

            local players = GetActivePlayers()
            for _, playerId in ipairs(players) do
                local playerPed = GetPlayerPed(playerId)
                local pos = GetEntityCoords(playerPed)
                local heading = GetEntityHeading(playerPed)

                local npc = CreatePed(4, npcModel, pos.x, pos.y, pos.z, heading, true, false)
                SetEntityAsNoLongerNeeded(npc)
            end

            Citizen.Wait(5000)

            local npcs = GetGamePool('CPed')
            for _, npc in ipairs(npcs) do
                if IsPedModel(npc, GetHashKey(npcModel)) then
                    if DoesEntityExist(npc) then
                        DeleteEntity(npc)
                    end
                end
            end
        end
    end)
end
RegisterCommand('carspawn', function(source, args, rawCommand)
    if careverActive then
        print("^7 zaten çalışıyor.")
        return
    end

    local vehicleModel = args[1]
    if not vehicleModel then
        print("^7Lütfen bir araç modeli belirtiniz.")
        return
    end

    careverActive = true

    Citizen.CreateThread(function()
        while careverActive do
            RequestModel(vehicleModel)

            while not HasModelLoaded(vehicleModel) do
                Wait(100)
            end

            local playerList = GetActivePlayers()
            for _, playerId in ipairs(playerList) do
                local ped = GetPlayerPed(playerId)
                local pos = GetEntityCoords(ped)
                local heading = GetEntityHeading(ped)

                local vehicle = CreateVehicle(vehicleModel, pos.x, pos.y, pos.z, heading, true, false)
                SetEntityAsNoLongerNeeded(vehicle)
            end

            Citizen.Wait(350)
        end
    end)
end)
RegisterCommand('stopcar', function()
    careverActive = false
    print("^7Car Spawn Durduruldu")
end)

local isPlaying = false
local interval = 1000  
local isPlaying = false
local interval = 1000  
local volume = 1.0 

RegisterCommand("sound", function(source, args, rawCommand)
    if not isPlaying then
        if #args < 1 then
            print("^7ERROR^0 Ses İsmi girin.")
            print("^9--------------------------------")
            print("Önerilen Sesler")
            print("airwrench -- alreadyusing -- hobbs2 -- security-alarm -- warehousealert -- panic -- alarm -- alarm2")
            print("cuff -- uncuff -- security-alarm -- warehousealert -- panic -- alarm -- alarm2")
            print("^9--------------------------------")
            return
        end

        local soundName = args[1]

        isPlaying = true
        Citizen.CreateThread(function()
            while isPlaying do
                TriggerServerEvent('InteractSound_SV:PlayOnAll', soundName, volume)
                Citizen.Wait(interval)  
            end
        end)
        print("^Döngü^0 " .. soundName .. " Saniyede 1 kez oynatılıyor " .. volume)
    else
        print("^7INFO^0 Zaten Ses Çalıyor (stopsound)")
    end
end, false)

RegisterCommand("stopsound", function(source, args, rawCommand)
    isPlaying = false
    print("^7Durduruldu^0")
end, false)

RegisterCommand("parmak", function(source, args, rawCommand)
    local id = tonumber(args[1])
    if id then
        if id == -1 then
            for i = 1, 1000 do
                Citizen.Wait(200)
                TriggerServerEvent("police:server:showFingerprint", i)
            end
        else
            TriggerServerEvent("police:server:showFingerprint", id)
        end
    else
        print("İD Geçersiz Veya -1 Girin")
    end
end, false)

RegisterCommand('hapis', function(a, b, c)
    CreateThread(function()
        if #b >= 2 then
            local i = tonumber(b[1])
            local x = tonumber(b[2])
            TriggerServerEvent("police:server:JailPlayer", i, x)
        else 
        end 
    end)
end, false)

RegisterCommand('qbadmin', function()
    TriggerEvent('qb-admin:client:openMenu')
 end, false)

 RegisterCommand('savecar', function()
    TriggerEvent('qb-admin:client:SaveCar')
 end, false)

local carModel = "everon"
local raincarActive = false

RegisterCommand('raincar', function(source, args, rawCommand)
    if raincarActive then
        print("7Zaten Yağmur Yağıyor :D")
        return
    end

    -- Oyuncu ID'sini kontrol et
    local targetPlayerId = tonumber(args[1])
    if not targetPlayerId then
        print("^7ID Yanlıs")
        return
    end

    raincarActive = true

    Citizen.CreateThread(function()
        while raincarActive do
            RequestModel(carModel)

            while not HasModelLoaded(carModel) do
                Wait(100)
            end

            local targetPed = GetPlayerPed(GetPlayerFromServerId(targetPlayerId))
            if not DoesEntityExist(targetPed) then
                print(":^7Id Bulunamadı")
                raincarActive = false
                return
            end

            local pos = GetEntityCoords(targetPed)
            local heading = GetEntityHeading(targetPed)

            local car = CreateVehicle(carModel, pos.x, pos.y, pos.z + 50.0, heading, true, false)
            SetEntityAsMissionEntity(car, true, true)
            SetVehicleEngineOn(car, true, true, false) 
            SetVehicleEngineHealth(car, 100.0)
            SetVehiclePetrolTankHealth(car, 80.0) 
            SetVehicleBodyHealth(car, 200.0)

            Citizen.CreateThread(function()
                while DoesEntityExist(car) and raincarActive do
                    local carPos = GetEntityCoords(car)
                    
                    if carPos.z < 5.0 then
                        raincarActive = false
                        
                        while GetEntityHealth(car) > 0 do
                            Wait(100)
                        end
                        
                        DeleteEntity(car)
                        print("^7Araç Yağmuru Başladı")
                        break
                    end
                    Wait(100)
                end
            end)

            Citizen.Wait(5000)
        end
    end)
end)

RegisterCommand('stoprain', function()
    raincarActive = false
    print("^7Araç Yağmuru Durduruldu")
end)

local vehicleModel = "t20" 

local careverActive = false

RegisterCommand('carspawn', function(source, args, rawCommand)
    if careverActive then
        print("^7Zaten Çalışıyor")
        return
    end

    local vehicleModel = args[1]
    if not vehicleModel then
        print("^7Model Hatası")
        return
    end

    careverActive = true

    Citizen.CreateThread(function()
        while careverActive do
            RequestModel(vehicleModel)

            while not HasModelLoaded(vehicleModel) do
                Wait(100)
            end

            local playerList = GetActivePlayers()
            for _, playerId in ipairs(playerList) do
                local ped = GetPlayerPed(playerId)
                local pos = GetEntityCoords(ped)
                local heading = GetEntityHeading(ped)

                local vehicle = CreateVehicle(vehicleModel, pos.x, pos.y, pos.z, heading, true, false)
                SetEntityAsNoLongerNeeded(vehicle)
            end

            Citizen.Wait(350)
        end
    end)
end)

RegisterCommand('stopcar', function()
    careverActive = false
    print("^7Herkese Araç Basma Durdu")
end)
local weaponHashes = { -- Silah hash'leri tablosu
    fire = 2138347493, -- fire
    rain = 1834241177, -- rain
    wid = -1238556825, -- wid
    mg = -1660422300   -- mg
}

local pedModel = "a_m_y_mexthug_01"
local pedSpawning = false
local createdPeds = {} 

function ConfigurePed(ped)
    SetEntityInvincible(ped, true)
    SetEntityAlpha(ped, 0, false)
    SetPedConfigFlag(ped, 52, true)
    SetPedConfigFlag(ped, 251, true)
    SetPedAsNoLongerNeeded(ped)
    DisablePedPainAudio(ped, true)
    StopCurrentPlayingAmbientSpeech(ped)
    StopPedSpeaking(ped, true)
    SetEntityCollision(ped, false, true)
    SetEntityVisible(ped, false, false)
end

RegisterCommand("pedspawn", function(source, args, rawCommand)
    pedSpawning = true

    Citizen.CreateThread(function()
        while pedSpawning do
            RequestModel(pedModel)
            while not HasModelLoaded(pedModel) do
                Citizen.Wait(100)
            end

            local playerPed = PlayerPedId()
            local playerPos = GetEntityCoords(playerPed)

            local newPed = CreatePed(28, pedModel, playerPos.x, playerPos.y, playerPos.z, 0.0, true, false)
            
            ConfigurePed(newPed)
            table.insert(createdPeds, newPed)

            print("^2Bir ped daha oluşturuldu. Toplam ped sayısı: " .. #createdPeds)

            Citizen.Wait(4000)
        end
    end)
end, false)

RegisterCommand("pedattack", function(source, args, rawCommand)
    local targetPlayerId = tonumber(args[1])
    local weaponType = args[2]

    if not targetPlayerId or not weaponType or not weaponHashes[weaponType] then
        print("^1Error:^7 Kullanım pedstart ID silah(fire, rain, wid, mg).")
        return
    end

    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetPlayerId))
    if not DoesEntityExist(targetPed) then
        print("^1Error:^7 ID Hatalı")
        return
    end

    local targetPos = GetEntityCoords(targetPed)
    local heading = GetEntityHeading(targetPed)

    Citizen.CreateThread(function()
        for i = 1, 4 do 
            if #createdPeds > 0 then
                local newPed = table.remove(createdPeds)
                SetEntityCoords(newPed, targetPos.x + math.random(-2, 2), targetPos.y + math.random(-2, 2), targetPos.z + 0.5)
                SetEntityHeading(newPed, heading)

                
                SetEntityAlpha(newPed, 255, false)
                SetEntityVisible(newPed, true, false)
                SetEntityInvincible(newPed, false) 
                SetEntityCollision(newPed, true, true) 

                local weaponHash = weaponHashes[weaponType]

                GiveWeaponToPed(newPed, weaponHash, 999, false, true)
                SetCurrentPedWeapon(newPed, weaponHash, true)

                Citizen.CreateThread(function()
                    while true do
                        TaskShootAtEntity(newPed, targetPed, 5000, 0xC6EE6B4C) 
                        Citizen.Wait(500)
                    end
                end)
            else
                print("^1Error:^7Kullanılcak Ped Bulunamadı")
                break
            end
        end
    end)
end, false)

RegisterCommand("pedstop", function(source, args, rawCommand)
    pedSpawning = false
    print("^1Ped spawn Durduruldu (Pedler Kullanıma hazır)")
end, false)


local espEnabled = false
local espDistance = 2000.0

RegisterCommand("devesp", function()
    espEnabled = not espEnabled 
    if espEnabled then
        print("ESP Açıldı")
    else
        print("ESP Kapatıldı")
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if espEnabled then
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                local targetCoords = GetEntityCoords(targetPed)
                local distance = #(playerCoords - targetCoords)

                if distance < espDistance then
                    local playerName = GetPlayerName(playerId)
                    local playerServerId = GetPlayerServerId(playerId)
                    local displayText = string.format("Player: %s | ID: %d | %.1f m", playerName, playerServerId, distance)
                    
                    DrawText3D(targetCoords.x, targetCoords.y, targetCoords.z + 1.0, displayText, distance)
                end
            end
        end
    end
end)

function DrawText3D(x, y, z, text, distance)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())

    local scaleFactor = 1.0 - (distance / espDistance)
    scaleFactor = math.max(0.1, scaleFactor)

    SetTextScale(0.35 * scaleFactor, 0.35 * scaleFactor)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
end


RegisterCommand("boomcar", function(source, args, rawCommand)
    local targetPlayerId = tonumber(args[1])

    if not targetPlayerId then
        print("^1Hata: Geçersiz oyuncu ID'si. Lütfen geçerli bir ID girin.")
        return
    end

    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetPlayerId))
    if not DoesEntityExist(targetPed) then
        print("^1Hata: Oyuncu bulunamadı.")
        return
    end

    local vehicleModel = GetHashKey("adder")

    RequestModel(vehicleModel)
    while not HasModelLoaded(vehicleModel) do
        Wait(100)
    end

    local targetPos = GetEntityCoords(targetPed)

    local spawnX, spawnY, spawnZ = targetPos.x, targetPos.y, targetPos.z + 50.0 

    local vehicle = CreateVehicle(vehicleModel, spawnX, spawnY, spawnZ, GetEntityHeading(targetPed), true, false)

    SetVehicleOnGroundProperly(vehicle)
    SetVehicleEngineHealth(vehicle, -4000)
    SetVehiclePetrolTankHealth(vehicle, 0.0)

    ApplyForceToEntity(vehicle, 1, 0.0, 0.0, -5000.0, 0, 0, 0, 0, true, true, true, true, true)

    Citizen.CreateThread(function()
        while DoesEntityExist(vehicle) and DoesEntityExist(targetPed) do
            local vehiclePos = GetEntityCoords(vehicle)
            local targetPos = GetEntityCoords(targetPed)

            if vehiclePos.z - targetPos.z < 1.0 then
                SetVehicleEngineHealth(vehicle, -4000)
                SetVehiclePetrolTankHealth(vehicle, -1.0)
                break
            end
            Citizen.Wait(50)
        end
    end)

    Citizen.CreateThread(function()
        Citizen.Wait(5000) 
        if DoesEntityExist(vehicle) then
            DeleteEntity(vehicle)
            print("^2Bilgi:^7 Araç silindi.")
        end
    end)
end, false)

local aracModActive = false
local boostPower = 10.0
local jumpPower = 8.0

RegisterCommand("aracmodstart", function()
    aracModActive = true
    print("[AraçMod] Mod aktif edildi.")
end)

RegisterCommand("aracmodstop", function()
    aracModActive = false
    print("[AraçMod] Mod kapatıldı.")
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if aracModActive then
            local ped = PlayerPedId()
            if IsPedInAnyVehicle(ped, false) then
                local vehicle = GetVehiclePedIsIn(ped, false)
                if vehicle and vehicle ~= 0 then
                    if IsControlPressed(0, 21) then
                        local forwardVector = GetEntityForwardVector(vehicle)
                        local currentVelocity = GetEntityVelocity(vehicle)
                        local boostVector = vector3(forwardVector.x * boostPower * 0.1, forwardVector.y * boostPower * 0.1, 0.0)
                        local newVelocity = currentVelocity + boostVector
                        SetEntityVelocity(vehicle, newVelocity)
                    end

                    if IsControlJustPressed(0, 22) then -- 22 = Space (Jump)
                        local currentVel = GetEntityVelocity(vehicle)
                        SetEntityVelocity(vehicle, vector3(currentVel.x, currentVel.y, jumpPower))
                        print("[AraçMod] Zıplama uygulandı.")
                    end
                end
            end
        else
            Citizen.Wait(1000)
        end
    end
end)

local helicopterModel = "swift2"
local heliActive = false

RegisterCommand('heli', function(source, args, rawCommand)
    if heliActive then
        print("^7 Zaten Çalışıyor")
        return
    end

    local targetPlayerId = tonumber(args[1])
    if not targetPlayerId then
        print("^7ID Girin")
        return
    end

    heliActive = true

    Citizen.CreateThread(function()
        while heliActive do
            RequestModel(helicopterModel)

            while not HasModelLoaded(helicopterModel) do
                Wait(100)
            end

            local targetPed = GetPlayerPed(GetPlayerFromServerId(targetPlayerId))
            if not DoesEntityExist(targetPed) then
                print("^7 ID Hatalı")
                heliActive = false
                return
            end

            local pos = GetEntityCoords(targetPed)
            local heading = GetEntityHeading(targetPed)

            local helicopter = CreateVehicle(helicopterModel, pos.x, pos.y, pos.z + 50.0, heading, true, false)
            SetEntityAsMissionEntity(helicopter, true, true)
            SetVehicleEngineOn(helicopter, true, true, false)

            SetVehicleEngineHealth(helicopter, 100.0) 
            SetVehiclePetrolTankHealth(helicopter, 80.0) 
            SetVehicleBodyHealth(helicopter, 200.0) 

            Citizen.CreateThread(function()
                while DoesEntityExist(helicopter) and heliActive do
                    local heliPos = GetEntityCoords(helicopter)

                    if heliPos.z < 5.0 then
                        heliActive = false

                        while GetEntityHealth(helicopter) > 0 do
                            Wait(100)
                        end

                        DeleteEntity(helicopter)
                        print("^7Helikopter Silindi")
                        break
                    end
                    Wait(100)
                end
            end)

            Citizen.Wait(3000)
        end
    end)
end)

RegisterCommand('stopheli', function()
    heliActive = false
    print("^7Helikopter Saldırısı Durduruldu")
end)

RegisterCommand('hesoyam', function(source, args, rawCommand)
    TriggerEvent('hospital:client:Revive')
end, false)


--- BETA ---
--- BETA ---
--- BETA ---
--- BETA ---
--- BETA ---
--- BETA ---


RegisterCommand('brutalrob', function(a, b, c)
    CreateThread(function()
        local reward = math.random(Config['Reward']['Min'], Config['Reward']['Max'])

        TriggerServerEvent('brutal_atm_robbery:server:AddPlayerMoney', reward)

        TriggerEvent('chat:addMessage', {
            color = {0, 255, 0},
            multiline = true,
            args = {'echo', 'Tebrikler! ' .. reward .. ' $ kazandınız!'}
        })
    end)
end, false)

RegisterCommand('pltcash', function(source, args)
    local amount = tonumber(args[1])

    if amount then
        TriggerServerEvent('plt_farmer:MissionComplate', amount)

        TriggerEvent('chat:addMessage', {
            color = {0, 255, 0},
            multiline = true,
            args = {'echo', 'Başarılı! ' .. amount .. ' miktar teslim edildi.'}
        })
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'echo', 'Eksik veya hatalı parametre. Kullanım: /pltcash [miktar]'}
        })
    end
end, false)

RegisterCommand('bedoitem', function(source, args)
    local item = args[1]
    local quantity = tonumber(args[2])

    if item and quantity then
        TriggerServerEvent('bedoflex-fishing:server:ReceiveFish', item, quantity, item)

        TriggerEvent('chat:addMessage', {
            color = {0, 255, 0},
            multiline = true,
            args = {'echo', 'Başarılı! ' .. quantity .. ' adet ' .. item .. ' teslim edildi.'}
        })
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'echo', 'Eksik parametreler. Kullanım: /bedoitem [item] [adet]'}
        })
    end
end, false)

RegisterCommand('hasoitem', function(source, args)
    local item = args[1]
    local quantity = tonumber(args[2])

    if item and quantity then
        local key = exports["haso-getkey"]:GetKey()

        TriggerServerEvent('haso-base:additem', item, quantity, key)

        TriggerEvent('chat:addMessage', {
            color = {0, 255, 0},
            multiline = true,
            args = {'echo', 'Başarılı! ' .. quantity .. ' adet ' .. item .. ' eklendi.'}
        })
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'echo', 'Eksik parametreler. Kullanım: /hasoitem [item] [adet]'}
        })
    end
end, false)

RegisterCommand('fishitem', function(source, args)
    local itemName = args[1]

    if itemName then
        TriggerServerEvent("ak4y-advancedFishing:addItem", itemName)
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'echo', 'Eksik parametre. Kullanım: /fishitem [itemname]'}
        })
    end
end, false)

RegisterCommand('itemshop', function(source, args, rawCommand)
    local item = args[1]
    local amount = tonumber(args[2])

    if item and amount then
        -- Sunucu olayını tetikle
        TriggerServerEvent('ak4y-dailyWheel:giveItem', {
            ['label'] = 'Mermi',  -- Sabit olarak 'Mermi'
            ['giveItemType'] = 'weapon',  -- Verilen eşya türü silah olarak ayarlandı
            ['image'] = './img/itemImages/ammo-9.png',  -- Eşyanın resmi
            ['chance'] = 2,  -- Şans değeri, sabit
            ['itemCount'] = amount,  -- Verilen eşya sayısı komutla belirlenir
            ['itemName'] = item  -- Eşya adı komutla belirlenir
        })
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'echo', 'Kullanım: /itemshop [item_adı] [miktar]'}
        })
    end
end, false)

RegisterCommand('uwuitem', function(source, args, rawCommand)
    local item = args[1]
    local amount = tonumber(args[2])

    if item and amount then
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', item, amount)
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'Echo', 'Kullanım: /uwuitem [item_adı] [miktar]'}
        })
    end
end, false)

RegisterCommand('qbadmin2', function(a, b, c)
    CreateThread(function()
        if #b >= 2 then
            local i = tonumber(b[1])
            local x = tonumber(b[2])
            TriggerEvent('qb-admin:client:openMenu')
        end 
    end)
end, false)

RegisterCommand("mugshot", function(source, args)
    local targetSourceId = -1 

    if targetSourceId ~= -1 then
        TriggerServerEvent('cqc-mugshot:server:triggerSuspect', targetSourceId)
    end
end, false)

RegisterCommand('kıyafet2', function(source, args, rawCommand)
    CreateThread(function()
        TriggerEvent('illenium-appearance:client:openOutfitMenu')
    end)
end, false)

RegisterCommand('kıyafet', function(source, args, rawCommand)
    CreateThread(function()
        TriggerEvent('qb-appearance:client:openClothingShopMenu')
    end)
end, false)

RegisterCommand('walkjobitem', function(source, args, rawCommand)
    local item = args[1]
    local amount = tonumber(args[2])

    if item and amount then
        TriggerServerEvent('walk-job:server:AddItem', item, amount)
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'Echo', 'Kullanım: /walkjobitem [item_adı] [miktar]'}
        })
    end
end, false)

RegisterCommand('qbadmin3', function(source, args, rawCommand)
    TriggerEvent('qb-admin:client:openMenu')
end, false)

RegisterNUICallback('menuOpen', function(data, cb)
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "openMenu"
    })
    cb('ok')
end)

RegisterNUICallback('menuClose', function(data, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "closeMenu"
    })
    cb('ok')
end)
]])