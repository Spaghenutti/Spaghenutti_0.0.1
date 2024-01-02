local util = require("data-util")

-- change stone furnace back to furnace type
-- data.raw["assembling-machine"]["stone-furnace"].type = "furnace"
-- data.raw.furnace["stone-furnace"].type = "furnace"

-- Lock items for game start
util.disable_recipe("iron-stick")
util.disable_recipe("iron-chest")
util.disable_recipe("iron-beam")
util.disable_recipe("inserter-parts")
util.disable_recipe("motor")
util.disable_recipe("iron-gear-wheel")
util.disable_recipe("burner-inserter")
util.disable_recipe("rare-metals")

-- Why cant i disable this items?
-- util.disable_recipe("transport-belt")

data.raw.technology["electronics"].prerequisites = {"automation", "automation-science-pack", "sp-basic-solder"}
data.raw.technology["kr-crusher"].prerequisites = {"electricity"}
data.raw.technology["kr-crusher"].unit = {count = 30,
                                          ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}},
                                          time = 30}

-- Science recipe changes
util.change_recipe("automation-science-pack",
                    {{"automation-core", 1}, {"motor", 1}, {"blank-tech-card", 5}},
                    {{"automation-core", 2}, {"motor", 2}, {"blank-tech-card", 5}},
                    20,
                    30)