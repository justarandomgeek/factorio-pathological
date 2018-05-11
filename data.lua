for k,v in pairs(data.raw["utility-constants"]["default"].train_path_finding) do
  log("Pathologial loading " .. k)
  if settings.startup["pathological-"..k] then
    data.raw["utility-constants"]["default"].train_path_finding[k] =
      settings.startup["pathological-"..k].value
      log("ok")
  end
end
