RECIPE.name = "Приготовить хлеб" -- Название
RECIPE.description = "Разделать хлеб на части и приготовить его." -- Описание
RECIPE.model = "models/lostsignalproject/items/consumable/bread_spoiled.mdl" -- Модель (не менять)
RECIPE.requirements = { -- Необходимые для крафта предметы
    ["cloth"] = 23,
}

RECIPE.tools = { -- Необходимые для крафта инструменты
    "romehammer"
}

RECIPE.results = { -- Результаты крафта
    ["b7"] = 1
}


RECIPE.workbench = "campfire"