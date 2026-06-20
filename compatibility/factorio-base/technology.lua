
local remove_prototypes = require("util.remove-prototypes")

-- Remove unneded technologies
remove_prototypes.remove_one_prototype("technology", "uranium-mining")
remove_prototypes.remove_one_prototype("technology", "nuclear-fuel-reprocessing")

remove_prototypes.remove_one_prototype("technology", "physical-projectile-damage-1")
remove_prototypes.remove_one_prototype("technology", "physical-projectile-damage-2")
remove_prototypes.remove_one_prototype("technology", "physical-projectile-damage-3")
remove_prototypes.remove_one_prototype("technology", "physical-projectile-damage-4")
remove_prototypes.remove_one_prototype("technology", "physical-projectile-damage-5")
remove_prototypes.remove_one_prototype("technology", "physical-projectile-damage-6")

remove_prototypes.remove_one_prototype("technology", "weapon-shooting-speed-1")
remove_prototypes.remove_one_prototype("technology", "weapon-shooting-speed-2")
remove_prototypes.remove_one_prototype("technology", "weapon-shooting-speed-3")
remove_prototypes.remove_one_prototype("technology", "weapon-shooting-speed-4")
remove_prototypes.remove_one_prototype("technology", "weapon-shooting-speed-5")
remove_prototypes.remove_one_prototype("technology", "weapon-shooting-speed-6")


-- Update technologies
data.raw.technology["electronics"].effects = {
  {
    type = "unlock-recipe",
    recipe = "sp-solder"
  },
  {
    type = "unlock-recipe",
    recipe = "electronic-circuit"
  },
  {
    type = "unlock-recipe",
    recipe = "inserter"
  },
  {
    type = "unlock-recipe",
    recipe = "small-electric-pole"
  }
}
data.raw.technology["electronics"].research_trigger = {
  type = "craft-item",
  item = "copper-cable",
  count = 5
}
data.raw.technology["electronics"].prerequisites = {
  "sp-copper-extruding",
  "sp-tin-processing"
}

data.raw.technology["electric-engine"].unit = nil
data.raw.technology["electric-engine"].research_trigger = {
  type = "craft-item",
  item = "electronic-circuit",
  count = 10
}
data.raw.technology["electric-engine"].prerequisites = {
  "sp-iron-machining",
  "sp-bearing",
  "electronics"
}

data.raw.technology["steam-power"].effects = {
  {
    type = "unlock-recipe",
    recipe =  "steam-engine"
  },
  {
    type = "unlock-recipe",
    recipe =  "boiler"
  },
  {
    type = "unlock-recipe",
    recipe =  "offshore-pump"
  },
  {
    type = "unlock-recipe",
    recipe =  "pipe"
  },
  {
    type = "unlock-recipe",
    recipe =  "pipe-to-ground"
  },
  {
    type = "unlock-recipe",
    recipe =  "sp-flange"
  }
}
data.raw.technology["steam-power"].prerequisites = {
  "electric-engine",
  "sp-copper-extruding"
}
data.raw.technology["steam-power"].research_trigger = {
  type = "craft-item",
  item = "electric-engine-unit",
  count = 1
}

table.insert(data.raw.technology["automation"].effects, {type = "unlock-recipe", recipe = "sp-mechanical-components-set"})
table.insert(data.raw.technology["automation"].effects, {type = "unlock-recipe", recipe = "sp-gearbox"})
data.raw.technology["automation"].unit = nil
data.raw.technology["automation"].prerequisites = {
  "steam-power",
}
data.raw.technology["automation"].research_trigger = {
  type = "craft-item",
  item = "steam-engine",
  count = 1
}

data.raw.technology["electric-mining-drill"].prerequisites = {
  "steel-processing",
}

data.raw.technology["engine"].prerequisites = {
  "sp-steel-machining",
  "sp-roller-chains-and-sprockets"
}
data.raw.technology["engine"].unit.ingredients = {
  {"automation-science-pack", 1},
}

data.raw.technology["repair-pack"].prerequisites = {
  "sp-roller-chains-and-sprockets"
}

data.raw.technology["gun-turret"].prerequisites = {"electric-engine"}
data.raw.technology["gun-turret"].unit = nil
data.raw.technology["gun-turret"].research_trigger =
{
  type = "craft-item",
  item = "electric-engine-unit",
  count = 5
}

table.insert(data.raw.technology["bulk-inserter"].prerequisites, "production-science-pack")
data.raw.technology["bulk-inserter"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"production-science-pack", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["circuit-network"].prerequisites = {
  "sp-aluminum-processing",
  "sp-aluminum-treatment",
  "sp-vinyl-chloride",
  "sp-electronic-science-pack-1",
  "sp-magnet"
}
data.raw.technology["circuit-network"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["plastics"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

table.insert(data.raw.technology["sulfur-processing"].effects, {type = "mining-with-fluid", modifier = true})
table.insert(data.raw.technology["sulfur-processing"].prerequisites, "sp-geological-science-pack-1")
data.raw.technology["sulfur-processing"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

data.raw.technology["battery"].prerequisites = {
  "sp-vinyl-chloride",
  "sp-salt",
  "sp-cobalt-processing",
}
data.raw.technology["battery"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1}
}

data.raw.technology["military-science-pack"].prerequisites = {
  "sp-intermediate-military",
  "gun-turret",
  "stone-wall",
  "logistic-science-pack"
}
data.raw.technology["military-science-pack"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
data.raw.technology["military-science-pack"].effects = {
  {
    type = "unlock-recipe",
    recipe = "military-science-pack"
  }
}

table.insert(data.raw.technology["logistics"].effects, {type = "unlock-recipe", recipe = "sp-kr-loader"})
table.insert(data.raw.technology["logistics"].prerequisites, "electric-engine")
data.raw.technology["logistics"].prerequisites = {
  "automation"
}
data.raw.technology["logistics"].unit = nil
data.raw.technology["logistics"].research_trigger =
{
  type = "craft-item",
  item = "sp-mechanical-components-set",
  count = 1
}


table.insert(data.raw.technology["logistics-2"].effects, {type = "unlock-recipe", recipe = "sp-kr-fast-loader"})
table.insert(data.raw.technology["logistics-2"].prerequisites, "sp-aluminum-machining")
table.insert(data.raw.technology["logistics-2"].prerequisites, "electronics")
table.insert(data.raw.technology["logistics-2"].prerequisites, "sp-roller-chains-and-sprockets")

table.insert(data.raw.technology["logistics-3"].effects, {type = "unlock-recipe", recipe = "sp-kr-express-loader"})
data.raw.technology["logistics-3"].prerequisites = {
  "sp-titanium-machining",
  "sp-actuator",
  "advanced-circuit",
  "sp-logistic-science-pack-2"
}
data.raw.technology["logistics-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

table.insert(data.raw.technology["railway"].prerequisites, "sp-geological-science-pack-1")
data.raw.technology["railway"].effects = {
  {
    type = "unlock-recipe",
    recipe = "rail"
  },
  {
    type = "unlock-recipe",
    recipe = "locomotive"
  },
  {
    type = "unlock-recipe",
    recipe = "cargo-wagon"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-train-bogie"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-shaft-sleeve"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-steel-wheel"
  },
}
data.raw.technology["railway"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

data.raw.technology["fluid-wagon"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

data.raw.technology["automated-rail-transportation"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

table.insert(data.raw.technology["advanced-material-processing"].prerequisites, "sp-material-science-pack-1")
table.insert(data.raw.technology["advanced-material-processing"].unit.ingredients, {"sp-material-science-pack-1", 1})

table.insert(data.raw.technology["advanced-material-processing-2"].prerequisites, "sp-basic-ceramics")
table.insert(data.raw.technology["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "sp-heating-filament"})
table.insert(data.raw.technology["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "sp-crucible"})
data.raw.technology["advanced-material-processing-2"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

table.insert(data.raw.technology["fluid-handling"].effects, {type = "unlock-recipe", recipe = "sp-valve"})
data.raw.technology["fluid-handling"].prerequisites = {
  "sp-steel-machining",
}
data.raw.technology["fluid-handling"].unit.ingredients = {
  {"automation-science-pack", 1}
}

data.raw.technology["coal-liquefaction"].prerequisites = {
  "sp-chemical-stager",
}
data.raw.technology["coal-liquefaction"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["kovarex-enrichment-process"].prerequisites = {"sp-breeder-reactor"}
data.raw.technology["kovarex-enrichment-process"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["nuclear-power"].effects = {
  {
    type = "unlock-recipe",
    recipe = "nuclear-reactor"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-reactor-core"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-control-rod"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-empty-fuel-rod"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-uranium-fuel-rod"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-zircaloy"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-silver-indium-cadmium"
  },
  {
    type = "unlock-recipe",
    recipe = "sp-lead-molybdate"
  }
}
table.insert(data.raw.technology["nuclear-power"].prerequisites, "electric-energy-accumulators")
table.insert(data.raw.technology["nuclear-power"].prerequisites, "heating-tower")
table.insert(data.raw.technology["nuclear-power"].prerequisites, "tungsten-steel")
table.insert(data.raw.technology["nuclear-power"].prerequisites, "sp-turbine-parts")
table.insert(data.raw.technology["nuclear-power"].prerequisites, "sp-control-unit")
table.insert(data.raw.technology["nuclear-power"].prerequisites, "sp-hafnium-processing")
data.raw.technology["nuclear-power"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

table.insert(data.raw.technology["automation-2"].prerequisites, "sp-heatsink")
table.insert(data.raw.technology["automation-2"].prerequisites, "sp-material-science-pack-1")
table.insert(data.raw.technology["automation-2"].prerequisites, "advanced-circuit")
data.raw.technology["automation-2"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1}
}

data.raw.technology["automation-3"].prerequisites = {
  "sp-control-unit",
  "sp-ceramic-matrix-composites"
}
data.raw.technology["automation-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["landfill"].prerequisites = {"automation-science-pack"}
data.raw.technology["landfill"].unit.count = 15
data.raw.technology["landfill"].unit.ingredients = {
  {"automation-science-pack", 1}
}
table.insert(data.raw.technology["landfill"].effects, {type = "unlock-recipe", recipe = "sp-landfill-from-iron-ore"})
table.insert(data.raw.technology["landfill"].effects, {type = "unlock-recipe", recipe = "sp-landfill-from-sand"})

table.insert(data.raw.technology["steel-processing"].effects, {type = "unlock-recipe", recipe = "sp-steel-sheet"})
table.insert(data.raw.technology["steel-processing"].effects, {type = "unlock-recipe", recipe = "sp-steel-beam"})
data.raw.technology["steel-processing"].unit = {
  count = 5,
  ingredients = {
    {"automation-science-pack", 1},
  },
  time = 15
}

data.raw.technology["oil-gathering"].prerequisites = {"logistic-science-pack"}
data.raw.technology["oil-gathering"].unit = {
  count = 50,
  ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
  },
  time = 30
}

data.raw.technology["oil-processing"].research_trigger = nil
data.raw.technology["oil-processing"].unit = {
  count = 50,
  ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1}
  },
  time = 30
}

data.raw.technology["plastics"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1}
}

data.raw.technology["sulfur-processing"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-geological-science-pack-1", 1},
  {"sp-material-science-pack-1", 1}
}

data.raw.technology["solar-energy"].prerequisites = {
  "sp-photovoltaics",
  "electric-energy-accumulators"
}
data.raw.technology["solar-energy"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"electromagnetic-science-pack", 1}
}

table.insert(data.raw.technology["concrete"].prerequisites, "sp-cement")
data.raw.technology["concrete"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

data.raw.technology["electric-energy-distribution-1"].effects = {
  {
    type = "unlock-recipe",
    recipe = "medium-electric-pole",
  }
}
table.insert(data.raw.technology["electric-energy-distribution-1"].prerequisites, "sp-aluminum-machining")
data.raw.technology["electric-energy-distribution-1"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
}

data.raw.technology["electric-energy-distribution-2"].icon = "__base__/graphics/technology/electric-energy-distribution-1.png"
data.raw.technology["electric-energy-distribution-2"].effects = {
  {
    type = "unlock-recipe",
    recipe = "big-electric-pole",
  }
}
data.raw.technology["electric-energy-distribution-2"].prerequisites = {
  "concrete",
  "electric-energy-distribution-1"
}
data.raw.technology["electric-energy-distribution-2"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

table.insert(data.raw.technology["advanced-circuit"].prerequisites, "sp-electronic-science-pack-1")
table.insert(data.raw.technology["advanced-circuit"].effects, {type = "unlock-recipe", recipe = "sp-basic-circuit-board"})
data.raw.technology["advanced-circuit"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["processing-unit"].prerequisites = {
  "utility-science-pack",
  "sp-optics",
  "sp-light-emitting-diode",
}
table.insert(data.raw.technology["processing-unit"].effects, {type = "unlock-recipe", recipe = "sp-empty-circuit-board"})
table.insert(data.raw.technology["processing-unit"].effects, {type = "unlock-recipe", recipe = "sp-circuit-board"})
table.insert(data.raw.technology["processing-unit"].effects, {type = "unlock-recipe", recipe = "sp-multi-layer-ceramic-capacitor"})
data.raw.technology["processing-unit"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["advanced-oil-processing"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

table.insert(data.raw.technology["lubricant"].prerequisites, "sp-sodium-processing")
data.raw.technology["lubricant"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

-- "car"
table.insert(data.raw.technology["automobilism"].effects, {type = "unlock-recipe", recipe = "sp-differential"})
table.insert(data.raw.technology["automobilism"].effects, {type = "unlock-recipe", recipe = "sp-coupling"})
table.insert(data.raw.technology["automobilism"].effects, {type = "unlock-recipe", recipe = "sp-steel-wheel"})
data.raw.technology["automobilism"].prerequisites = {
  "sp-rubber",
  "lubricant"
}
data.raw.technology["automobilism"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

table.insert(data.raw.technology["fast-inserter"].prerequisites, "sp-ball-bearing")
data.raw.technology["fast-inserter"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["laser"].effects = {
  {
    type = "unlock-recipe",
    recipe = "sp-laser"
  }
}
data.raw.technology["laser"].prerequisites = {
  "sp-optics",
  "sp-helium"
}
data.raw.technology["laser"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["low-density-structure"].prerequisites = {"utility-science-pack"}
data.raw.technology["low-density-structure"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["effect-transmission"].prerequisites = {"sp-high-pressure-fan"}
data.raw.technology["effect-transmission"].unit.count = 250
data.raw.technology["effect-transmission"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["explosives"].prerequisites = {
  "sp-phosphorus-processing",
  "military-science-pack",
  "automation-2"
}
data.raw.technology["explosives"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"chemical-science-pack", 1},
  {"military-science-pack", 1}
}

data.raw.technology["cliff-explosives"].prerequisites = {
  "sp-sodium-hydroxide",
  "explosives"
}
data.raw.technology["cliff-explosives"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"military-science-pack", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["land-mine"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"chemical-science-pack", 1},
  {"military-science-pack", 1}
}

-- "accumulator"
data.raw.technology["electric-energy-accumulators"].prerequisites = {
  "sp-power-regulation",
  "battery"
}
data.raw.technology["electric-energy-accumulators"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["battery-equipment"].prerequisites = {
  "battery"
}
data.raw.technology["battery-equipment"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["battery-mk2-equipment"].prerequisites = {
  "sp-computer-science-pack-2"
}
data.raw.technology["battery-mk2-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["battery-mk3-equipment"].prerequisites = {
  "sp-production-science-pack-3"
}
data.raw.technology["battery-mk3-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["exoskeleton-equipment"].prerequisites = {
  "advanced-circuit",
  "sp-servo-motor",
  "battery-equipment"
}
data.raw.technology["exoskeleton-equipment"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["night-vision-equipment"].prerequisites = {
  "processing-unit",
  "laser"
}
data.raw.technology["night-vision-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["belt-immunity-equipment"].prerequisites = {
  "sp-titanium-machining"
}
data.raw.technology["belt-immunity-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["fission-reactor-equipment"].prerequisites = {
  "sp-nuclear-science-pack-2",
  "sp-kr-lithium-sulfur-battery",
  "sp-control-unit"
}
data.raw.technology["fission-reactor-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["robotics"].prerequisites = {
  "sp-composites",
  "sp-titanium-machining",
}
data.raw.technology["robotics"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

table.insert(data.raw.technology["construction-robotics"].prerequisites, "sp-power-regulation")
data.raw.technology["construction-robotics"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

table.insert(data.raw.technology["logistic-robotics"].prerequisites, "sp-power-regulation")
data.raw.technology["logistic-robotics"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["logistic-system"].prerequisites = {
  "sp-computer-science-pack-2",
  "construction-robotics",
  "logistic-robotics"
}
data.raw.technology["logistic-system"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["personal-roboport-equipment"].prerequisites = {
  "construction-robotics"
}
data.raw.technology["personal-roboport-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

table.insert(data.raw.technology["personal-roboport-mk2-equipment"].prerequisites, "sp-electrode")
table.insert(data.raw.technology["personal-roboport-mk2-equipment"].prerequisites, "sp-control-unit")
table.insert(data.raw.technology["personal-roboport-mk2-equipment"].prerequisites, "sp-kr-lithium-sulfur-battery")
data.raw.technology["personal-roboport-mk2-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

table.insert(data.raw.technology["rocket-silo"].effects, 2, {type = "unlock-recipe", recipe = "sp-rocket"})  -- insert at 2nd position
table.insert(data.raw.technology["rocket-silo"].effects, 4, {type = "unlock-recipe", recipe = "sp-cargo-pod"})  -- insert at 4th position
table.insert(data.raw.technology["rocket-silo"].effects, 5, {type = "unlock-recipe", recipe = "sp-docking-hatch"})  -- insert at 5th position
table.insert(data.raw.technology["rocket-silo"].effects, 6, {type = "unlock-recipe", recipe = "sp-reaction-control-system"})  -- insert at 6th position
table.insert(data.raw.technology["rocket-silo"].effects, 7, {type = "unlock-recipe", recipe = "sp-gyroscope"})  -- insert at 7th position
table.insert(data.raw.technology["rocket-silo"].effects, {type = "unlock-recipe", recipe = "sp-rocket-fuel-from-hydrogen-peroxide"})
data.raw.technology["rocket-silo"].prerequisites = {
  "sp-rocket-control-unit",
  "rocket-fuel",
  "sp-advanced-gearbox",
  "sp-rocket-engine",
  "sp-spark-plug",
  "sp-control-unit",
  "low-density-structure",
  "sp-photovoltaics",
  "sp-antenna-chip",
  "sp-kr-lithium-sulfur-battery",
  "sp-teflon",
  "sp-electrum",
  "laser"
}
data.raw.technology["rocket-silo"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["modules"].prerequisites = {"sp-electronic-science-pack-1"}
data.raw.technology["modules"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["speed-module"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["speed-module-2"].prerequisites = {
  "speed-module",
  "sp-light-emitting-diode"
}
data.raw.technology["speed-module-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["productivity-module"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["productivity-module-2"].prerequisites = {
  "productivity-module",
  "sp-light-emitting-diode"
}
data.raw.technology["productivity-module-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["efficiency-module"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["efficiency-module-2"].prerequisites = {
  "efficiency-module",
  "sp-light-emitting-diode"
}
data.raw.technology["efficiency-module-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["speed-module-3"].prerequisites = {
  "sp-advanced-processing-unit"
}
data.raw.technology["speed-module-3"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["productivity-module-3"].prerequisites = {
  "sp-advanced-processing-unit"
}
data.raw.technology["productivity-module-3"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["efficiency-module-3"].prerequisites = {
  "sp-advanced-processing-unit"
}
data.raw.technology["efficiency-module-3"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["rocket-fuel"].prerequisites = {
  "utility-science-pack",
  "sp-diborane"
}
data.raw.technology["rocket-fuel"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["uranium-processing"].prerequisites = {
  "sp-heat-resistant-electronics",
  "sp-electromagnetic-science-pack-2"
}
data.raw.technology["uranium-processing"].research_trigger = nil
data.raw.technology["uranium-processing"].unit = {
  count = 250,
  ingredients = {
    {"sp-automation-science-pack-2", 1},
    {"sp-logistic-science-pack-2", 1},
    {"sp-chemical-science-pack-2", 1},
    {"sp-electronic-science-pack-2", 1},
    {"sp-material-science-pack-2", 1},
    {"sp-geological-science-pack-2", 1},
    {"sp-metallurgic-science-pack-2", 1},
    {"sp-electromagnetic-science-pack-2", 1},
    {"production-science-pack", 1}
  },
  time = 30,
}

table.insert(data.raw.technology["heavy-armor"].prerequisites, "military-science-pack")
data.raw.technology["heavy-armor"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"military-science-pack", 1}
}

data.raw.technology["modular-armor"].prerequisites = {
  "sp-fabric",
  "sp-insulation-sheet",
  "sp-magnet",
  "sp-aluminum-treatment",
  "heavy-armor"
}
data.raw.technology["modular-armor"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"military-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["power-armor"].prerequisites = {
  "advanced-circuit",
  "electric-engine",
  "sp-military-science-pack-2",
  "sp-nickel-alloys"
}
data.raw.technology["power-armor"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["power-armor-mk2"].prerequisites = {
  "sp-compressor",
  "processing-unit",
  "sp-ceramic-matrix-composites"
}
data.raw.technology["power-armor-mk2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["solar-panel-equipment"].prerequisites = {
  "sp-photovoltaics"
}
data.raw.technology["solar-panel-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"electromagnetic-science-pack", 1}
}

-- Why is this a base technology and not krastorio technology? Who knows...
data.raw.technology["fusion-reactor-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-geological-science-pack-3", 1},
  {"space-science-pack", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-nuclear-science-pack-3", 1},
  {"sp-computer-science-pack-3", 1},
  {"utility-science-pack", 1},
}

--------------------------------------------------------------------------------
-- MARK: Military
--------------------------------------------------------------------------------

data.raw.technology["military"].prerequisites = {
  "sp-iron-machining",
  "automation-science-pack"
}
data.raw.technology["military"].effects = {
  {
    type = "unlock-recipe",
    recipe = "submachine-gun"
  },
}

table.insert(data.raw.technology["military-2"].prerequisites, "military-science-pack")
table.insert(data.raw.technology["military-2"].prerequisites, "sp-aluminum-processing")
data.raw.technology["military-2"].effects ={
  {
    type = "unlock-recipe",
    recipe = "piercing-rounds-magazine"
  },
}
data.raw.technology["military-2"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"military-science-pack", 1}
}

table.insert(data.raw.technology["military-3"].prerequisites, "sp-phosphorus-processing")
table.insert(data.raw.technology["military-3"].prerequisites, "military-2")
data.raw.technology["military-3"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"military-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["military-4"].prerequisites = {
  "sp-military-science-pack-2",
  "military-3",
  "sp-tungsten-processing"
}
data.raw.technology["military-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1},
  {"production-science-pack", 1}
}

data.raw.technology["radar"].prerequisites = {
  "sp-kr-automation-core"
}

data.raw.technology["gate"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"military-science-pack", 1}
}

data.raw.technology["flammables"].prerequisites = {
  "chemical-science-pack",
  "military-science-pack"
}
data.raw.technology["flammables"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"military-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

table.insert(data.raw.technology["flamethrower"].prerequisites, "sp-nickel-alloys")
table.insert(data.raw.technology["flamethrower"].prerequisites, "sp-pressure-fluid")
table.insert(data.raw.technology["flamethrower"].prerequisites, "sp-military-science-pack-2")
data.raw.technology["flamethrower"].unit.count = 150
data.raw.technology["flamethrower"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

table.insert(data.raw.technology["rocketry"].prerequisites, "processing-unit")
table.insert(data.raw.technology["rocketry"].prerequisites, "sp-solid-rocket-motor")
table.insert(data.raw.technology["rocketry"].prerequisites, "sp-optical-sensor")
data.raw.technology["rocketry"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}
data.raw.technology["rocketry"].unit.time = 30

data.raw.technology["explosive-rocketry"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}
data.raw.technology["explosive-rocketry"].unit.time = 30

table.insert(data.raw.technology["laser-turret"].prerequisites, "sp-military-science-pack-2")
data.raw.technology["laser-turret"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

table.insert(data.raw.technology["defender"].prerequisites, "construction-robotics")
table.insert(data.raw.technology["defender"].prerequisites, "logistic-robotics")
table.insert(data.raw.technology["defender"].prerequisites, "sp-military-science-pack-2")
data.raw.technology["defender"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

table.insert(data.raw.technology["distractor"].prerequisites, "sp-gyroscope")
table.insert(data.raw.technology["distractor"].prerequisites, "sp-kr-lithium-sulfur-battery")
data.raw.technology["distractor"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

table.insert(data.raw.technology["destroyer"].prerequisites, "sp-turbine-parts")
table.insert(data.raw.technology["destroyer"].prerequisites, "sp-control-unit")
data.raw.technology["destroyer"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["discharge-defense-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["energy-shield-equipment"].prerequisites = {
  "sp-military-science-pack-2",
  "advanced-circuit",
  "sp-electrode"
}
data.raw.technology["energy-shield-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"electromagnetic-science-pack", 1},
  {"production-science-pack", 1},
}

table.insert(data.raw.technology["energy-shield-mk2-equipment"].prerequisites, "sp-military-science-pack-3")
data.raw.technology["energy-shield-mk2-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"production-science-pack", 1}
}

table.insert(data.raw.technology["personal-laser-defense-equipment"].prerequisites, "military-4")
data.raw.technology["personal-laser-defense-equipment"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

table.insert(data.raw.technology["tank"].prerequisites, "military-4")
table.insert(data.raw.technology["tank"].prerequisites, "sp-control-unit")
table.insert(data.raw.technology["tank"].prerequisites, "tungsten-steel")
data.raw.technology["tank"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

table.insert(data.raw.technology["artillery"].prerequisites, "sp-spark-plug")
table.insert(data.raw.technology["artillery"].prerequisites, "sp-semiconductor")
data.raw.technology["artillery"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-computer-science-pack-2", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["uranium-ammo"].prerequisites = {
  "sp-nuclear-science-pack-2",
  "sp-spark-plug"
}
data.raw.technology["uranium-ammo"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-nuclear-science-pack-2", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

table.insert(data.raw.technology["spidertron"].prerequisites, "sp-computer-science-pack-3")
data.raw.technology["spidertron"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-geological-science-pack-3", 1},
  {"space-science-pack", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-military-science-pack-3", 1},
  {"sp-nuclear-science-pack-3", 1},
  {"sp-computer-science-pack-3", 1},
  {"utility-science-pack", 1},
}

table.insert(data.raw.technology["atomic-bomb"].prerequisites, "sp-advanced-processing-unit")
data.raw.technology["atomic-bomb"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-geological-science-pack-3", 1},
  {"space-science-pack", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-military-science-pack-3", 1},
  {"sp-nuclear-science-pack-3", 1},
  {"sp-computer-science-pack-3", 1},
  {"utility-science-pack", 1},
}

--------------------------------------------------------------------------------
-- MARK: Infinite techs
--------------------------------------------------------------------------------
data.raw.technology["research-speed-1"].prerequisites = {
  "chemical-science-pack",
  "sp-electronic-science-pack-1"
}
data.raw.technology["research-speed-1"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["research-speed-2"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["research-speed-3"].prerequisites = {
  "research-speed-2",
  "sp-computer-science-pack-2"
}
data.raw.technology["research-speed-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["research-speed-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["research-speed-5"].prerequisites = {
  "research-speed-4",
  "sp-computer-science-pack-3"
}
data.raw.technology["research-speed-5"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"sp-computer-science-pack-3", 1},
  {"utility-science-pack", 1},
  {"space-science-pack", 1}
}

data.raw.technology["research-speed-6"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"sp-computer-science-pack-3", 1},
  {"utility-science-pack", 1},
  {"space-science-pack", 1}
}

data.raw.technology["mining-productivity-1"].prerequisites = {
  "sp-geological-science-pack-1"
}
data.raw.technology["mining-productivity-1"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
}

data.raw.technology["mining-productivity-2"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
}

data.raw.technology["mining-productivity-3"].prerequisites = {
  "mining-productivity-2",
  "sp-electronic-science-pack-1"
}
data.raw.technology["mining-productivity-3"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"chemical-science-pack", 1}
}
data.raw.technology["mining-productivity-3"].max_level = 9

data.raw.technology["braking-force-1"].prerequisites = {
  "railway",
  "sp-electronic-science-pack-1"
}
data.raw.technology["braking-force-1"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1}
}

data.raw.technology["braking-force-2"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1}
}

data.raw.technology["braking-force-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1},
  {"production-science-pack", 1}
}

data.raw.technology["braking-force-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1},
  {"production-science-pack", 1}
}

data.raw.technology["braking-force-5"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1},
  {"production-science-pack", 1}
}

table.insert(data.raw.technology["braking-force-6"].prerequisites, "sp-production-science-pack-3")
table.insert(data.raw.technology["braking-force-6"].prerequisites, "sp-geological-science-pack-3")
data.raw.technology["braking-force-6"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"sp-geological-science-pack-3", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1}
}

table.insert(data.raw.technology["braking-force-7"].prerequisites, "sp-utility-science-pack-3")
data.raw.technology["braking-force-7"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-geological-science-pack-3", 1},
  {"space-science-pack", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-nuclear-science-pack-3", 1},
  {"sp-computer-science-pack-3", 1},
  {"sp-utility-science-pack-3", 1},
}

data.raw.technology["inserter-capacity-bonus-1"].prerequisites = {
  "bulk-inserter"
}
data.raw.technology["inserter-capacity-bonus-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"production-science-pack", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}
data.raw.technology["inserter-capacity-bonus-1"].effects = {
  {
    type = "inserter-stack-size-bonus",
    modifier = 1
  }
}

data.raw.technology["inserter-capacity-bonus-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"production-science-pack", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}
data.raw.technology["inserter-capacity-bonus-2"].effects = {
  {
    type = "inserter-stack-size-bonus",
    modifier = 1
  }
}

data.raw.technology["inserter-capacity-bonus-3"].prerequisites = {
  "inserter-capacity-bonus-2",
  "stack-inserter"
}
data.raw.technology["inserter-capacity-bonus-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}
data.raw.technology["inserter-capacity-bonus-3"].effects = {
  {
    type = "inserter-stack-size-bonus",
    modifier = 1
  },
  {
    type = "bulk-inserter-capacity-bonus",
    modifier = 1
  }
}

data.raw.technology["inserter-capacity-bonus-4"].prerequisites = {"inserter-capacity-bonus-3"}
data.raw.technology["inserter-capacity-bonus-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}
data.raw.technology["inserter-capacity-bonus-4"].effects = {
  {
    type = "inserter-stack-size-bonus",
    modifier = 1
  },
  {
    type = "bulk-inserter-capacity-bonus",
    modifier = 1
  }
}

data.raw.technology["inserter-capacity-bonus-5"].prerequisites = {
  "sp-production-science-pack-3",
  "inserter-capacity-bonus-4"
}
data.raw.technology["inserter-capacity-bonus-6"].unit.count = 750
data.raw.technology["inserter-capacity-bonus-5"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-production-science-pack-3", 1},
  {"utility-science-pack", 1}
}
data.raw.technology["inserter-capacity-bonus-5"].effects = {
  {
    type = "inserter-stack-size-bonus",
    modifier = 2
  },
  {
    type = "bulk-inserter-capacity-bonus",
    modifier = 2
  }
}

data.raw.technology["inserter-capacity-bonus-6"].unit.count = 1500
data.raw.technology["inserter-capacity-bonus-6"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-production-science-pack-3", 1},
  {"utility-science-pack", 1}
}
data.raw.technology["inserter-capacity-bonus-6"].effects = {
  {
    type = "inserter-stack-size-bonus",
    modifier = 2
  },
  {
    type = "bulk-inserter-capacity-bonus",
    modifier = 2
  }
}


data.raw.technology["inserter-capacity-bonus-7"].prerequisites = {
  "sp-material-science-pack-3",
  "sp-electronic-science-pack-3",
  "inserter-capacity-bonus-6"
}
data.raw.technology["inserter-capacity-bonus-7"].unit.count = 2000
data.raw.technology["inserter-capacity-bonus-7"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"utility-science-pack", 1}
}
data.raw.technology["inserter-capacity-bonus-7"].effects = {
  {
    type = "inserter-stack-size-bonus",
    modifier = 2
  },
  {
    type = "bulk-inserter-capacity-bonus",
    modifier = 2
  }
}

data.raw.technology["worker-robots-speed-1"].prerequisites = {
  "sp-computer-science-pack-2",
  "logistic-robotics",
  "construction-robotics"
}
data.raw.technology["worker-robots-speed-1"].unit.count = 200
data.raw.technology["worker-robots-speed-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["worker-robots-speed-2"].prerequisites = {
  "worker-robots-speed-1",
}
data.raw.technology["worker-robots-speed-2"].unit.count = 400
data.raw.technology["worker-robots-speed-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["worker-robots-speed-3"].prerequisites = {
  "worker-robots-speed-2",
  "sp-material-science-pack-3",
  "sp-electronic-science-pack-3",
  "sp-production-science-pack-3",
  "utility-science-pack"
}
data.raw.technology["worker-robots-speed-3"].unit.count = 500
data.raw.technology["worker-robots-speed-3"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["worker-robots-speed-4"].unit.count = 750
data.raw.technology["worker-robots-speed-4"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["worker-robots-speed-5"].prerequisites = {
  "worker-robots-speed-4",
  "sp-chemical-science-pack-3",
  "sp-computer-science-pack-3"
}
data.raw.technology["worker-robots-speed-5"].unit.count = 1000
data.raw.technology["worker-robots-speed-5"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-3", 1}
}

data.raw.technology["worker-robots-speed-6"].unit.count = 1000
data.raw.technology["worker-robots-speed-6"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-geological-science-pack-3", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-computer-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"sp-nuclear-science-pack-3", 1},
  {"sp-space-science-pack-3", 1},
  {"sp-utility-science-pack-3", 1},
  {"space-science-pack", 1},
  -- Krastorio: {"sp-matter-science-pack", 1}
}

data.raw.technology["worker-robots-speed-7"].unit.count_formula = "1500+(L-6)*500"
data.raw.technology["worker-robots-speed-7"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-3", 1},
  {"sp-electronic-science-pack-3", 1},
  {"sp-geological-science-pack-3", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-computer-science-pack-3", 1},
  {"sp-production-science-pack-3", 1},
  {"sp-nuclear-science-pack-3", 1},
  {"sp-space-science-pack-3", 1},
  {"sp-utility-science-pack-3", 1},
  {"space-science-pack", 1},
  -- Krastorio: {"sp-matter-science-pack", 1}
}

data.raw.technology["worker-robots-storage-1"].prerequisites = {
  "sp-computer-science-pack-2",
  "logistic-robotics",
  "construction-robotics"
}
data.raw.technology["worker-robots-storage-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["worker-robots-storage-2"].prerequisites = {
  "worker-robots-storage-1",
}
data.raw.technology["worker-robots-storage-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["worker-robots-storage-3"].prerequisites = {
  "worker-robots-storage-2",
  "sp-material-science-pack-3",
  "sp-electronic-science-pack-3",
  "sp-production-science-pack-3",
  "utility-science-pack"
}
data.raw.technology["worker-robots-storage-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["follower-robot-count-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["follower-robot-count-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["follower-robot-count-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["follower-robot-count-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["follower-robot-count-5"].max_level = nil
data.raw.technology["follower-robot-count-5"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["refined-flammables-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["refined-flammables-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["refined-flammables-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"chemical-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["refined-flammables-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["refined-flammables-5"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["refined-flammables-6"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1},
  {"sp-computer-science-pack-2", 1},
  {"space-science-pack", 1}
}

table.insert(data.raw.technology["laser-weapons-damage-1"].prerequisites, "laser-turret")
data.raw.technology["laser-weapons-damage-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-weapons-damage-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-weapons-damage-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-weapons-damage-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-weapons-damage-5"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-weapons-damage-6"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-weapons-damage-7"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

table.insert(data.raw.technology["laser-shooting-speed-1"].prerequisites, "laser-turret")
data.raw.technology["laser-shooting-speed-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-shooting-speed-2"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-shooting-speed-3"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-shooting-speed-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-shooting-speed-5"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-shooting-speed-6"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["laser-shooting-speed-7"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1}
}

data.raw.technology["stronger-explosives-1"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"military-science-pack", 1}
}

table.insert(data.raw.technology["stronger-explosives-4"].prerequisites, "sp-military-science-pack-2")
data.raw.technology["stronger-explosives-4"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["stronger-explosives-5"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1},
  {"sp-computer-science-pack-2", 1},
  {"space-science-pack", 1}
}

data.raw.technology["stronger-explosives-6"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"cryogenic-science-pack", 1},
  {"agricultural-science-pack", 1},
  {"sp-computer-science-pack-2", 1},
  {"space-science-pack", 1}
}

data.raw.technology["artillery-shell-damage-1"].prerequisites = {
  "artillery"
}
data.raw.technology["artillery-shell-damage-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-computer-science-pack-2", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["artillery-shell-range-1"].prerequisites = {
  "artillery",
  "sp-production-science-pack-3"
}
data.raw.technology["artillery-shell-range-1"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"production-science-pack", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"sp-military-science-pack-2", 1},
  {"sp-computer-science-pack-2", 1},
  {"utility-science-pack", 1}
}

data.raw.technology["artillery-shell-speed-1"].prerequisites = {
  "artillery",
  "sp-production-science-pack-3"
}
data.raw.technology["artillery-shell-speed-1"].unit.ingredients = {
  {"sp-automation-science-pack-3", 1},
  {"sp-logistic-science-pack-3", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-material-science-pack-3", 1},
  {"sp-computer-science-pack-2", 1},
  {"sp-military-science-pack-3", 1},
  {"production-science-pack", 1},
  {"sp-nuclear-science-pack-2", 1},
  {"space-science-pack", 1},
  {"utility-science-pack", 1},
}

--------------------------------------------------------------------------------
-- MARK: Science packs
--------------------------------------------------------------------------------
data.raw.technology["automation-science-pack"].icon = "__Spaghetorio__/graphics/krastorio/technologies/automation-tech-card.png"
table.insert(data.raw.technology["automation-science-pack"].effects, {type = "unlock-recipe", recipe = "lab"})
table.insert(data.raw.technology["automation-science-pack"].effects, {type = "unlock-recipe", recipe = "sp-blank-tech-card"})
data.raw.technology["automation-science-pack"].research_trigger =
{
  type = "craft-item",
  item = "sp-glass",
  count = 10
}
data.raw.technology["automation-science-pack"].prerequisites = {"sp-glass"}

data.raw.technology["logistic-science-pack"].icon = "__Spaghetorio__/graphics/krastorio/technologies/logistic-tech-card.png"
data.raw.technology["logistic-science-pack"].prerequisites = {
  "engine",
  "fluid-handling",
  "sp-kr-automation-core",
  "repair-pack"
}

data.raw.technology["military-science-pack"].icon = "__Spaghetorio__/graphics/krastorio/technologies/military-tech-card.png"
data.raw.technology["military-science-pack"].prerequisites = {
  "sp-intermediate-military",
  "gun-turret",
  "stone-wall",
  "logistic-science-pack"
}
data.raw.technology["military-science-pack"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
data.raw.technology["military-science-pack"].effects = {
  {
    type = "unlock-recipe",
    recipe = "military-science-pack"
  }
}

data.raw.technology["production-science-pack"].icon = "__Spaghetorio__/graphics/krastorio/technologies/production-tech-card.png"
data.raw.technology["production-science-pack"].prerequisites = {
  "sp-power-regulation",
  "sp-advanced-gearbox"
}
data.raw.technology["production-science-pack"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"metallurgic-science-pack", 1},
  {"electromagnetic-science-pack", 1}
}

data.raw.technology["chemical-science-pack"].icon = "__Spaghetorio__/graphics/krastorio/technologies/chemical-tech-card.png"
data.raw.technology["chemical-science-pack"].prerequisites = {
  "plastics",
  "sulfur-processing"
}
data.raw.technology["chemical-science-pack"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

data.raw.technology["utility-science-pack"].icon = "__Spaghetorio__/graphics/hr-icons/utility-science-pack-2.png"
data.raw.technology["utility-science-pack"].prerequisites = {
  "sp-kr-research-server"
}
data.raw.technology["utility-science-pack"].unit.ingredients = {
  {"sp-automation-science-pack-2", 1},
  {"sp-logistic-science-pack-2", 1},
  {"sp-material-science-pack-2", 1},
  {"sp-geological-science-pack-2", 1},
  {"sp-electronic-science-pack-2", 1},
  {"sp-chemical-science-pack-2", 1},
  {"sp-metallurgic-science-pack-2", 1},
  {"sp-electromagnetic-science-pack-2", 1},
  {"production-science-pack", 1}
}

table.insert(data.raw.technology["space-science-pack"].effects, 1, {type = "unlock-space-location", space_location = "sp-rhodium-rich-asteroid", use_icon_overlay_constant = true})  -- insert at 1st position
table.insert(data.raw.technology["space-science-pack"].effects, {type = "unlock-recipe", recipe = "sp-space-research-data"})
data.raw.technology["space-science-pack"].icon = "__Spaghetorio__/graphics/krastorio/technologies/matter-tech-card.png"
data.raw.technology["space-science-pack"].prerequisites = {
  "space-platform-thruster",
  "sp-data-cards"
}
data.raw.technology["space-science-pack"].research_trigger = nil
data.raw.technology["space-science-pack"].unit = {
  count = 750,
  ingredients = {
    {"sp-automation-science-pack-2", 1},
    {"sp-logistic-science-pack-2", 1},
    {"sp-material-science-pack-2", 1},
    {"sp-geological-science-pack-2", 1},
    {"sp-electronic-science-pack-2", 1},
    {"sp-chemical-science-pack-2", 1},
    {"sp-metallurgic-science-pack-2", 1},
    {"sp-electromagnetic-science-pack-2", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"cryogenic-science-pack", 1},
    {"agricultural-science-pack", 1},
    {"sp-computer-science-pack-2", 1}
  },
  time = 45
}

-- table.insert(data.raw.technology["sp-processed-resource-from-acrovoid"].effects, {type = "unlock-recipe", recipe = "sp-coke-from-acrovoid"})
-- table.insert(data.raw.technology["sp-processed-resource-from-acrovoid"].effects, {type = "unlock-recipe", recipe = "sp-silicon-from-acrovoid"})
