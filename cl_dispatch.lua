-- @Date:   2017-06-27T19:10:23+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-27T19:11:54+02:00
-- @License: GNU General Public License v3.0

-- Load client at 100%
Citizen.CreateThread(function()

  while true do
    Citizen.Wait(0)

    if NetworkIsSessionStarted() then

      -- Send menu to Menu Generator
      if Config.cop ~= nil and Config.cop then
        Citizen.InvokeNative(0xDC0F817884CDD856, 1, false) -- Police Automobile
        Citizen.InvokeNative(0xDC0F817884CDD856, 2, false) -- Police Helicopter
        Citizen.InvokeNative(0xDC0F817884CDD856, 6, false) -- Police Riders
        Citizen.InvokeNative(0xDC0F817884CDD856, 7, false) -- Police Vehicle
        Citizen.InvokeNative(0xDC0F817884CDD856, 8, false) -- Police RoadBlock
        Citizen.InvokeNative(0xDC0F817884CDD856, 13, false) -- Police Boat
        Citizen.InvokeNative(0xDC0F817884CDD856, 4, false) -- Swat Automobile
        Citizen.InvokeNative(0xDC0F817884CDD856, 12, false) -- Swat Helicopter
        Citizen.InvokeNative(0xDC0F817884CDD856, 14, false) -- Army Vehicle
      end

      if Config.gang ~= nil and Config.gang then
        Citizen.InvokeNative(0xDC0F817884CDD856, 11, false)
      end

      if Config.biker ~= nil and Config.biker then
        Citizen.InvokeNative(0xDC0F817884CDD856, 15, false)
      end

      if Config.ambulance ~= nil and Config.ambulance then
        Citizen.InvokeNative(0xDC0F817884CDD856, 5, false)
      end

      if Config.fireDepartment ~= nil and Config.fireDepartment then
        Citizen.InvokeNative(0xDC0F817884CDD856, 3, false)
      end

      break

    end

  end
end)
