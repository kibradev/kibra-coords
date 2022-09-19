COPY_VECTOR3_KEY = "delete"
COPY_VECTOR4_KEY = "insert"

RegisterCommand('copycoord3', function()
    local Get = GetEntityCoords(PlayerPedId())
    local VEC3 = "vector3("..Get.x..","..Get.y..","..Get.z..")"
    SendNUIMessage({
        type = "coord",
        data = VEC3
    })
    ShowNotification("Başarıyla Kordinatı Kopyaladınız! Vector3")
end)

RegisterCommand('copycoord4', function()
    local Get = GetEntityCoords(PlayerPedId())
    local VEC4 = "vector4("..Get.x..","..Get.y..","..Get.z..","..GetEntityHeading(PlayerPedId())..")"
    SendNUIMessage({
        type = "coord",
        data = VEC4
    })
    ShowNotification("Başarıyla Kordinatı Kopyaladınız! Vector4")
end)

ShowNotification = function(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	DrawNotification(0,1)
end

RegisterKeyMapping("copycoord3", "Copy Coord", "keyboard", COPY_VECTOR3_KEY)
RegisterKeyMapping("copycoord4", "Copy Coord", "keyboard", COPY_VECTOR4_KEY)

