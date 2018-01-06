for k,v in pairs(data.raw["utility-constants"]["default"].train_path_finding) do
  data.raw["utility-constants"]["default"].train_path_finding[k] =
    settings.startup["pathological-"..k].value
end
