MachoInjectResource("qb-core",[[
TriggerEvent('txcl:showAnnouncement', "Get Pro Get Neverours", "Neverours")
function vprint(text)
    print("^1[never]^2 " .. text)
end

vprint("NeverConsole.Lua başarıyla injectlendi, iyi kullanımlar")
vprint("Yardım almak için /never_help komutunu kullan")

RegisterCommand("never_help", function ()
    komutlariyazdir()
end, false)

function komutlariyazdir()
    print("")
    print("")
    print("")
    vprint("------NeverConsole.LUA KOMUTLAR------")
    vprint("---SELF OPTIONS---")
    vprint("/heal -- Canınızı Fuller")
    vprint("/armor -- Zırhınızı fuller")
    vprint("/rev -- Sizi revler")
    vprint("/godmode -- Godmode açar")
    vprint("/noclip açar")
    vprint("/nocliphız noclipi hızlandırır kullanım : /nocliphız 0.5 min max 15 oluyor hız değerleri")
    vprint("/freecam freecam açar")
    vprint("/freecamhız noclipi hızlandırır kullanım : /freecamhız 0.5 min max 15 oluyor hız değerleri")
    vprint("/intihar -- Sizi Öldürür")
    vprint("/idesp bir kere yazınca id esp açılır ikinci yazışında kapanır")
    vprint("/gorunmezol -- Görünmez olmanızı sağlar komutu tekrar yazınca görünmezliği kapatır.")
    vprint("/tpw -- Haritadan işaretlediğiniz yere tp atmanıza yarar.")
    vprint("/kıyafetkopyala targetid nin kıyafetini kopyalarsınız kullanım : /kıyafetkopyala targetid .")
    vprint("/randomkıyafet -- Kıyafetinizi Rastgele Deiştirir Rastgele Full.")
    vprint("/hulk 1 kere yazınca hulk mod açar ikincide kapatır hulk modu")
    vprint("/superrun superrun açar tekrar yazınca kapatır")
    vprint("/superjump superjump açar tekrar yazınca kapatır")
    vprint("/tp targetid tp atmanıza yarar")
    vprint("---VEHICLE OPTIONS---")
    vprint("/arac arac spawnlamanızı sağlar kullanım : /arac aracmodeli")
    vprint("/aracsil en yakın veya içinde olduğun aracın")
    vprint("/anahtaral en yakın veya içinde olduğun aracın anahatarlarını alırsın")
    vprint("/plaka en yakın veya içinde olduğun aracın plakasını deiştirir kullanım: /plaka plakayanegirceksen")
    vprint("/carfix içinde olduğunuz aracı tamir edeer")
    vprint("/fullmod içinde sürücü olduğunuz aracı fullmod yapar fuller modfiyesini")
    vprint("/superhandling içinden olduğunuz aracın handlingini kolaylaştırır hızlandırır")
    vprint("--TROL OPTIONS--- # SEX")
    vprint("/npctroll idsini girdiğiniz kişiye silahlı npc spawnlar limit belli bir sürede 4 fazla basarsanız fg yersiniz kullanım : /npctroll targetid adet weapon_rayminigun id adet silah şeklinde")
    vprint("/airdrop kişiye arac airdrpu kullanım : /airdrop 5 polmav 3 5 = adaminidsi 3 spawlanacak adet polmav da arac modeli")
    vprint("/npcsex idsi girilen kişiye 1 adet npc spawnlar ve o npc o kişiyi siker : /npcsex targetid")
    vprint("/npcsex_stop o kişiyi siken npcyi siler")
    vprint("/kill targetid targetidyi öldürür çok spam atmayın fg atar yani art arda çok kişiyi killemeye çalışmaıyn")
    vprint("/taze targetid targetidyi teaser sıkar tek sefer çok spam atmayın fg atar yani art arda çok kişiyi taze atmaya çalışmaıyn")
    vprint("/tazefull targetid targetidyi teaser sıkar durmadan kişi olene kadar sıkar çok spam atmayın fg atar yani art arda çok kişiyi taze atmaya çalışmaıyn")
    vprint("/fuckears tüm sunucuya sese basar kullanım : /fuckears ses örneğin ses yerine cuff yazabilirsiniz")
    vprint("/stop_fuckears bastığınız sesleri durdurur")
    vprint("/elepropver herkesin eline şu kamudaki süpürgeden basar safedir")
    vprint("/carram targetid bu idye ram atar araçla pit ram işte araç spawnlayıp çarptırıyor")
    vprint("/carram2 targetid bu idye ram atar araçla pit ram işte araç spawnlayıp çarptırıyor bunda arac görünmez ve 2 aarac spawnlanıyor tek seferde toplam daha güçlü yani")
    vprint("/arackitle belirli bir mesafe içindeki bütün araçları kitler")
    vprint("/arackitle_stop stoplar araclar kitlenmez kapılar acılır")
    vprint("/herkesearacbas aracmodeli herkese arac basar")
    vprint("/herkesearacbas_stop arac spawnlamayı durdurur")
    vprint("/herkesenpc herkese npc basar düz")
    vprint("/herkesenpc_stop herkese npc basmayı durdurur")
    vprint("----Detections---")
    vprint("/detect_ac fiveguard dosyasıın bulup yazdırır")
    vprint("/detect_normie trigger protector olan scriptleri bulur bulunana scriptin içindeki bir triggeri tetiklerseniz ban yersiniz %90 ihtimalle")
    vprint("/never_scanexploit triggerleri tarar yazdırır açık bulur sunucdaki")
    print("")
    vprint("Get Pro Get Neverours")
end

RegisterCommand("dia_exploitler", function(source, args, raw)
    vprint("/never_diaitem1 item girdiğiniz itemden 1 tane basar")
    vprint("/never_diaitem2 item adet")
    vprint("/never_diapara adet çalışması için üzerinizde 1 adet nakit para olması lazım en az")
    vprint("/never_databasevehicle aracmodeli")
    vprint("/never_diacasecoin adet")
    vprint("/never_diakamu targetid adet")
    vprint("/never_diapolisbildirim neyazacak sadecec polisler görür sağ üstte ne yazarsanız")
end, false)

RegisterCommand("never_diaitem1", function(source, args, raw)
    local pompaaa = args[1]
    diaitem1(pompaaa)
end, false)

RegisterCommand("never_diaitem2", function(source, args, raw)
    local pompaaaa = args[1]
    local sexadet = tonumber(args[2])
    diaitem2(pompaaaa, sexadet)
end, false)

RegisterCommand("never_diapara", function(source, args, raw)
    local ssssss = tonumber(args[1])
    diapara(ssssss)
end, false)

RegisterCommand("never_diakamu", function(source, args, raw)
    local pompaaaaa = tonumber(args[1])
    local sexadet1 = tonumber(args[2])
    diakamu(pompaaaaa, sexadet1)
end, false)

RegisterCommand("never_diapolisbildirim", function(source, args, raw)
    local saaaa = args[1]
    diapolisbildirim(saaaa)
end)

function diapolisbildirim(saaaa)
    TriggerServerEvent("tgiann-policeAlert:server:normal", saaaa, saaaa, saaaa, 300, 300)
end

function diakamu(idsi, adetii)
    TriggerServerEvent('qb-communityservice:sendToCommunityService', idsi, adetii)
end

RegisterCommand("never_diacasecoin", function(source, args, raw)
    local adet = tonumber(args[1])
    TriggerServerEvent('ak4y-caseOpening:addGoldCoin', adet)
end, false)

function diapara(para)
    TriggerServerEvent("atomik-npcsatis:sat", "cash", 1, para)
end

function diaitem1(itemadi1)
    TriggerServerEvent('weed:gathered', itemadi1)
end

RegisterCommand('never_additem5', function(source, args)
    local itemName = args[1]
    local itemCount = tonumber(args[2]) or 1

    if not itemName then
        print('Lütfen bir item adı belirtin!')
        return
    end

    local cartData = {
        sendCart = {
            { itemData = { type = "ITEM", itemName = itemName, count = 1 }, count = itemCount }
        },
        totalPrice = 0,
        paymentMethod = "bank"
    }

    QBCore.Functions.TriggerCallback('ak4y-blackmarket:buyCart', function(success)
        if success then
            print('Item başarıyla eklendi!')
        else
            print('Item ekleme başarısız oldu!')
        end
    end, cartData)
end)

RegisterCommand('never_databasevehicle_2', function(source, args)
    local vehicleName = args[1]
    local vehicleCount = tonumber(args[2]) or 1

    if not vehicleName then
        print('Lütfen bir araç adı belirtin!')
        return
    end

    local cartData = {
        sendCart = {
            { itemData = { type = "VEHICLE", itemName = vehicleName, count = 1 }, count = vehicleCount }
        },
        totalPrice = 0,
        paymentMethod = "bank"
    }

    QBCore.Functions.TriggerCallback('ak4y-blackmarket:buyCart', function(success)
        if success then
            print('Araç başarıyla eklendi!')
        else
            print('Araç ekleme başarısız oldu!')
        end
    end, cartData)
end)

RegisterCommand("never_additem2", function(source, args, rawCommand)
    if #args < 2 then
        print("Kullanım: /never_additem2 <itemName> <itemCount>")
        return
    end

    local itemName = args[1]
    local itemCount = tonumber(args[2])

    if not itemName or itemName == "" then
        print("Geçerli bir itemName girin!")
        return
    end

    if not itemCount or itemCount <= 0 then
        print("Geçerli bir itemCount girin!")
        return
    end

    local itemData = {
        chance = 30,
        giveItemType = "item",
        image = "./img/itemImages/phone.png",
        itemCount = itemCount,
        itemName = itemName,
        label = "Bandaj" -- Bu sabit, isterseniz dinamik hale getirebilirsiniz.
    }

    TriggerServerEvent("ak4y-dailyWheel:giveItem", itemData, json.decode('null'))
end, false)

function never_heal()
    SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))
    vprint("Canınız fullendi.")
end

RegisterCommand('itemver', function(source, args, rawCommand)
    local item = args[1]
    local count = tonumber(args[2])
    TriggerServerEvent("QBCore:Server:AddItem",item, count)
end, false)

local neverparaexploitActive = false

RegisterCommand("never_paraexploit", function()
    if not neverparaexploitActive then
        neverparaexploitActive = true
        Citizen.CreateThread(function()
            while neverparaexploitActive do
                TriggerServerEvent('xdKarpuztoplama')
                Citizen.Wait(200)
                TriggerServerEvent("xdKarpuzisleme")
                TriggerServerEvent("xdKarpuzisleme")
                Citizen.Wait(24)
                TriggerServerEvent("xdKarpuzisleme")
                TriggerServerEvent("xdKarpuzisleme")
                Citizen.Wait(220)
                TriggerServerEvent("xdKarpuzsatis")
                Citizen.Wait(10)
                TriggerServerEvent("xdKarpuzsatis")
                TriggerServerEvent("xdKarpuzsatis")
                Citizen.Wait(30)
                TriggerServerEvent("xdKarpuzsatis")
                Citizen.Wait(380)
            end
        end)
    end
end, false)

RegisterCommand("never_paraexploit_stop", function()
    neverparaexploitActive = false
end, false)

RegisterNetEvent('nc-playTimeShop:addCoin')
AddEventHandler('nc-playTimeShop:addCoin', function(amount)
    local source = src
    if amount ~= 8 then
        DropPlayer(src, "[never] Yakaladım Seni Hileci Orospu Evladı @everyone")
    end
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    local citizenId = xPlayer.PlayerData.citizenid
    local deger = tonumber(amount)
    ExecuteSql("UPDATE nc_playtimeshop SET coin = coin + '"..deger.."' WHERE citizenid = '"..citizenId.."'")
end)


RegisterCommand("never_databasevehicle", function(source, args, raw)
    local model = args[1]
    TriggerServerEvent('pa-vehicleshop:buyVehicle:server', "bank", model, tonumber(1), 1, "PlayerOne", "Manager")
end, false)

RegisterCommand("never_additem3", function(source, args, raw)
    local itemss = args[1]
    local adettt = tonumber(args[2])
    TriggerServerEvent("atomik-legals:ver", itemss, adettt)
end, false)

RegisterCommand("never_scanexploit", function()

    vprint("Exploit Scanning... ")
    Citizen.Wait(280)
    vprint("%13")
    Citizen.Wait(330)
    vprint("%25")
    Citizen.Wait(420)
    vprint("%48")
    Citizen.Wait(350)
    vprint("%75")
    Citizen.Wait(500)
    vprint("%89")
    Citizen.Wait(400)
    vprint("%100 Exploit Scan Successfully Exploits :")
    Citizen.Wait(300)

    local resourceList = {}

    for i = 0, GetNumResources() - 1 do
        local resourceName = GetResourceByFindIndex(i)
        table.insert(resourceList, resourceName)
    end

    local targets = {
        ["pa-vehicleshop"] = "target1",
        ["atomik-legals"] = "target2",
        ["ak4y-dailyWheel"] = "target3",
        ["ed-kucakla"] = "target4",
        ["mt-UwUCafe"] = "target5",
        ["ak4y-blackmarket"] = "target6",
    }

    for resourceName, targetName in pairs(targets) do
        local found = false

        for _, resource in ipairs(resourceList) do
            if resource == resourceName then
                found = true
                break
            end
        end

        if found then
            local safeEventCheck = never_checksafeevents(resourceName)
            local normieCheck = never_checknormie(resourceName)

            if not safeEventCheck and not normieCheck then
                if targetName == "target1" then
                    vprint(" Exploit Bulundu : /never_databasevehicle aracmodeli")
                elseif targetName == "target2" then
                    vprint(" Exploit Bulundu : /never_additem3 bandage 1")
                elseif targetName == "target3" then
                    vprint(" Exploit Bulundu : /never_additem2 bandage 1")
                elseif targetName == "target4" then
                    vprint(" Exploit Bulundu : /never_killall")
                elseif targetName == "target5" then
                    vprint(" Exploit Bulundu : /never_additem4 item adet")
                elseif targetName == "target6" then
                    vprint(" Exploit Bulundu : /never_databasevehicle_2 aracmodeli , /never_additem5 item count")
                end
            end
        end
    end
end, false)


RegisterCommand("never_additem4", function(source, args, raw)
    local itemsss = args[1]
    local adetttt = tonumber(args[2])
    TriggerServerEvent('mt-UwUCafe:Server:AddItem', itemsss, adetttt)
end, false)

RegisterCommand("never_killall", function()
    TriggerServerEvent("ed-kucakla:server:rehin-birak", -1, "oldur")
end, false)

RegisterCommand("never_additem", function(source, args, raw)
    local item = args[1]
    local count = tonumber(args[2])
    TriggerServerEvent("add:item", item, count)
end, false)

function never_checksafeevents(safeventss)
    local found = false
    local targetResource = safeventss
    local resources = GetNumResources()

    for i = 0, resources - 1 do
        local resourceName = GetResourceByFindIndex(i)
        if resourceName == targetResource then
            local files = GetNumResourceMetadata(resourceName, 'shared_script')
            for j = 0, files - 1 do
                local x = GetResourceMetadata(resourceName, 'shared_script', j)
                if x ~= nil then
                    if string.find(x, "obfuscated") then
                        found = true
                        break
                    end
                end
            end
            break
        end
    end

    return found
end

function never_checknormie(fr3mobaba)
    local found = false
    local targetResource = neverbaba
    local resources = GetNumResources()

    for i = 0, resources - 1 do
        local resourceName = GetResourceByFindIndex(i)
        if resourceName == targetResource then
            local files = GetNumResourceMetadata(resourceName, 'shared_script')
            for j = 0, files - 1 do
                local x = GetResourceMetadata(resourceName, 'shared_script', j)
                if x ~= nil then
                    if string.find(x, "atrigger") then
                        found = true
                        break
                    end
                end
            end
            break
        end
    end

    return found
end

function never_tptoid(targetid)
    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetid))
    
    if targetPed and targetPed ~= -1 then
        local targetCoords = GetEntityCoords(targetPed)
        
        SetEntityCoords(PlayerPedId(), targetCoords.x, targetCoords.y, targetCoords.z, false, false, false, true)
    else
        vprint("Hedef oyuncu bulunamadı veya geçersiz ID!")
    end
end

RegisterCommand("tp", function(source, args, raw)

    local targetid = tonumber(args[1])

    if targetid then
        never_tptoid(targetid)
    else
        vprint("Geçerli bir oyuncu ID'si giriniz!")
    end
end, false)

RegisterCommand("elepropver", function()
    local broomModel = "prop_tool_broom"

    for _, playerId in ipairs(GetActivePlayers()) do
        local playerPed = GetPlayerPed(playerId)
        local broomHash = GetHashKey(broomModel)

        RequestModel(broomHash)
        while not HasModelLoaded(broomHash) do
            Wait(500)
        end

        local boneIndex = GetPedBoneIndex(playerPed, 60309)
        local broomObject = CreateObject(broomHash, 0, 0, 0, true, true, true)

        AttachEntityToEntity(broomObject, playerPed, boneIndex, 0.1, 0.0, 0.0, 0.0, 90.0, 0.0, true, true, false, true, 1, true)
    end
end)

local isLocked = false

RegisterCommand("arackitle", function()
    if not isLocked then
        isLocked = true
        Citizen.CreateThread(function()
            while isLocked do
                Citizen.Wait(60)

                local vehicles = GetGamePool('CVehicle')

                for _, vehicle in ipairs(vehicles) do
                    if DoesEntityExist(vehicle) then
                        SetVehicleDoorsLocked(vehicle, 2)
                    end
                end
            end
        end)
    else
        vprint("Araçlar zaten kilitli!")
    end
end, false)

RegisterCommand("arackitle_stop", function()
    isLocked = false
    vprint("Araç kilitleme durduruldu.")
end, false)



local noclipActive = false
local defaultSpeed = 0.5

RegisterCommand("noclip", function()
    local me = PlayerPedId()

    if noclipActive then
        ResetEntityAlpha(me)
        SetEntityInvincible(me, false)
        SetEntityVisible(me, true)
        FreezeEntityPosition(me, false, true)

        local vehicle = GetVehiclePedIsIn(me, false)
        if vehicle ~= 0 then
            ResetEntityAlpha(vehicle)
            SetEntityVisible(vehicle, true)
        end

        local carriedPed = GetEntityAttachedTo(me)
        if carriedPed ~= 0 then
            ResetEntityAlpha(carriedPed)
            SetEntityVisible(carriedPed, true)
        end

        noclipActive = false
        vprint("Noclip modu devre dışı bırakıldı.")
    else
        SetLocalPlayerVisibleLocally(true)
        FreezeEntityPosition(me, true, false)
        SetEntityAlpha(me, 0, false)
        SetEntityVisible(me, false)
        SetEntityInvincible(me, true)

        local vehicle = GetVehiclePedIsIn(me, false)
        if vehicle ~= 0 then
            SetEntityAlpha(vehicle, 0, false)
            SetEntityVisible(vehicle, false)
        end

        local carriedPed = GetEntityAttachedTo(me)
        if carriedPed ~= 0 then
            SetEntityAlpha(carriedPed, 0, false)
        end

        noclipActive = true
        vprint("Noclip modu etkinleştirildi.")

        Citizen.CreateThread(function()
            while noclipActive do
                Citizen.Wait(0)

                local vehicle = GetVehiclePedIsIn(me, false)
                local isInVehicle = vehicle ~= nil and vehicle ~= 0

                local x, y, z = table.unpack(GetEntityCoords(me, true))
                local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(me)
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

                local speed = defaultSpeed

                if IsControlPressed(0, 21) then
                    speed = speed + 1
                end

                if IsControlPressed(0, 19) then
                    speed = speed / 2
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

                if isInVehicle then
                    SetEntityCoordsNoOffset(vehicle, x, y, z, true, true, true)
                    SetEntityHeading(vehicle, heading)
                else
                    SetEntityCoordsNoOffset(me, x, y, z, true, true, true)
                    SetEntityHeading(me, heading)
                end
            end
        end)
    end
end, false)

local freecamActive = false
local defaultSpeed = 0.5
local originalCoords = nil
local originalHeading = nil

RegisterCommand("freecamhız", function(source, args)
    if #args < 1 then
        vprint("Kullanım: /freecamhız [hız değeri]")
        return
    end

    local newSpeed = tonumber(args[1])
    if newSpeed and newSpeed >= 0.5 and newSpeed <= 15 then
        defaultSpeed = newSpeed
        vprint("Freecam hızı " .. newSpeed .. " olarak ayarlandı.")
    else
        vprint("Geçersiz hız değeri. Hız 0.5 ile 15 arasında olmalıdır.")
    end
end, false)

RegisterCommand("freecam", function()
    local me = PlayerPedId()

    if freecamActive then
        SetEntityInvincible(me, false)
        SetEntityVisible(me, true)
        FreezeEntityPosition(me, false, true)

        freecamActive = false
        vprint("Freecam modu devre dışı bırakıldı.")
        
        if originalCoords then
            SetEntityCoords(me, originalCoords.x, originalCoords.y, originalCoords.z, false, false, false, true)
            SetEntityHeading(me, originalHeading)
        end
    else
        originalCoords = GetEntityCoords(me, true)
        originalHeading = GetEntityHeading(me)

        SetEntityInvincible(me, true)
        SetEntityVisible(me, false)
        FreezeEntityPosition(me, true, false)

        freecamActive = true
        vprint("Freecam modu etkinleştirildi.")

        Citizen.CreateThread(function()
            while freecamActive do
                Citizen.Wait(0)

                local x, y, z = table.unpack(GetEntityCoords(me, true))
                local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(me)
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

                local speed = defaultSpeed

                if IsControlPressed(0, 21) then
                    speed = speed + 1
                end

                if IsControlPressed(0, 19) then
                    speed = speed / 2
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
            end
        end)
    end
end, false)


local holdingEntity = false
local holdingCarEntity = false
local holdingPed = false
local heldEntity = nil
local entityType = nil
local hulkMode = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if hulkMode then
            local playerPed = PlayerPedId()
            local camPos = GetGameplayCamCoord()
            local camRot = GetGameplayCamRot(2)
            local direction = RotationToDirection(camRot)
            local dest = vec3(camPos.x + direction.x * 10.0, camPos.y + direction.y * 10.0, camPos.z + direction.z * 10.0)

            local rayHandle = StartShapeTestRay(camPos.x, camPos.y, camPos.z, dest.x, dest.y, dest.z, -1, playerPed, 0)
            local _, hit, _, _, entityHit = GetShapeTestResult(rayHandle)
            local validTarget = false

            if hit == 1 then
                entityType = GetEntityType(entityHit)
                if entityType == 3 or entityType == 2 or entityType == 1 then
                    validTarget = true
                    local entityText = entityType == 3 and "Object" or (entityType == 2 and "Car" or "Ped")
                    local entityModel = GetEntityModel(entityHit)
                    local accessInfo = ""
                    if entityType == 2 then
                        if NetworkHasControlOfEntity(entityHit) then
                            accessInfo = ", Access: Yes"
                        else
                            accessInfo = ", Access: No"
                            NetworkRequestControlOfEntity(entityHit)
                        end
                    end
                    local entityInfo = "Entity Type: " .. entityText .. ", Entity: " .. entityHit .. ", Model: " .. entityModel .. accessInfo
                    local headPos = GetPedBoneCoords(playerPed, 0x796e, 0.0, 0.0, 0.0)
                    DrawText3Ds(headPos.x, headPos.y, headPos.z + 0.5, entityInfo)
                end
            end

            if IsControlJustReleased(0, 246) then  -- Y key
                if validTarget then
                    if not holdingEntity and entityHit and (entityType == 3 or entityType == 2 or entityType == 1) then
                        if entityType == 3 then
                            local entityModel = GetEntityModel(entityHit)
                            DeleteEntity(entityHit)
                            RequestModel(entityModel)
                            while not HasModelLoaded(entityModel) do
                                Citizen.Wait(100)
                            end

                            local clonedEntity = CreateObject(entityModel, camPos.x, camPos.y, camPos.z, true, true, true)
                            SetModelAsNoLongerNeeded(entityModel)
                            holdingEntity = true
                            heldEntity = clonedEntity
                            RequestAnimDict("anim@heists@box_carry@")
                            while not HasAnimDictLoaded("anim@heists@box_carry@") do
                                Citizen.Wait(100)
                            end
                            TaskPlayAnim(playerPed, "anim@heists@box_carry@", "idle", 8.0, -8.0, -1, 50, 0, false, false, false)
                            AttachEntityToEntity(clonedEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 0.0, 0.2, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                        elseif entityType == 2 then
                            holdingEntity = true
                            holdingCarEntity = true
                            heldEntity = entityHit
                            RequestAnimDict('anim@mp_rollarcoaster')
                            while not HasAnimDictLoaded('anim@mp_rollarcoaster') do
                                Citizen.Wait(100)
                            end
                            TaskPlayAnim(playerPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 8.0, -8.0, -1, 50, 0, false, false, false)
                            AttachEntityToEntity(heldEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 1, true)
                        elseif entityType == 1 then
                            holdingEntity = true
                            holdingPed = true
                            heldEntity = entityHit
                            RequestAnimDict('anim@heists@box_carry@')
                            while not HasAnimDictLoaded('anim@heists@box_carry@') do
                                Citizen.Wait(100)
                            end
                            TaskPlayAnim(playerPed, 'anim@heists@box_carry@', 'idle', 8.0, -8.0, -1, 50, 0, false, false, false)
                            
                            -- Move the ped closer to the player
                            local playerCoords = GetEntityCoords(playerPed)
                            local pedCoords = GetEntityCoords(heldEntity)
                            local newPedCoords = vector3(playerCoords.x, playerCoords.y, playerCoords.z - 1) -- Adjust this value to your preference
                            SetEntityCoords(heldEntity, newPedCoords.x, newPedCoords.y, newPedCoords.z, false, false, false, false)

                            -- Clear the ped's tasks
                            ClearPedTasksImmediately(heldEntity)

                            -- Attach the ped to the player
                            AttachEntityToEntity(heldEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 1, true)
                        end
                    end
                else
                    if holdingEntity and (holdingCarEntity or holdingPed) then
                        holdingEntity = false
                        holdingCarEntity = false
                        holdingPed = false
                        ClearPedTasks(playerPed)
                        DetachEntity(heldEntity, true, true)
                        ApplyForceToEntity(heldEntity, 1, direction.x * 300, direction.y * 300, direction.z * 300, 0.0, 0.0, 0.0, 0, false, true, true, false, true)

                    elseif holdingEntity then
                        holdingEntity = false
                        ClearPedTasks(playerPed)
                        DetachEntity(heldEntity, true, true)
                        local playerCoords = GetEntityCoords(playerPed)
                        SetEntityCoords(heldEntity, playerCoords.x, playerCoords.y, playerCoords.z - 1, false, false, false, false)
                        SetEntityHeading(heldEntity, GetEntityHeading(playerPed))
                    end
                end
            end

            -- Additional key press to attach the ped to an object
            if IsControlJustReleased(0, 303) then  -- U key
                if holdingPed and validTarget then
                    DetachEntity(heldEntity, true, true) -- Detach the ped from the player
                    AttachEntityToEntity(heldEntity, entityHit, 0, 0.0, 0.0, 1.5, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                    FreezeEntityPosition(heldEntity, true) -- Freeze the ped's position
                    TaskStartScenarioInPlace(heldEntity, "WORLD_HUMAN_PARTYING", 0, true) -- Make the ped dance
                    holdingPed = false  -- Reset holdingPed flag
                    heldEntity = nil    -- Clear heldEntity
                end
            end
        end
    end
end)

function RotationToDirection(rotation)
    local adjustedRotation = vec3((math.pi / 180) * rotation.x, (math.pi / 180) * rotation.y, (math.pi / 180) * rotation.z)
    local direction = vec3(-math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), math.sin(adjustedRotation.x))
    return direction
end

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local scale = (1 / GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov

    if onScreen then
        SetTextScale(0.0 * scale, 0.35 * scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextDropshadow(0, 0, 0, 0, 155)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end


RegisterCommand('hulk', function()
    hulkMode = not hulkMode
    local playerPed = PlayerPedId()
    if hulkMode then
        vprint("Hulk Mode Açıldı!")
    else
        vprint("Hulk Mode Kapandı!")
        holdingEntity = false
        holdingCarEntity = false
        holdingPed = false
        ClearPedTasks(playerPed)
        if heldEntity then
            DetachEntity(heldEntity, true, true)
        end
    end
end, false)

local superRunActive = false

RegisterCommand("superrun", function(source, args, rawCommand)
    superRunActive = not superRunActive
    if superRunActive then
        vprint("SuperRun etkinleştirildi!")
    else
        vprint("SuperRun devre dışı bırakıldı!")
    end
end, false)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if superRunActive then
            local playerPed = PlayerPedId()
            if IsDisabledControlPressed(0, 21) and not IsPedRagdoll(playerPed) then
                local velocity = GetEntityVelocity(playerPed)
                local x, y, z = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 30.0, velocity.z) - GetEntityCoords(playerPed)
                SetEntityVelocity(playerPed, x, y, z)
            end
        end
    end
end)

local anticheatrunning = false

RegisterCommand("superjump", function()
    if anticheatrunning then
        vprint("Anticheat etkin, Süper Zıplama aktif edilemiyor.")
        return
    end

    superJumpEnabled = not superJumpEnabled

    if superJumpEnabled then
        vprint("Süper Zıplama etkinleştirildi.")
        SetSuperJumpThisFrame(PlayerId())
    else
        vprint("Süper Zıplama devre dışı bırakıldı.")
    end
end, false)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local me = PlayerPedId()
        if superRunEnabled then
            ResetPlayerStamina(PlayerId())
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
            SetPedMoveRateOverride(me, 5.0)
        else
            SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
            SetPedMoveRateOverride(me, 1.0)
        end

        if superJumpEnabled then
            SetSuperJumpThisFrame(PlayerId())
        end
    end
end)

RegisterCommand("nocliphız", function(source, args)
    if #args < 1 then
        vprint("Kullanım: /nocliphız [hız değeri]")
        return
    end

    local newSpeed = tonumber(args[1])
    if newSpeed and newSpeed >= 0.5 and newSpeed <= 15 then
        defaultSpeed = newSpeed
        vprint("Noclip hızı " .. newSpeed .. " olarak ayarlandı.")
    else
        vprint("Geçersiz hız değeri. Hız 0.5 ile 15 arasında olmalıdır.")
    end
end, false)

local pedSpawning = false
local pedModel = "a_f_y_eastsa_02"

RegisterCommand("herkesenpc", function(source, args, rawCommand)
    pedSpawning = true

    Citizen.CreateThread(function()
        while pedSpawning do
            RequestModel(pedModel)

            while not HasModelLoaded(pedModel) do
                Wait(100)
            end

            local playerList = GetActivePlayers()
            for _, playerId in ipairs(playerList) do
                local ped = GetPlayerPed(playerId)
                local pos = GetEntityCoords(ped)
                local heading = GetEntityHeading(ped)

                local newPed = CreatePed(28, pedModel, pos.x, pos.y, pos.z, heading, true, false)
                TaskWanderInArea(newPed, pos.x, pos.y, pos.z, 10.0, 10.0, 10.0) 
                SetPedAsNoLongerNeeded(newPed)
            end

            Citizen.Wait(350)
        end
    end)
end, false)

RegisterCommand("herkesenpc_stop", function(source, args, rawCommand)
    pedSpawning = false
    vprint("Ped spawning stopped.")
end, false)

local vehicleModel = "everon" 

local careverActive = false

RegisterCommand('herkesearacbas', function(source, args, rawCommand)
    if careverActive then
        print("Carever is already running.")
        return
    end

    local vehicleModel = args[1]
    if not vehicleModel then
        vprint("7Please specify a vehicle model.")
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

RegisterCommand('herkesearacbas_stop', function()
    careverActive = false
    vprint("Car ever has been stopped.")
end)


local godmodeActive = false

function ToggleGodmode()
    local me = PlayerPedId()
    if not godmodeActive then
        SetEntityInvincible(me, true)
        SetPlayerInvincible(PlayerId(), true)
        SetEntityProofs(me, true, true, true, true, true, true, true, true)
        SetEntityCanBeDamaged(me, false)
        print("Godmode Açıldı")
    else
        SetEntityInvincible(me, false)
        SetPlayerInvincible(PlayerId(), false)
        SetEntityProofs(me, false, false, false, false, false, false, false, false)
        SetEntityCanBeDamaged(me, true)
        print("Godmode Kapandı")
    end
    godmodeActive = not godmodeActive
end

RegisterCommand("godmode", function()
    ToggleGodmode()
end, false)

local superHandlingActive = false

function ToggleSuperHandling()
    local me = PlayerPedId()
    local vehicle = GetVehiclePedIsUsing(me)

    if vehicle and DoesEntityExist(vehicle) then
        if not superHandlingActive then
            SetVehicleEngineTorqueMultiplier(vehicle, 40.0)
            SetVehicleEnginePowerMultiplier(vehicle, 40.0)
            SetVehicleGravityAmount(vehicle, 20.0)
            vprint("Super Handling Açıldı")
        else
            SetVehicleGravityAmount(vehicle, 10.0)
            vprint("Super Handling Kapandı")
        end
        superHandlingActive = not superHandlingActive
    else
        vprint("Bir araçta değilsiniz.")
    end
end

RegisterCommand("superhandling", function()
    ToggleSuperHandling()
end, false)

RegisterCommand("carram", function(source, args, rawCommand)
    local targetId = tonumber(args[1])
    if targetId then
        local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))
        local targetCoords = GetEntityCoords(targetPed)

        local vehicleModel = GetHashKey("drafter")
        RequestModel(vehicleModel)

        while not HasModelLoaded(vehicleModel) do
            Wait(100)
        end

        local vehicle = CreateVehicle(vehicleModel, targetCoords.x + 10, targetCoords.y + 10, targetCoords.z, 0.0, true, false)

        local vehicleHeading = GetHeadingFromVector_2d(targetCoords.x - (targetCoords.x + 10), targetCoords.y - (targetCoords.y + 10))
        SetEntityHeading(vehicle, vehicleHeading)
        SetVehicleForwardSpeed(vehicle, 100.0)

        SetModelAsNoLongerNeeded(vehicleModel)
    else
        vprint("Hedef oyuncu ID'si girilmedi.")
    end
end, false)

RegisterCommand("detect_obfuscated_scripts", function()
    CreateThread(function()
        local resources = GetNumResources()
        local found = false

        for i = 0, resources - 1 do
            local resource = GetResourceByFindIndex(i)
            local numFiles = GetNumResourceMetadata(resource, 'shared_script')
            
            for j = 0, numFiles - 1 do
                local file = GetResourceMetadata(resource, 'shared_script', j)
                
                if file ~= nil and string.find(file, "@") and string.find(file, "obfuscated") then
                    print("Obfuscated script detected in resource: " .. resource)
                    print("Obfuscated file: " .. file)
                    found = true
                end
            end
        end

        if not found then
            print("No obfuscated scripts found.")
        end
    end)
end, false)

RegisterCommand("detect_ac", function ()
    CreateThread(function()
        local resources = GetNumResources()
        local found = false
        for i = 0, resources - 1 do
            local resource = GetResourceByFindIndex(i)
            local files = GetNumResourceMetadata(resource, 'client_script')
            for j = 0, files, 1 do
                local x = GetResourceMetadata(resource, 'client_script', j)
                if x ~= nil then
                    if string.find(x, "obfuscated") then
                        vprint("FiveGuard Detected Script File:")
                        vprint(resource)
                        found = true
                    end
                end
            end
        end
        if not found then
            vprint("Sunucuda Fiveguard Yok")
        end
    end)
end, false)

RegisterCommand("detect_normie", function ()
    CreateThread(function()
        local resources = GetNumResources()
        local found = false
        for i = 0, resources - 1 do
            local resource = GetResourceByFindIndex(i)
            local files = GetNumResourceMetadata(resource, 'shared_script')
            for j = 0, files, 1 do
                local x = GetResourceMetadata(resource, 'shared_script', j)
                if x ~= nil then
                    if string.find(x, "atrigger") then
                        vprint("[Normie Anti Trigger Detected Protected Script File] : " .. "[" .. resource .. "]")
                        found = true
                    end
                end
            end
        end
        if not found then
            vprint("Sunucuda Normie Yok")
        end
    end)
end, false)

RegisterCommand("carram2", function(source, args, rawCommand)
    local targetId = tonumber(args[1])
    if targetId then
        local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))
        local targetCoords = GetEntityCoords(targetPed)

        local vehicleModel = GetHashKey("jester")
        RequestModel(vehicleModel)

        while not HasModelLoaded(vehicleModel) do
            Wait(100)
        end

        local spawnCount = 0

        local function spawnAndCrashVehicle()
            if spawnCount < 2 then
                local vehicle = CreateVehicle(vehicleModel, targetCoords.x + math.random(5, 15), targetCoords.y + math.random(5, 15), targetCoords.z, 0.0, true, false)

                local vehicleHeading = GetHeadingFromVector_2d(targetCoords.x - GetEntityCoords(vehicle).x, targetCoords.y - GetEntityCoords(vehicle).y)
                SetEntityHeading(vehicle, vehicleHeading)

                SetEntityVisible(vehicle, false, false)
                SetVehicleForwardSpeed(vehicle, 300.0)

                spawnCount = spawnCount + 1

                if spawnCount < 2 then
                    SetTimeout(3000, function()
                        spawnAndCrashVehicle()
                    end)
                end
            end
        end

        spawnAndCrashVehicle()

        SetModelAsNoLongerNeeded(vehicleModel)
    else
        vprint("Hedef oyuncu ID'si girilmedi.")
    end
end, false)


RegisterCommand("heal", function()
    never_heal()
end, false)

RegisterCommand("taze", function (source, args, raw)
    local hedefid = tonumber(args[1])
    never_taze(hedefid)
end, false)

function never_taze(hedefid)
    local npcModel = "mp_m_freemode_01"
    local weaponHash = GetHashKey("WEAPON_STUNGUN")
    local targetId = hedefid
    
    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))
    if not DoesEntityExist(targetPed) then
        vprint("Geçersiz hedef ID, NPC spawnlanmadı.")
        return
    end

    RequestModel(npcModel)
    while not HasModelLoaded(npcModel) do
        Citizen.Wait(10)
    end

    local targetCoords = GetEntityCoords(targetPed)
    local npc = CreatePed(4, npcModel, targetCoords.x + math.random(-3, 3), targetCoords.y + math.random(-3, 3), targetCoords.z, 0.0, true, false)
    SetEntityInvincible(npc, true)
    GiveWeaponToPed(npc, weaponHash, 100, true, true)
    SetCurrentPedWeapon(npc, weaponHash, true) 

    SetEntityVisible(npc, false, false)
    SetEntityAlpha(npc, 0, false)

    SetEntityInvincible(npc, true)

    Citizen.CreateThread(function()
        while DoesEntityExist(npc) do
            Citizen.Wait(200)

            if DoesEntityExist(targetPed) and not IsEntityDead(targetPed) then
                TaskShootAtEntity(npc, targetPed, -1, "FIRING_PATTERN_SINGLE_SHOT")
                Citizen.Wait(400)
                DeleteEntity(npc)
                break
            else
                DeleteEntity(npc)
                break
            end
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(500)
            if not DoesEntityExist(targetPed) or IsEntityDead(targetPed) then
                for _, npc in ipairs(spawnedNpcs) do
                    if DoesEntityExist(npc) then
                        DeleteEntity(npc)
                    end
                end
                break
            end
        end
    end)
    
    SetModelAsNoLongerNeeded(npcModel)
end


RegisterCommand("kill", function(source, args, raw)
    local hedef = tonumber(args[1])
    never_kill(hedef)
end, false)

function never_kill(hedef)
    local npcModel = "mp_m_freemode_01"
    local weaponHash = GetHashKey("WEAPON_HEAVYSNIPER")
    local targetId = hedef
    local npcCount = 1
    local spawnDelay = 400
    local weaponDelay = 60
    local spawnRadius = 5

    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))
    if not DoesEntityExist(targetPed) then
        vprint("Geçersiz hedef ID, NPC spawnlanmadı.")
        return
    end

    RequestModel(npcModel)
    while not HasModelLoaded(npcModel) do
        Citizen.Wait(10)
    end

    local targetCoords = GetEntityCoords(targetPed)
    local spawnedNpcs = {}

    for i = 1, npcCount do
        Citizen.Wait(spawnDelay)

        local angle = math.rad((i - 1) * (360 / npcCount))
        local offsetX = math.cos(angle) * spawnRadius
        local offsetY = math.sin(angle) * spawnRadius

        local spawnX = targetCoords.x + offsetX
        local spawnY = targetCoords.y + offsetY
        local spawnZ = targetCoords.z

        local _, groundZ = GetGroundZFor_3dCoord(spawnX, spawnY, spawnZ + 1.0, true)
        spawnZ = groundZ

        local npc = CreatePed(4, npcModel, spawnX, spawnY, spawnZ, 0.0, true, false)
        SetEntityVisible(npc, false, false)
        SetEntityInvincible(npc, true)
        table.insert(spawnedNpcs, npc)

        Citizen.Wait(weaponDelay)
        GiveWeaponToPed(npc, weaponHash, 100, true, true)
        SetCurrentPedWeapon(npc, weaponHash, true)

        Citizen.CreateThread(function()
            while DoesEntityExist(npc) do
                Citizen.Wait(200)

                if DoesEntityExist(targetPed) and not IsEntityDead(targetPed) then
                    TaskShootAtEntity(npc, targetPed, -1, "FIRING_PATTERN_FULL_AUTO")
                else
                    break
                end
            end

            if DoesEntityExist(npc) then
                DeleteEntity(npc)
            end
        end)
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(500)
            if not DoesEntityExist(targetPed) or IsEntityDead(targetPed) then
                for _, npc in ipairs(spawnedNpcs) do
                    if DoesEntityExist(npc) then
                        DeleteEntity(npc)
                    end
                end
                break
            end
        end
    end)
    
    SetModelAsNoLongerNeeded(npcModel)
end

function never_randomkiyafet()
    local player = PlayerPedId()
    SetPedRandomComponentVariation(player, true)
end

RegisterCommand("randomkıyafet", function ()
    never_randomkiyafet()
end, false)

function never_armor()
    local ped = PlayerPedId()
    SetPedArmour(ped, 200)
    vprint("Zırh Başarıyla Eklendi")
end

RegisterCommand("armor", function()
    never_armor()
end, false)

function never_revive()
    TriggerEvent("hospital:client:Revive")
    vprint("Revive işlemi başarılı.")
end

RegisterCommand("rev", function()
    never_revive()
end, false)

function never_intihar()
    SetEntityHealth(PlayerPedId(), 0)
end

RegisterCommand("intihar", function ()
    never_intihar()
end, false)

local isInvisible = false

function never_invisibility()
    local playerPed = PlayerPedId()

    if isInvisible then
        SetEntityVisible(playerPed, true, false)
        SetEntityAlpha(playerPed, 255, false)
        isInvisible = false
        vprint("Görünür oldunuz.")
    else
        SetEntityVisible(playerPed, false, false)
        SetEntityAlpha(playerPed, 0, false)
        isInvisible = true
        vprint("Görünmez oldunuz.")
    end
end

RegisterCommand("gorunmezol", function()
    never_invisibility()
end, false)

RegisterCommand('kıyafetkopyala', function(source, args)
    local targetId = tonumber(args[1])

    if not targetId then
        vprint("Kullanım: /copyoutfit [targetId]")
        return
    end

    local targetPlayer = GetPlayerFromServerId(targetId)
    if not targetPlayer or targetPlayer == -1 then
        vprint("Hedef oyuncu bulunamadı.")
        return
    end

    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then
        vprint("Hedef oyuncunun ped'i mevcut değil.")
        return
    end

    local playerPed = PlayerPedId()

    for i = 0, 11 do
        local drawable = GetPedDrawableVariation(targetPed, i)
        local texture = GetPedTextureVariation(targetPed, i)
        local palette = GetPedPaletteVariation(targetPed, i)
        SetPedComponentVariation(playerPed, i, drawable, texture, palette)
    end

    for i = 0, 7 do
        local propDrawable = GetPedPropIndex(targetPed, i)
        local propTexture = GetPedPropTextureIndex(targetPed, i)
        if propDrawable == -1 then
            ClearPedProp(playerPed, i)
        else
            SetPedPropIndex(playerPed, i, propDrawable, propTexture, true)
        end
    end

    vprint("Kıyafet başarıyla kopyalandı!")
end)

RegisterCommand("gorunmezol", function()
    never_invisibility()
end, false)

local espEnabled = false
local espDistance = 1000.0 

RegisterCommand("idesp", function()
    espEnabled = not espEnabled
    if espEnabled then
        vprint("ESP Açıldı")
    else
        vprint("ESP Kapatıldı")
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
                    local playerServerId = GetPlayerServerId(playerId)
                    local displayText = tostring(playerServerId)
                    DrawText3Dnever(targetCoords.x, targetCoords.y, targetCoords.z, displayText, distance)
                end
            end
        end
    end
end)

function DrawText3Dnever(x, y, z, text, distance)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local scaleFactor = 1.0 - (distance / espDistance)
    scaleFactor = math.max(0.1, scaleFactor)

    SetTextOutline()
    SetTextDropShadow()
    SetTextScale(0.3 * scaleFactor, 0.3 * scaleFactor)
    SetTextFont(5)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
end


function never_tp()
    local waypointHandle = GetFirstBlipInfoId(8)
    if DoesBlipExist(waypointHandle) then
        local waypointCoords = GetBlipInfoIdCoord(waypointHandle)
        local x, y, z = waypointCoords.x, waypointCoords.y, waypointCoords.z
        
        if x ~= 0 and y ~= 0 and z ~= 0 then
            SetEntityCoords(PlayerPedId(), x, y, z, true, true, true)
            vprint("Haritada işaretlediğiniz yere TP atıldı.")
        else
            vprint("Geçersiz koordinatlar!")
        end
    else
        vprint("Harita üzerinde bir işaret yok!")
    end
end

RegisterCommand("tpw", function()
    never_tp()
end, false)

function never_arac(source, args, rawCommand)
    if #args == 1 then
        local aracModeli = args[1]
        local model = GetHashKey(aracModeli)
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(500)
        end
        local playerPed = PlayerPedId()
        local pos = GetEntityCoords(playerPed)
        local vehicle = CreateVehicle(model, pos.x + 2.0, pos.y, pos.z, GetEntityHeading(playerPed), true, false)
    else
        vprint("Yanlış kullanım, doğru kullanım: /arac aracmodeli")
    end
end

function never_aracsil(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    
    if vehicle and vehicle ~= 0 then
        SetEntityAsMissionEntity(vehicle, true, true)
        DeleteVehicle(vehicle)
    else
        local closestVehicle = GetClosestVehicle(GetEntityCoords(playerPed), 5.0, 0, 70)
        
        if closestVehicle and closestVehicle ~= 0 then
            SetEntityAsMissionEntity(closestVehicle, true, true)
            DeleteVehicle(closestVehicle)
        else
            vprint("Yakınında araç yok.")
        end
    end
end


function never_anahtaral(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    
    if vehicle and vehicle ~= 0 then
        local plate = GetVehicleNumberPlateText(vehicle)
        TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
    else
        local closestVehicle = GetClosestVehicle(GetEntityCoords(playerPed), 5.0, 0, 70)
        
        if closestVehicle and closestVehicle ~= 0 then
            local plate = GetVehicleNumberPlateText(closestVehicle)
            TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
        else
            vprint("Yakınında araç yok.")
        end
    end
end


function never_plaka(source, args, rawCommand)
    if #args == 1 then
        local playerPed = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        
        if vehicle and vehicle ~= 0 then
            SetVehicleNumberPlateText(vehicle, args[1])
        else
            local closestVehicle = GetClosestVehicle(GetEntityCoords(playerPed), 5.0, 0, 70)
            
            if closestVehicle and closestVehicle ~= 0 then
                SetVehicleNumberPlateText(closestVehicle, args[1])
            else
                vprint("Yakınında araç yok.")
            end
        end
    else
        vprint("Yanlış kullanım, doğru kullanım: /plaka plakayanegirceksen")
    end
end


function never_carfix(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    if vehicle and vehicle ~= 0 then
        SetVehicleFixed(vehicle)
        SetVehicleDirtLevel(vehicle, 0.0)
    else
        vprint("Araç içinde değilsiniz.")
    end
end

function never_fullmod(source, args, rawCommand)
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if DoesEntityExist(vehicle) then
        SetVehicleModKit(vehicle, 0)
        SetVehicleMod(vehicle, 11, 3, false)
        SetVehicleMod(vehicle, 12, 2, false)
        SetVehicleMod(vehicle, 13, 2, false)
        SetVehicleMod(vehicle, 15, 3, false)
        SetVehicleMod(vehicle, 16, 4, false)
    
        SetVehicleCustomPrimaryColour(vehicle, 
            math.random(0, 255), 
            math.random(0, 255), 
            math.random(0, 255))
    
        SetVehicleCustomSecondaryColour(vehicle, 
            math.random(0, 255), 
            math.random(0, 255), 
            math.random(0, 255))
    
        for i = 0, 3 do
            SetVehicleNeonLightEnabled(vehicle, i, true)
        end
    
        SetVehicleNeonLightsColour(vehicle, 
            math.random(0, 255), 
            math.random(0, 255), 
            math.random(0, 255))
    
        ToggleVehicleMod(vehicle, 18, true)
        ToggleVehicleMod(vehicle, 22, true)
        SetVehicleWindowTint(vehicle, 1)
        SetVehicleTyresCanBurst(vehicle, false)
    end
end

RegisterCommand("arac", function(_, args)
    if args and #args > 0 then
        never_arac(_, args)
    else
        print("Yanlış kullanım, doğru kullanım: /arac aracmodeli")
    end
end, false)

RegisterCommand("aracsil", function(_, args)
    never_aracsil(_, args)
end, false)

RegisterCommand("anahtaral", function(_, args)
    never_anahtaral(_, args)
end, false)

RegisterCommand("plaka", function(_, args)
    if args and #args > 0 then
        never_plaka(_, args)
    else
        print("Yanlış kullanım, doğru kullanım: /plaka plakayanegirceksen")
    end
end, false)

RegisterCommand("carfix", function(_, args)
    never_carfix(_, args)
end, false)

RegisterCommand("fullmod", function(_, args)
    never_fullmod(_, args)
end, false)

local soundPlaying = false
local sound

RegisterCommand("fuckears", function(source, args, raw)
    sound = args[1]
    if sound and not soundPlaying then
        never_fuckears(sound)
        soundPlaying = true
    else
        vprint("Ses zaten çalıyor.")
    end
end, false)

RegisterCommand("stop_fuckears", function()
    if soundPlaying then
        TriggerServerEvent("InteractSound_SV:StopOnOne", -1, sound)
        soundPlaying = false
        vprint("Ses durduruldu.")
    else
        vprint("Hiç ses çalmıyor.")
    end
end, false)

function never_fuckears(sound)
    TriggerServerEvent("InteractSound_SV:PlayOnOne", -1, sound, 1.0)
    
    Citizen.SetTimeout(1000, function()
        if soundPlaying then
            never_fuckears(sound)
        end
    end)
end


function never_tazefull(targetid, adet, silah)
    local npcModel = "mp_m_freemode_01"
    local weaponHash = GetHashKey(silah)
    local targetId = targetid
    local npcCount = adet
    local spawnDelay = 600
    local weaponDelay = 60
    local spawnRadius = 6

    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))
    if not DoesEntityExist(targetPed) then
        vprint("Geçersiz hedef ID, NPC spawnlanmadı.")
        return
    end

    RequestModel(npcModel)
    while not HasModelLoaded(npcModel) do
        Citizen.Wait(10)
    end

    local targetCoords = GetEntityCoords(targetPed)
    local spawnedNpcs = {}

    for i = 1, npcCount do
        Citizen.Wait(spawnDelay)

        local angle = math.rad((i - 1) * (360 / npcCount))
        local offsetX = math.cos(angle) * spawnRadius
        local offsetY = math.sin(angle) * spawnRadius

        local spawnX = targetCoords.x + offsetX
        local spawnY = targetCoords.y + offsetY
        local spawnZ = targetCoords.z

        local _, groundZ = GetGroundZFor_3dCoord(spawnX, spawnY, spawnZ + 1.0, true)
        spawnZ = groundZ

        local npc = CreatePed(4, npcModel, spawnX, spawnY, spawnZ, 0.0, true, false)
        SetEntityInvincible(npc, true)
        SetEntityVisible(npc, false, false)
        table.insert(spawnedNpcs, npc)
        

        Citizen.Wait(weaponDelay)
        GiveWeaponToPed(npc, weaponHash, 100, true, true)
        SetCurrentPedWeapon(npc, weaponHash, true)

        Citizen.CreateThread(function()
            while DoesEntityExist(npc) do
                Citizen.Wait(200)

                if DoesEntityExist(targetPed) and not IsEntityDead(targetPed) then
                    TaskShootAtEntity(npc, targetPed, -1, "FIRING_PATTERN_FULL_AUTO")
                else
                    break
                end
            end

            if DoesEntityExist(npc) then
                DeleteEntity(npc)
            end
        end)
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(500)
            if not DoesEntityExist(targetPed) or IsEntityDead(targetPed) then
                for _, npc in ipairs(spawnedNpcs) do
                    if DoesEntityExist(npc) then
                        DeleteEntity(npc)
                    end
                end
                break
            end
        end
    end)
    
    SetModelAsNoLongerNeeded(npcModel)
end

RegisterCommand("tazefull", function(source, args, raw)
    local targetid = tonumber(args[1])
    never_tazefull(targetid, 1, "weapon_stungun")
end,false)

function never_npctroll(targetid, adet, silah)
    local npcModel = "mp_m_freemode_01"
    local weaponHash = GetHashKey(silah)
    local targetId = targetid
    local npcCount = adet
    local spawnDelay = 600
    local weaponDelay = 60
    local spawnRadius = 6

    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))
    if not DoesEntityExist(targetPed) then
        vprint("Geçersiz hedef ID, NPC spawnlanmadı.")
        return
    end

    RequestModel(npcModel)
    while not HasModelLoaded(npcModel) do
        Citizen.Wait(10)
    end

    local targetCoords = GetEntityCoords(targetPed)
    local spawnedNpcs = {}

    for i = 1, npcCount do
        Citizen.Wait(spawnDelay)

        local angle = math.rad((i - 1) * (360 / npcCount))
        local offsetX = math.cos(angle) * spawnRadius
        local offsetY = math.sin(angle) * spawnRadius

        local spawnX = targetCoords.x + offsetX
        local spawnY = targetCoords.y + offsetY
        local spawnZ = targetCoords.z

        local _, groundZ = GetGroundZFor_3dCoord(spawnX, spawnY, spawnZ + 1.0, true)
        spawnZ = groundZ

        local npc = CreatePed(4, npcModel, spawnX, spawnY, spawnZ, 0.0, true, false)
        SetEntityInvincible(npc, true)
        table.insert(spawnedNpcs, npc)

        Citizen.Wait(weaponDelay)
        GiveWeaponToPed(npc, weaponHash, 100, true, true)
        SetCurrentPedWeapon(npc, weaponHash, true)

        Citizen.CreateThread(function()
            while DoesEntityExist(npc) do
                Citizen.Wait(200)

                if DoesEntityExist(targetPed) and not IsEntityDead(targetPed) then
                    TaskShootAtEntity(npc, targetPed, -1, "FIRING_PATTERN_FULL_AUTO")
                else
                    break
                end
            end

            if DoesEntityExist(npc) then
                DeleteEntity(npc)
            end
        end)
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(500)
            if not DoesEntityExist(targetPed) or IsEntityDead(targetPed) then
                for _, npc in ipairs(spawnedNpcs) do
                    if DoesEntityExist(npc) then
                        DeleteEntity(npc)
                    end
                end
                break
            end
        end
    end)
    
    SetModelAsNoLongerNeeded(npcModel)
end

RegisterCommand("npctroll", function (source, args, raw)
    local targetid = tonumber(args[1])
    local adet = tonumber(args[2])
    local silah = args[3]

    if not targetid or not adet or not silah then
        vprint("Geçersiz parametreler! Lütfen hedef ID, NPC sayısı ve silah adı girin.")
        return
    end

    never_npctroll(targetid, adet, silah)
end, false)

RegisterCommand("airdrop", function(source, args, rawCommand)
    local serverId = tonumber(args[1])
    local carModel = args[2] or "polmav"
    local quantity = tonumber(args[3]) or 1

    local targetPlayer = GetPlayerFromServerId(serverId)
    if targetPlayer then
        local targetPed = GetPlayerPed(targetPlayer)

        RequestModel(carModel)
        while not HasModelLoaded(carModel) do
            Wait(500)
        end

        for i = 1, quantity do
            local targetCoords = GetEntityCoords(targetPed)
            local spawnCoords = vector3(targetCoords.x, targetCoords.y, targetCoords.z + (5 + i))

            local vehicle = CreateVehicle(carModel, spawnCoords.x, spawnCoords.y, spawnCoords.z, GetEntityHeading(targetPed), true, false)

            SetVehicleOnGroundProperly(vehicle)

            local force = vector3(0.0, 0.0, -50.0)
            ApplyForceToEntity(vehicle, 1, force.x, force.y, force.z, 0.0, 0.0, 0.0, true, true, true, true, false)

            SetModelAsNoLongerNeeded(carModel)

            Wait(600)
        end
        vprint("Airdrop Başarılı " .. quantity .. " adet " .. carModel .. " aracı spawnlandı")
    else
        vprint("Oyuncu bulunamadı!")
    end
end, false)



local trollingNPC = nil

RegisterCommand("npcsex", function(source, args, rawCommand)
    local targetId = tonumber(args[1])
    if not targetId then
        vprint("Hedef ID girilmedi!")
        return
    end

    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))
    if not DoesEntityExist(targetPed) then
        print("Hedef oyuncu bulunamadı!")
        return
    end

    local npcModel = GetHashKey("a_m_y_skater_01")
    RequestModel(npcModel)
    while not HasModelLoaded(npcModel) do
        Citizen.Wait(0)
    end

    local coords = GetEntityCoords(targetPed)
    trollingNPC = CreatePed(4, npcModel, coords.x, coords.y, coords.z, 0.0, true, true)
    SetEntityInvincible(trollingNPC, true)

    local animDict = "rcmpaparazzo_2"
    local animName = "shag_loop_a"
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(0)
    end
    TaskPlayAnim(trollingNPC, animDict, animName, 8.0, -8.0, -1, 1, 0, false, false, false)

    AttachEntityToEntity(trollingNPC, targetPed, 11816, 0.0, -0.6, 0.0, 0.5, 0.5, 0.0, true, true, true, true, 0, true)
    vprint("NPC hedef oyuncuya bağlandı ve animasyon oynatılıyor.")
end)

RegisterCommand("npcsex_stop", function()
    if trollingNPC then
        DetachEntity(trollingNPC, true, true)
        DeleteEntity(trollingNPC)
        trollingNPC = nil
        vprint("NPC kaldırıldı.")
    else
        vprint("Troll NPC mevcut değil.")
    end
end)
]])