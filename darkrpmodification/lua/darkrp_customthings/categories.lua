--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
https://darkrp.miraheze.org/wiki/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]


DarkRP.createCategory{
    name = "Начальное", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 0, 255), 
    canSee = function(ply) return true end,
    sortOrder = 100, 
}


DarkRP.createCategory{
    name = "Ученики", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 101, 
}

DarkRP.createCategory{
    name = "Истребители демонов", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 102, 
}


DarkRP.createCategory{
    name = "Демоны", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 105, 
}

DarkRP.createCategory{
    name = "Демоны 12 лун", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 106, 
}

DarkRP.createCategory{
    name = "Столпы", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 107, 
}

DarkRP.createCategory{
    name = "Инструктор Истребителей Демонов", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 108, 
}

DarkRP.createCategory{
    name = "Цугуко", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 103, 
}

DarkRP.createCategory{
    name = "Лорные персонажи", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 109, 
}

DarkRP.createCategory{
    name = "Чистильщики", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 110, 
}

DarkRP.createCategory{
    name = "Низшая Луна", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 111, 
}

DarkRP.createCategory{
    name = "Высшая Луна", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 112, 
}
DarkRP.createCategory{
    name = "Other", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 0, 255), 
    canSee = function(ply) return true end,
    sortOrder = 113, 
}

DarkRP.createCategory{
    name = "Donate", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(0, 0, 255, 255), 
    canSee = function(ply) return true end,
    sortOrder = 114, 
}

DarkRP.createCategory{
    name = "Семья пауков", 
    categorises = "jobs",
    startExpanded = true, 
    color = Color(172, 172, 172), 
    canSee = function(ply) return true end,
    sortOrder = 115, 
}


DarkRP.createCategory{
    name = "Бывшие луны",
    categorises = "jobs",
    startExpanded = true, 
    color = Color(172, 172, 172), 
    canSee = function(ply) return true end,
    sortOrder = 115, 
}

DarkRP.createCategory{
    name = "Бывшие Столпы",
    categorises = "jobs",
    startExpanded = true, 
    color = Color(172, 172, 172), 
    canSee = function(ply) return true end,
    sortOrder = 115, 
}