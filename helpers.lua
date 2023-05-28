-- Generates a formatted string indicating whether the mod is currently installed
function generateModHeader(message, vehicle, modType, checkedMod)
  local currentMod = GetVehicleMod(vehicle, modType)

  if (checkedMod == currentMod) then
    return string.format('%s %s', message, 'CURRENT')
  end

  return message
end
