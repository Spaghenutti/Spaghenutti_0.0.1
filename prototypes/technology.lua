local util = require("data-util")
local core_util = require("__core__.lualib.util")


data:extend({
  {
    type = "technology",
    name = "sp-iron-extruding",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/technology/iron-extruding.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "iron-stick"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iron-beam"
      }
    },
    research_trigger = {
      type = "craft-item",
      item = "iron-plate",
      count = 2
    },
  },
  {
    type = "technology",
    name = "sp-copper-extruding",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/copper-tube.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-copper-tube"
      },
      {
        type = "unlock-recipe",
        recipe = "copper-cable"
      }
    },
    research_trigger = {
      type = "craft-item",
      item = "copper-plate",
      count = 5
    },
  },
  {
    type = "technology",
    name = "sp-iron-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/machined-parts-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "iron-gear-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bolts"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nuts"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rivets"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-washers"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-mounting-bracket"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-machined-parts"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-spring"
      },
      {
        type = "unlock-recipe",
        recipe = "iron-chest"
      },
      {
        type = "unlock-recipe",
        recipe = "burner-inserter"
      },
    },
    prerequisites = {
      "sp-iron-extruding",
    },
    research_trigger =
    {
      type = "craft-item",
      item = "iron-stick",
      count = 2
    },
  },
  {
    type = "technology",
    name = "sp-tin-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    -- icon = "__Spaghetorio__/graphics/hr-icons/lead-slab-from-tinstone.png",
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/tin-ingot.png", 256, nil,
                                   "__Spaghetorio__/graphics/hr-icons/lead-slab.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-tin-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lead-slab-from-tinstone"
      },
    },
    research_trigger =
    {
      type = "mine-entity",
      entity = "sp-tinstone"
    },
  },
  {
    type = "technology",
    name = "sp-basic-alloy",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/bronze-rod.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bronze-rod"
      },
    },
    prerequisites = {
      "sp-tin-processing",
    },
    research_trigger = {
      type = "craft-item",
      item = "sp-tin-ingot",
      count = 5
    },
  },
  {
    type = "technology",
    name = "sp-bearing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/bearing.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bearing"
      }
    },
    prerequisites = {
      "sp-basic-alloy",
    },
    research_trigger = {
      type = "craft-item",
      item = "sp-bronze-rod",
      count = 2
    },
  },
  {
    type = "technology",
    name = "sp-tin-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    -- icon = "__Spaghetorio__/graphics/hr-icons/lead-slab-from-tinstone.png",
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/tin-ingot.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/lead-slab.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-tin-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lead-slab-from-tinstone"
      },
    },
    research_trigger =
    {
      type = "mine-entity",
      entity = "sp-tinstone"
    },
  },
  {
    type = "technology",
    name = "sp-lumber-mill",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/lumber-mill.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-lumber-mill"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-wood-chips"
      }
    },
    prerequisites = {
      "engine"
    },
    unit = {
      count = 5,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-kr-automation-core",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/automation-core.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-automation-core",
      },
    },
    prerequisites = {
      "sp-steel-machining",
      "sp-basic-alloy",
    },
    unit = {
      count = 15,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 20,
    },
  },
  {
    type = "technology",
    name = "sp-glass",  -- #ForRegEx# - technology
    icon_size = 64,  -- TODO: fix icon
    icon = "__Spaghetorio__/graphics/krastorio/icons/items/glass.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-glass"
      },
    },
    prerequisites = {
      "sp-crusher"
    },
    research_trigger = {
      type = "craft-item",
      item = "sp-sand",
      count = 10
    },
  },
  {
    type = "technology",
    name = "sp-steel-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/machine-housing-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-machine-housing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-connecting-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-steel-gear-wheel"
      },
    },
    prerequisites = {
      "steel-processing",
      "sp-basic-alloy"
    },
    unit = {
      count = 15,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-roller-chains-and-sprockets",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/roller-chain.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-roller-chain"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sprocket"
      }
    },
    prerequisites = {"steel-processing"},
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-aluminum-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/aluminum-sheet.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-alumina"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aluminum-sheet"
      }
    },
    prerequisites = {
      "logistic-science-pack",
      "sp-kr-fluids-chemistry"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-aluminum-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/aluminum-frame.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-aluminum-frame"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aluminum-cable"
      }
    },
    prerequisites = {"sp-aluminum-processing"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-aluminum-treatment",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/anodized-aluminum.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-anodized-aluminum"
      }
    },
    prerequisites = {
      "sp-aluminum-processing",
      "chemical-science-pack"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-basic-crushing-smelting",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/basic-crushing-smelting.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-copper-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-tinstone"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-garnierite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-chromite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-magnesite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-chromite-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-iron-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-iron-smelting-into-beam"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-copper-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-bauxite-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-tinstone-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lead-slab"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-garnierite-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-magnesite-smelting"
      },
    },
    prerequisites = {
      "sp-geological-science-pack-1",
      "advanced-material-processing",
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-zinc-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/zinc-sulfate-1.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/zinc-plate.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-zinc-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-zinc-smelting"
      }
    },
    prerequisites = {
      "chemical-science-pack"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-brass",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/brass.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-brass"
      }
    },
    prerequisites = {
      "sp-zinc-processing"
    },
    unit = {
      count = 75,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    -- extends base technology to 3rd tier
    name = "sp-electric-energy-distribution-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "substation"
      }
    },
    prerequisites = {
      "sp-power-regulation",
      "electric-energy-distribution-2"
    },
    unit = {
      count = 75,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-carbon-high-tech",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/carbon-nanotubes.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/graphene.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-carbon-nanotubes"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-graphene"
      },
    },
    prerequisites = {
      "utility-science-pack"
    },
    unit = {
      count = 1000,
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
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-cement",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/cement.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-calcium-carbonate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cement"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-landfill-from-cement"
      }
    },
    prerequisites = {
      "sp-phosphorus-processing"
    },
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-titanium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/titanium-ingot.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-sponge"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-titanium-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-titanium-smelting"
      },
    },
    prerequisites = {
      "sp-alkaline-solutions"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-titanium-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/titanium-frame-1.png", 256, nil,
                                   "__Spaghetorio__/graphics/hr-icons/titanium-plate.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-frame"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-plate"
      },
    },
    prerequisites = {
      "sp-titanium-processing"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-basic-ceramics",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ceramics-1.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-zircon"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zirconia"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ceramics"
      },
    },
    prerequisites = {
      "sp-zirconium-processing",
      "sp-silicon-processing"
    },
    unit = {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-intermediate-ceramics",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/titanium-carbide.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/boron-carbide.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-carbide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-boron-carbide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-barium-titanate",
      }
    },
    prerequisites = {
      "sp-boron-processing"
    },
    unit = {
      count = 400,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ceramic-matrix-composites",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ceramic-matrix-composites-1.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ceramic-matrix-composites"
      }
    },
    prerequisites = {
      "sp-carbon-high-tech",
    },
    unit = {
      count = 300,
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
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-diamond",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/diamond.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-diamond"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sapphire"
      },
    },
    prerequisites = {
      "sp-induction-hardening-facility"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-zirconium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/zirconium-rod.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-zirconium-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-zirconium-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-zirconium-smelting"
      }
    },
    prerequisites = {
      "sp-basic-crushing-smelting",
      "sp-perchloric-acid"
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-niobium-and-tantalum",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/niobium-billet.png", 256, nil,
                                   "__Spaghetorio__/graphics/hr-icons/tantalum-billet.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-niobium-billet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tantalum-billet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-niobium-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aqueous-niobium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aqueous-niobium-and-tantalum"
      }
    },
    prerequisites = {
      "sp-geological-science-pack-2"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-tungsten-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/tungsten-plate.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ammonium-paratungstate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tungsten-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "tungsten-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-tungsten-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-tungsten-smelting"
      },
    },
    prerequisites = {
      "big-mining-drill",
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-cobalt-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/cobalt-billet.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-cobalt-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cobalt-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cobalt-billet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-cobaltite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-cobaltite-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-wood-fuel-from-arsenic-trioxide"
      },
    },
    prerequisites = {
      "sp-phosphorus-processing",
      "sp-basic-crushing-smelting"
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-arsen-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/arsen-pillet.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-arsen-pillet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-arsenic-iodide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-arsenic-sulfide"
      }
    },
    prerequisites = {
      "sp-iodine-processing"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-bromine-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/bromine.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bromine"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bromine-from-bromine-trifluoride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bromine-from-silver-bromide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bromine-trifluoride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-bromargyrite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-silver-bromide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bromargyrite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-silver-from-silver-chloride-and-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-silver-from-silver-chloride-and-zinc"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iron-plate-from-iron-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-plate-from-zinc-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-bromide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-bromide",
      },
    },
    prerequisites = {
      "sp-core-extractor",
      "sp-chloroacetic-acid"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-xenotime-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/xenotime.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-xenotime"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-xenotime"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ytterbium-compounds-from-xenotime"
      },
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-yttrium-from-xenotime" -- sodium hydroxide
      -- },
    },
    prerequisites = {
      "sp-core-extractor"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-djerfisherite-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/djerfisherite.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-djerfisherite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-djerfisherite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-terbium-compounds-from-djerfisherite"
      },
    },
    prerequisites = {
      "sp-core-extractor"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-iodine-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/iodine.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-iodine-sludge"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iodine"
      }
    },
    prerequisites = {
      "production-science-pack"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-molybdenum-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/molybdenum-trioxide.png", 256, {-20, 20},
                                        "__Spaghetorio__/graphics/hr-icons/molybdenum-pillet.png", 256, {20, -20}),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-molybdenum-trioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-molybdate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushed-molybdate-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molybdenum-pillet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-maraging-steel"
      }
    },
    prerequisites = {
      "sp-geological-science-pack-2",
      "sp-bleach"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rhenium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/rhenium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rhenium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rhenium-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ammonium-perrhenate-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nickel-rhenium"
      }
    },
    prerequisites = {
      "sp-benzyltrimethylammonium-chloride",
      "sp-metallurgic-science-pack-2",
      "sp-arc-furnace"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-hafnium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/hafnium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-zirconate-and-hafnate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zirconium-rod-from-sodium-zirconate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hafnium"
      }
    },
    prerequisites = {
      "sp-zirconium-processing",
      "sp-sodium-hydroxide",
      "sp-metallurgic-science-pack-2",
      "sp-arc-furnace"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-manganese-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/manganese-dioxide.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/manganese-ingot.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-manganese-dioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-manganese-ingot"
      }
    },
    prerequisites = {
      "sp-geological-science-pack-2"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-vanadium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons =  util.icon.combine_three_icons("__Spaghetorio__/graphics/hr-icons/vanadium-pentoxide.png", 256, nil,
                                           "__Spaghetorio__/graphics/hr-icons/ammonium-metavanadate.png", 256, nil,
                                           "__Spaghetorio__/graphics/hr-icons/vanadium-plate.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-vanadium-pentoxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vanadium-bearing-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ammonium-metavanadate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vanadium-plate"
      }
    },
    prerequisites = {
      "sp-alloy-forge"
    },
    unit = {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-vanadium-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/vanadium-aluminum.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/vanadium-steel.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-vanadium-aluminum"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vanadium-steel"
      },
    },
    prerequisites = {
      "sp-vanadium-processing",
      "sp-alloy-forge",
    },
    unit = {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-potassium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/potassium-chloride.png", 256, {-20, 20},
                                        "__Spaghetorio__/graphics/hr-icons/potassium-ingot.png", 256, {20, -20}),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-ingot"
      },
    },
    prerequisites = {
      "sp-chemical-stager"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-cerium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/cerium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-stibnite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-antimony-oxide-from-crushed-stibnite"
      }
    },
    prerequisites = {
      "sp-material-science-pack-2",
      "sp-big-crusher"
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-gold-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/gold.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/gold-leaf.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-gold"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gold-leaf"
      },
    },
    prerequisites = {
      "sp-material-science-pack-2",
      "sp-big-crusher"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-palladium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/palladium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-silver-palladium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-palladium"
      }
    },
    prerequisites = {
      "sp-material-science-pack-2",
      "sp-big-crusher"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-platinum-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/platinum.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-platinum"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-platinum-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ammonium-hexachloroplatinate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ammonium-bisulfate-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-platinum-group-metal-matte"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-platinum-group-metal-concentrate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-platinum-group-metal-froth"
      },
    },
    prerequisites = {
      "sp-aqua-regia",
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-electrum",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/electrum.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-electrum"
      }
    },
    prerequisites = {
      "sp-gold-processing",
      "sp-palladium-processing",
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-germanium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/germanium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-germanium-tetrachloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-germanium"
      },
    },
    prerequisites = {
      "sp-big-crusher"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-production-components-set",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/production-components-set.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-production-components-set"
      }
    },
    prerequisites = {
      "sp-stainless-steel-processing"
    },
    unit = {
      count = 25,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-stainless-steel-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/stainless-steel.png", 256, nil,
                                   "__Spaghetorio__/graphics/hr-icons/chromium-plate.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-chromium-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nickel-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-stainless-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-stainless-steel-gear-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nickel-chromium"
      },
    },
    prerequisites = {
      "advanced-material-processing"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-aluminum-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/duralumin.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/aluminum-brass.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-duralumin"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aluminum-brass"
      },
    },
    prerequisites = {
      "sp-alloy-forge",
      "sp-material-science-pack-2"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-nickel-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/inconel.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-inconel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nickel-cobalt"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-waspaloy"
      },
    },
    prerequisites = {
      "sp-alloy-forge"
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-cobalt-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_three_icons("__Spaghetorio__/graphics/hr-icons/chromium-cobalt.png", 256, nil,
                                          "__Spaghetorio__/graphics/hr-icons/kovar.png", 256, nil,
                                          "__Spaghetorio__/graphics/hr-icons/elgiloy.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-chromium-cobalt"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-kovar"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-elgiloy"
      },
    },
    prerequisites = {
      "sp-molybdenum-processing",
      "sp-manganese-processing"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-titanium-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/titanium-aluminum-tin.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/titanium-niobium.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-aluminum-tin"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-niobium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nimonic"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-aluminum-vanadium",
      }
    },
    prerequisites = {
      "sp-metallurgic-science-pack-2",
      "production-science-pack"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rhodium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/rhodium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rhodium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rhodium-oxide-from-platinum-group-metal-matte"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rhodium-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rhodium-concentrate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rhodium-froth"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-bisulfate",
      }
    },
    prerequisites = {
      "space-platform",
      "sp-methyl-sulfate",
      "sp-cellulose"
    },
    unit = {
      count = 600,
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
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ruthenium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ruthenium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium-oxide-from-nitrosyl-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium-solutions"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium-nitrosyl-solution-from-platinum-group-metal-matte"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium-concentrate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium-froth"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-hypochlorite-solution"
      },
    },
    prerequisites = {
      "sp-ruthenium-rich-asteroid",
      "sp-methyl-sulfate",
      "sp-cellulose",
      "sp-sodium-periodate",
      "sp-ethylenediaminetetraacetic-acid"
    },
    unit = {
      count = 600,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-cryostabalized-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/cryostabalized-ruthenium.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/cryostabalized-tungsten.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-cryostabalized-ruthenium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cryostabalized-tungsten"
      },
    },
    prerequisites = {
      "sp-ruthenium-processing",
    },
    unit = {
      count = 500,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-dysprosium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/dysprosium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-dysprosium-from-nitrate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dysprosium-from-fluoride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dysprosium-nitrate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dysprosium-fluoride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dysprosium-compounds"
      },
    },
    prerequisites = {
      "sp-dysprosium-rich-asteroid",
    },
    unit = {
      count = 400,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-terbium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/terbium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-terbium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-terbium-oxide-from-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-terbium-oxide-from-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-terbium-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-terbium-compounds"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-terbium-compounds-from-magnesium"
      },
    },
    prerequisites = {
      "sp-terbium-rich-asteroid",
      "sp-argon",
    },
    unit = {
      count = 450,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ytterbium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ytterbium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ytterbium-from-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ytterbium-from-fluoride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ytterbium-compounds"
      },
    },
    prerequisites = {
      "sp-ytterbium-rich-asteroid",
      "sp-argon",
      "sp-ammonia-tetra-ethers"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-iridium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/iridium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-iridium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iridium-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hexachloroiridium-acid-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-iridium-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-iridium-oxide-from-platinum-group-metal-matte"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iridium-concentrate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iridium-froth"
      },
    },
    prerequisites = {
      "sp-iridium-rich-asteroid",
    },
    unit = {
      count = 1000,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-osmium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/osmium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-osmium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-osmium-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-osmium-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-osmium-oxide-from-platinum-group-metal-matte"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-osmium-concentrate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-osmium-froth"
      },
    },
    prerequisites = {
      "sp-osmium-rich-asteroid",
    },
    unit = {
      count = 1200,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-osmium-iridium-separations",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/osmium.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/iridium.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-osmium-oxide-from-iridium-concentrate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-iridium-oxide-from-osmium-concentrate"
      },
    },
    prerequisites = {
      "sp-iridium-processing",
      "sp-osmium-processing"
    },
    unit = {
      count = 250,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rhodium-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_three_icons("__Spaghetorio__/graphics/hr-icons/platinum-rhodium.png", 256, nil,
                                          "__Spaghetorio__/graphics/hr-icons/nickel-rhodium.png", 256, nil,
                                          "__Spaghetorio__/graphics/hr-icons/pseudo-palladium.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-nickel-rhodium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-platinum-rhodium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-pseudo-palladium"
      },
    },
    prerequisites = {
      "space-platform",
      "sp-rhodium-processing"
    },
    unit = {
      count = 200,
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
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ruthenium-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_three_icons("__Spaghetorio__/graphics/hr-icons/ruthenium-rhodium.png", 256, nil,
                                          "__Spaghetorio__/graphics/hr-icons/titanium-ruthenium.png", 256, nil,                                      
                                          "__Spaghetorio__/graphics/hr-icons/tohoku.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-ruthenium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tohoku"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ruthenium-rhodium"
      },
    },
    prerequisites = {
      "sp-ruthenium-processing",
    },
    unit = {
      count = 1000,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-bismuth-telluride",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/bismuth-telluride.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bismuth-telluride"
      },
    },
    prerequisites = {
      "sp-metallurgic-science-pack-2",
      "sp-tellurium-processing",
      "sp-bismuth-processing"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    -- Check if it can be unlocked with material science 2
    type = "technology",
    name = "sp-niobium-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/niobium-tin.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/niobium-steel.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-niobium-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-niobium-tin"
      },
    },
    prerequisites = {
      "sp-niobium-and-tantalum"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-pressure-fluid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/pressure-tube.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-pressure-valve",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-pressure-tube",
      }
    },
    prerequisites = {
      "sp-rubber"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-filter",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/filter.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-filter"
      }
    },
    prerequisites = {"sp-brass"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ball-bearing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ball-bearing.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ball-bearing"
      },
    },
    prerequisites = {
      "lubricant",
      "automation-2"
    },
    unit = {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-servo-motor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/servo-motor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-servo-motor"
      },
    },
    prerequisites = {
      "sp-ball-bearing",
      "sp-electronic-science-pack-1",
      "sp-magnet",
      "sp-vinyl-chloride",
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-bleach",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/bleach.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bleach"
      },
    },
    prerequisites = {"sp-chemical-science-pack-2"},
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-dimethyl-sulfoxide",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/dimethyl-sulfoxide.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-dimethyl-sulfoxide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dimethyl-sulfide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hydrogen-sulfide",
      }
    },
    prerequisites = {
      "sp-kr-fuel-refinery",
      "sp-oxidizer"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-fatty-acids",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/fatty-acids.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-fatty-acids",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-animal-fat",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-glycol",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bio-fuel",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lubricant-from-biocrude-oil"
      }
    },
    prerequisites = {
      "sp-dimethyl-sulfoxide",
      "fish-breeding"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-bio-pesticide",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/bio-pesticide.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bio-pesticide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-protozoa",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-polysaccharide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tree-growing",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-leaf",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-fungus-spore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nutrients-from-honeycomb-fungus",
      },
    },
    prerequisites = {
      "biochamber"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-spoiling",  -- #ForRegEx# - technology
    icon = "__space-age__/graphics/icons/spoilage.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-spoil-tree",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-spoil-wood",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-spoil-wood-chips",
      }
    },
    prerequisites = {
      "agricultural-science-pack",
      "sp-oxidizer"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-improved-agriculture",  -- #ForRegEx# - technology
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/potato-1.png", 256, {-20, 20},
                                        "__Spaghetorio__/graphics/hr-icons/wheat-1.png", 256, {20, -20}),
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-improved-potato-growing",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-improved-wheat-growing",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-improved-honeycomb-fungus-growing",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-improved-tree-growing",
      }
    },
    prerequisites = {
      "agricultural-science-pack"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-magnesium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/magnesium-slab.png",
    effects = {
      {
        type = "mining-with-fluid",
        modifier = true
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-slab"
      }
    },
    prerequisites = {"sp-kr-fluids-chemistry"},
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rare-metals",  -- #ForRegEx# - technology
    icon_size = 64, -- TODO: Fix icon
    icon = "__Spaghetorio__/graphics/krastorio/icons/items-with-variations/rare-metals/rare-metals-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-raw-rare-metal-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rare-metals-alloy-from-yttrium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rare-metals-alloy-from-lanthanum"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rare-metals-alloy-from-cerium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rare-metals-alloy-from-neodymium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-rare-metals",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-rare-metal-processing",
      },
    },
    prerequisites = {
      "sp-enriched-ores",
      "sp-material-science-pack-3",
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 15
    },
  },
  {
    type = "technology",
    name = "sp-salt",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/salt.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-salt"
      },
    },
    prerequisites = {"sp-filter"},
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-sodium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/sodium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-and-chlorine"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-liquid-sodium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-carbonate"
      },
    },
    prerequisites = {"sp-salt"},
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-optics",  -- #ForRegEx# - technology
    icon_size = 256,
    mip_maps = 4,
    icon = "__Spaghetorio__/graphics/hr-icons/lens.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-mirror"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-mirror-from-silver"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-optical-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lens"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-optic-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-infrared-filter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-selenide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-glass-from-calcite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-fiberglass",
      },
    },
    prerequisites = {
      "sp-sodium-processing",
      "sp-selenium-processing",
      "sp-niobium-and-tantalum",
      "sp-electronic-science-pack-2",
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-electronic-components",  -- #ForRegEx# - technology
    icon_size = 256,
    icons =  util.icon.combine_three_icons("__Spaghetorio__/graphics/hr-icons/coil.png", 256, nil,
                                           "__Spaghetorio__/graphics/hr-icons/transistor.png", 256, nil,
                                           "__Spaghetorio__/graphics/hr-icons/diode.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-resistor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-capacitor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-coil"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-diode"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-transistor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vacuum-tube"
      },
    },
    prerequisites = {
      "sp-silicon-processing"
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-integrated-circuit",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/mosfet.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/voltage-controller.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-integrated-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-memory-chip"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-mosfet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-voltage-controller"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-variable-frequenzy-drive",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-piezoelectric-sensor",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-silver-solder"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gallium-nitride"
      }
    },
    prerequisites = {
      "sp-gold-processing",
      "sp-palladium-processing",
      "sp-cerium-processing",
      "sp-tellurium-processing",
      "sp-gallium-processing",
      "sp-polyvinyl-fluoride"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-heat-resistant-electronics",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/heat-resistant-electronics.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-heat-resistant-electronics"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-insulated-metal-substrate"
      }
    },
    prerequisites = {
      "sp-polyaniline",
      "sp-boron-crystalls",
      "sp-beryllium-processing",
      "electromagnetic-plant"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-thermoelectric-conversion",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/peltier-cell.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/thermocouple.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-peltier-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-thermocouple"
      },
    },
    prerequisites = {
      "sp-bismuth-telluride",
      "electromagnetic-plant"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-advanced-processing-unit",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/advanced-processing-unit.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-advanced-processing-unit"
      }
    },
    prerequisites = {
      "sp-electronic-science-pack-3"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"sp-computer-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-voltage-regulator-module",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/voltage-regulator-module.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-voltage-regulator-module"
      }
    },
    prerequisites = {
      "sp-computer-science-pack-2"
    },
    unit = {
      count = 200,
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
        {"sp-computer-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-antenna-chip",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/antenna-chip.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-antenna-chip"
      }
    },
    prerequisites = {
      "sp-computer-science-pack-2"
    },
    unit = {
      count = 250,
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
        {"sp-computer-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-semiconductor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/processor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-processor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-circuit-die"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-memory-die"
      }
    },
    prerequisites = {
      "sp-computer-science-pack-2",
      "sp-high-purity-silicon-processing",
      "sp-arsen-processing",
      "sp-rare-metals"
    },
    unit = {
      count = 1000,
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
        {"sp-computer-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-advanced-storage",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/hard-drive.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-empty-research-data-card"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hard-drive"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-phase-change-memory"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-laser-diode"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-germanium-antimony-tellurium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-holmium-cobalt-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-indium-phosphide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-telluride"
      },
    },
    prerequisites = {
      "sp-computer-science-pack-2",
      "sp-antimony-processing",
      "sp-indium-processing",
      "sp-germanium-processing"
    },
    unit = {
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
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-data-cards",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/data-cards.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-empty-insight-data-card"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-empty-experimental-data-card"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-empty-research-data-card"
      },
    },
    prerequisites = {
      "sp-advanced-storage"
    },
    unit = {
      count = 100,
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
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-photovoltaics",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/photovoltaic-cell.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-cadmium-telluride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-copper-indium-gallium-selenide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-photovoltaic-cell"
      }
    },
    prerequisites = {
      "sp-arsen-processing",
      "sp-cadmium-processing",
      "sp-indium-processing",
      "sp-gallium-processing",
      "sp-selenium-processing",
      "sp-optics",
      "sp-acetic-products",
      "sp-polyvinyl-fluoride"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-radioisotope-thermoelectric-generator",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/radioisotope-thermoelectric-generator.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-radioisotope-thermoelectric-generator"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-radioisotope-casing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lead-telluride"
      },
    },
    prerequisites = {
      "space-science-pack",
      "sp-nuclear-science-pack-2"
    },
    unit = {
      count = 500,
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-bio-sample-cryovial",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/bio-sample-cryovial.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bio-sample-cryovial"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-high-density-structure-gel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-croygenic-gel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bio-polymer-mesh"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-biomass",
      },
    },
    prerequisites = {
      "sp-rhodium-alloys",
      "sp-cryostabalized-alloys",
      "sp-kr-bio-processing"
    },
    unit = {
      count = 500,
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
        {"agricultural-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-quantum-computing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/cubit.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-cubit"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-data-plane"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-processor"
      },
    },
    prerequisites = {
      "sp-chemical-science-pack-3",
      "sp-advanced-processing-unit",
      "sp-material-science-pack-3",
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-fabric",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/fabric-1.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-fabric"
      },
    },
    prerequisites = {
      "sp-sodium-hydroxide"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-magnet",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/magnet.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-magnet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-electromagnet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ferrite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ferrite-with-cobalt"
      }
    },
    prerequisites = {
      "sp-electronic-science-pack-1",
      "sp-material-science-pack-1",
      "sp-magnesium-processing",
      "advanced-material-processing-2"
    },
    unit = {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-alkaline-solutions",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_three_icons("__Spaghetorio__/graphics/hr-icons/calcium-hydroxide-solution.png", 256, nil,
                                          "__Spaghetorio__/graphics/hr-icons/sodium-carbonate-solution.png", 256, nil,
                                          "__Spaghetorio__/graphics/hr-icons/potassium-hydroxide-solution.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-carbonate-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-calcium-hydroxide-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-hydroxide-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-hydroxide",
      },
      {
        type = "unlock-recipe",
        recipe = "ammoniacal-solution-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "ice-melting",
      }
    },
    prerequisites = {
      "sp-glycerin",
      "sp-barium-processing",
      "sp-potassium-processing",
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-neodymium-magnet",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/neodymium-magnet.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-neodymium-magnet"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3",
      "sp-kr-atmosphere-condensation"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-heatsink",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/heatsink.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-heatsink"
      },
    },
    prerequisites = {"sp-aluminum-machining"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-phosphorus-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/phosphoric-acid.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/phosphorus.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-phosphorus"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-phosphoric-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sulfamate"
      }
    },
    prerequisites = {
      "chemical-science-pack",
      "sp-kr-atmosphere-condensation"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-perchloric-acid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/perchloric-acid.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-perchloric-acid"
      }
    },
    prerequisites = {
      "chemical-science-pack"
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-glycerin",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/glycerin.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-hypochlorus-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-allyl-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-epichlorohydrin"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-glycerin"
      }
    },
    prerequisites = {
      "sp-propane-products",
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-turbine-parts",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/turbine-rotor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "steam-turbine"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-turbopump"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-turbine-rotor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-turbine-stator"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-turbine-blade"
      },
    },
    prerequisites = {
      "utility-science-pack",
      "sp-rhenium-processing"
    },
    unit = {
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
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-spark-plug",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/spark-plug.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-spark-plug"
      },
    },
    prerequisites = {
      "utility-science-pack"
    },
    unit = {
      count = 100,
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
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-gyroscope",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/gyroscope.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-gyroscope"
      },
    },
    prerequisites = {
      "sp-rhenium-processing"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rocket-engine",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/rocket-engine.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rocket-nozzle"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-fuel-injector"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-combustion-chamber"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rocket-engine"
      },
    },
    prerequisites = {
      "sp-turbine-parts",
      "sp-spark-plug",
      "sp-antimony-processing",
      "sp-ceramic-matrix-composites",
      "tungsten-steel"
    },
    unit = {
      count = 1000,
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
        {"agricultural-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-solid-rocket-motor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/solid-rocket-motor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-solid-rocket-motor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aluminum-powder"
      }
    },
    prerequisites = {
      "utility-science-pack",
      "sp-military-science-pack-2"
    },
    unit = {
      count = 400,
      ingredients = {
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
        {"utility-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-heat-resistant-tile",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/heat-resistant-tile.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-heat-resistant-tile"
      },
    },
    prerequisites = {
      "sp-basic-ceramics",
      "sp-induction-hardening-facility"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-thorium-fuel-rod",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/thorium-fuel-rod.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-thorium-fuel-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-uranium-233-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-uranium-233-with-plutonium-processing"
      },
    },
    prerequisites = {
      "sp-breeder-reactor"
    },
    unit = {
      count = 200,
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
        {"sp-nuclear-science-pack-2", 1},
         {"sp-computer-science-pack-2", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "sp-mox-fuel-rod",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/uranium-oxide.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/plutonium-oxide.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-mox-fuel-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-uranium-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-oxide"
      },
    },
    prerequisites = {
      "sp-thorium-fuel-rod"
    },
    unit = {
      count = 600,
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
        {"sp-nuclear-science-pack-2", 1},
         {"sp-computer-science-pack-2", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "sp-plutonium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/plutonium-240.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-239-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-240-processing"
      },
    },
    prerequisites = {
      "kovarex-enrichment-process",
      "sp-nuclear-waste-processing",
      "sp-production-science-pack-3"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"sp-computer-science-pack-2", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "sp-plutonium-fuel-rod",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/plutonium-fuel-rod.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-239-fuel-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-240-fuel-rod"
      },
    },
    prerequisites = {
      "sp-plutonium-processing",
      "sp-mox-fuel-rod"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"sp-nuclear-science-pack-2", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "sp-nuclear-waste-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/nuclear-waste.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-used-up-fuel-rod-reprocessing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nuclear-waste-processing"
      },
    },
    prerequisites = {
      "sp-nuclear-science-pack-2",
      "sp-kr-advanced-chemistry"
    },
    unit = {
      count = 1000,
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
        {"sp-nuclear-science-pack-2", 1},
        {"sp-computer-science-pack-2", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "sp-advanced-nuclear-waste-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.overlay_small_icon_for_technology("__Spaghetorio__/graphics/hr-icons/nuclear-waste.png", 256,
                                                        "__Spaghetorio__/graphics/hr-icons/plutonium-239.png", 256),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-advanced-nuclear-waste-processing"
      },
    },
    prerequisites = {
      "sp-nuclear-waste-processing",
      "sp-plutonium-fuel-rod",
      "agricultural-science-pack"
    },
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"sp-nuclear-science-pack-2", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "sp-enriched-ores",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/enriched-ores.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      -- iron
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-iron-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-iron-ore-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iron-plate-from-enriched-iron-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iron-beam-from-enriched-iron-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-iron",
      },
      -- copper
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-copper-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-copper-ore-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-copper-plate-from-enriched-copper-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-copper",
      },
      -- aluminum
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-bauxite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-bauxite-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alumina-from-enriched-bauxite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-aluminum",
      },
      -- chromite
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-chromite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-chromite-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-chromium-plate-from-enriched-chromite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-chromite",
      },
      -- magnesium
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-magnesite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-magnesite-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-slab-from-enriched-magnesite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-magnesium",
      },
      -- nickel
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-garnierite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-garnierite-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nickel-ingot-from-enriched-garnierite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-nickel",
      },
      -- lead
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-tinstone",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-tinstone-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tin-ingot-from-enriched-tinstone",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-tinstone",
      },
      -- titanium
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-titanium-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-titanium-ore-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-chloride-from-enriched-titanium-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-titanium",
      },
      -- tungsten
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-tungsten",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-tungsten-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ammonium-paratungstate-from-enriched-tungsten",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-tungsten",
      },
      -- zinc
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-zinc-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-zinc-ore-from-crushed-resource",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-plate-from-enriched-zinc-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-zinc",
      },
      -- holmium
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-holmium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-holmium-from-crushed-resource"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-holmium-solution-from-enriched-holmium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-holmium"
      },
      -- stibnite
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-stibnite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-stibnite-from-crushed-resource"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-antimony-oxide-from-enriched-stibnite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dirty-water-filtration-antimony"
      },

      -- casting
      {
        type = "unlock-recipe",
        recipe = "sp-molten-iron-from-enriched-iron-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molten-copper-from-enriched-copper-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molten-tin-from-enriched-tinstone",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molten-zinc-from-enriched-zinc-ore",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molten-magnesium-from-enriched-magnesite",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molten-nickel-from-enriched-garnierite",
      },
      -- other
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-molybdate",
      },
    },
    prerequisites = {
      "sp-kr-advanced-chemistry"
    },
    unit = {
      count = 1000,
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
        {"sp-computer-science-pack-2", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-basic-alloy-casting",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.create_casting_icon("__Spaghetorio__/graphics/icons/bronze-rod.png",
                                          {"__space-age__/graphics/icons/fluid/molten-copper.png",
                                           "__Spaghetorio__/graphics/icons/molten-tin.png"}),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-casting-bronze"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-casting-brass"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-casting-connecting-rod"
      }
    },
    prerequisites = {
      "foundry"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-intermediate-alloy-casting",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.create_casting_icon("__Spaghetorio__/graphics/icons/aluminum-brass.png",
                                          {"__Spaghetorio__/graphics/icons/molten-aluminum.png",
                                           "__Spaghetorio__/graphics/icons/molten-zinc.png",
                                           "__space-age__/graphics/icons/fluid/molten-copper.png",
                                           "__Spaghetorio__/graphics/icons/molten-magnesium.png"}),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-casting-kovar"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-casting-invar"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-casting-inconel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-casting-duralumin"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-casting-aluminum-brass"
      }
    },
    prerequisites = {
      "sp-basic-alloy-casting",
      "sp-advanced-casting"
    },
    unit = {
      count = 1000,
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
        {"agricultural-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-vulcanic-rock-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_four_icons("__Spaghetorio__/graphics/hr-icons/andesite-1.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/rhyolite-1.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/pumice-1.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/obsidian-1.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-crystallize-lava"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-andesite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-rhyolite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-pumice"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-obsidian"
      }
    },
    prerequisites = {
      "foundry"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-advanced-vulcanic-rock-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/basalt-1.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/scoria-1.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-crystallize-ultramafic-lava"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-basalt"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-scoria"
      }
    },
    prerequisites = {
      "sp-vulcanic-rock-processing",
      "sp-advanced-casting"
    },
    unit = {
      count = 500,
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
        {"agricultural-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-advanced-casting",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/molten-gallium.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/molten-indium.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-molten-gallium-from-lava"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molten-gallium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-casting-gallium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molten-indium-from-lava"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-molten-indium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-casting-indium-ingot"
      },
    },
    prerequisites = {
      "foundation"
    },
    unit = {
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
        {"agricultural-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-superconducting-materials",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/superconductor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "superconductor"
      },
      {
        type = "unlock-recipe",
        recipe = "supercapacitor"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-antimony-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/stibnite-1.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/antimony-pillet.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-antimony-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-antimony-pillet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-antimony-trichloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-antimony-triiodide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-copper-antimony",
      },
    },
    prerequisites = {
      "cryogenic-science-pack"
    },
    unit = {
      count = 250,
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
        {"agricultural-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-barium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/barium-billet.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-barium-sulfamate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-barium-sulfide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-barium-billet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-barium-carbonate"
      },
    },
    prerequisites = {
      "sp-chemical-stager"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-mercury-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/mercury.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-mercury"
      },
    },
    prerequisites = {
      "sp-geological-science-pack-2",
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-bismuth-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/bismuth.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bismuth"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bismuth-from-crushed-tinstone"
      },
    },
    prerequisites = {
      "sp-geological-science-pack-2",
      "sp-chemical-science-pack-2"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-beryllium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/beryllium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-beryllium-fluoride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-beryllium-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-beryllium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-beryllium-from-beryllium-oxide"
      },
    },
    prerequisites = {
      "sp-incinerator"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-boron-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/sodium-borate.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/boron-pillet.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-borate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-boron-pillet"
      },
    },
    prerequisites = {
      "sp-geological-science-pack-2",
      "sp-chemical-science-pack-2"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-boron-crystalls",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/boron-silicade.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-boron-phosphide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-boron-silicade",
      },
    },
    prerequisites = {
      "sp-boron-processing"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-cadmium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/cadmium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-cadmium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cadmium-from-crushed-resource"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-plate-from-zinc-oxide"
      },
    },
    prerequisites = {
      "sp-incinerator"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-gallium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/gallium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-gallium-resin"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gallium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gallium"
      },
    },
    prerequisites = {
      "sp-metallurgic-science-pack-2"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-indium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/indium-ingot.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-indium-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-indium-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sulfuric-acid-from-sulfur-dioxide"
      }
    },
    prerequisites = {
      "sp-metallurgic-science-pack-2",
      "sp-incinerator"
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-selenium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/selenium-pillet.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-selenium-dioxide-from-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-selenium-dioxide-from-crushed-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-selenium-dioxide-from-copper-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-selenium-dioxide-from-crushed-copper"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-selenious-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-selenium-pillet"
      }
    },
    prerequisites = {
      "sp-metallurgic-science-pack-2",
      "sp-incinerator"
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-diborane",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/diborane.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-diborane"
      }
    },
    prerequisites = {
      "sp-boron-processing",
      "sp-kr-fuel-refinery"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-tellurium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/tellurium-hydroxide.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/tellurium-1.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-tellurium-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tellurium"
      },
    },
    prerequisites = {
      "sp-bleach",
      "sp-big-crusher"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-urea",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/urea.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-urea",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-wood-from-urea",
      },
    },
    prerequisites = {
      "sp-sodium-hydroxide",
      "sp-kr-greenhouse"
    },
    unit = {
      count = 125,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-silicon-processing",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/silicon-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-silicon",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-silica",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quartz",
      },
    },
    prerequisites = {
      "sp-sodium-hydroxide",
    },
    unit = {
      count = 125,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-high-purity-silicon-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/high-purity-silicon.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-high-purity-silicon"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-n-type-polysilicon"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-p-type-polysilicon"
      },
    },
    prerequisites = {
      "sp-chemical-science-pack-3",
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"space-science-pack", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-insulation-sheet",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/insulation-sheet.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-insulation-sheet"
      },
    },
    prerequisites = {
      "sp-rubber"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rubber",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/rubber.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rubber"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rubber-pad",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-o-ring",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-seal",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vibration-dampener",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-styrene"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-benzene"
      },
    },
    prerequisites = {
      "sp-filter",
      "sp-phosphorus-processing"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-structural-components-set",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/structural-components-set.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-structural-components-set"
      },
    },
    prerequisites = {
      "sp-rubber"
    },
    unit = {
      count = 25,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-fluid-handling-components-set",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/fluid-handling-components-set.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-fluid-handling-components-set"
      },
    },
    prerequisites = {
      "sp-rubber"
    },
    unit = {
      count = 25,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-nitenol",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/nitenol.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-nitenol"
      },
    },
    prerequisites = {
      "sp-metallurgic-science-pack-3"
    },
    unit = {
      count = 600,
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
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-invar",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/invar.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-invar"
      },
    },
    prerequisites = {
      "production-science-pack"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-composites",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/composites.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "carbon-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-composites"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-epoxy"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-biocrude-oil"
      },
    },
    prerequisites = {
      "sp-glycerin",
      "agriculture"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-crystal-growing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/quasicrystal.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/monocrystal.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-monocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quasicrystal"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-blunagium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/blunagium-bar.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-bar"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-foam"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3",
      "sp-chemical-science-pack-3",
      "sp-production-science-pack-3",
      "sp-geological-science-pack-3",
      "sp-kr-quarry-minerals-extraction"
    },
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-grobgnum-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/grobgnum-bar.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-bar"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-cube"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-slurry"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-slurry-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnumylene"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3",
      "sp-chemical-science-pack-3",
      "sp-production-science-pack-3",
      "sp-geological-science-pack-3",
      "sp-kr-quarry-minerals-extraction"
    },
    unit = {
      count = 1500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-kr-imersium-processing",  -- #ForRegEx# - technology
    mod = "Krastorio2",
    icon = "__Spaghetorio__/graphics/krastorio/technologies/imersium-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-imersium-plate",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-imersium-beam",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-imersium-gear-wheel",
      }
    },
    prerequisites = {
      "sp-material-science-pack-3",
      "sp-chemical-science-pack-3",
      "sp-production-science-pack-3",
      "sp-geological-science-pack-3",
      "sp-kr-quarry-minerals-extraction"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1}
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "sp-rukite-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/rukite-bar.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-bar"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-powder"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3",
      "sp-chemical-science-pack-3",
      "sp-production-science-pack-3",
      "sp-geological-science-pack-3",
      "sp-kr-quarry-minerals-extraction"
    },
    unit = {
      count = 2500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-yemnuth-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/yemnuth-shard.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-yemnuth-shard"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-yemnuth-pearls-from-cerium-and-neodymium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-yemnuth-pearls-from-yttrium-and-lanthanum"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3",
      "sp-chemical-science-pack-3",
      "sp-production-science-pack-3",
      "sp-geological-science-pack-3",
      "sp-kr-quarry-minerals-extraction"
    },
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-helium",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/helium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-helium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-helium-from-atmosphere"
      },
    },
    prerequisites = {
      "cryogenic-science-pack",
    },
    unit = {
      count = 350,
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
        {"agricultural-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-quantum-tech",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/quantum-crystal.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/quantum-foam.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-crystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-foam"
      },
    },
    prerequisites = {
      "sp-blunagium-processing",
      "sp-helium"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-extreme-low-temperature-tech",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/fermium-condensate.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-fermium-condensate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-helium-3-from-helium-and-hydrogen"
      }
    },
    prerequisites = {
      "sp-blunagium-processing"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rocket-control-unit",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/rocket-control-unit.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rocket-control-unit"
      }
    },
    prerequisites = {
      "sp-voltage-regulator-module"
    },
    unit = {
      count = 300,
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
        {"sp-computer-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ion-thruster",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ion-thruster.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ion-thruster"
      }
    },
    prerequisites = {
      "sp-production-science-pack-3"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-computer-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-blunagium-explorer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/blunagium-explorer.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-vortex-core"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-explorer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-rocket"
      },
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-blunagium-rocket-silo"
      -- },
    },
    prerequisites = {
      "sp-extreme-low-temperature-tech",
      "sp-ion-thruster"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-utility-science-pack-3", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-gravitonium",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/gravitonium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-gravitonium"
      }
    },
    prerequisites = {
      "sp-quantum-tech",
      "sp-yemnuth-processing"}
      ,
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rukite-explorer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/rukite-explorer.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-explorer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-rocket"
      },
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-rukite-rocket-silo"
      -- },
    },
    prerequisites = {
      "sp-gravitonium",
      "sp-flux-capacitor",
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-utility-science-pack-3", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-yemnuth-explorer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/yemnuth-explorer.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-plasma-core"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plasma-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plasma-crystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-yemnuth-explorer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-yemnuth-rocket"
      },
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-yemnuth-rocket-silo"
      -- },
    },
    prerequisites = {
      "sp-gravitonium",
      "sp-ion-thruster"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-utility-science-pack-3", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-grobgnum-explorer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/grobgnum-explorer.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bioreactor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-biochip"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-explorer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-rocket"
      },
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-grobgnum-rocket-silo"
      -- },
    },
    prerequisites = {
      "sp-gravitonium",
      "sp-cybernetics"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-utility-science-pack-3", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-heavy-ball-bearing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/heavy-bearing.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-heavy-ball-bearing"
      },
    },
    prerequisites = {
      "sp-aluminum-alloys",
      "sp-niobium-alloys",
      "sp-crystallizer",
      "sp-induction-hardening-facility",
      "sp-logistic-science-pack-2"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-kevlar",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/kevlar.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kevlar"
      },
    },
    prerequisites = {
      "sp-chemical-science-pack-2"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-electrode",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/electrode.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-electrode"
      },
    },
    prerequisites = {
      "sp-basic-ceramics",
      "sp-platinum-processing",
      "sp-chemical-science-pack-2"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-flux-capacitor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/flux-capacitor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-flux-capacitor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gamma-radiation-source"
      },
    },
    prerequisites = {
      "sp-chronomatter"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-power-regulation",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/amplifier.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-relay"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-transformer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-power-supply"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-amplifier"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dynamo"
      },
    },
    prerequisites = {
      "sp-aluminum-treatment",
      "sp-mercury-processing"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-compressor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/compressor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-compressor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-high-pressure-tank"
      },
    },
    prerequisites = {
      "sp-kevlar",
      "sp-titanium-alloys"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-advanced-gearbox",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/heavy-gearbox.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-gearshaft",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-heavy-gearbox"
      },
    },
    prerequisites = {
      "sp-heavy-ball-bearing",
      "sp-molybdenum-processing"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-big-electric-engine-unit",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/big-electric-engine.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-big-electric-engine-unit"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vacuum-pump"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-electromagnetic-brake"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnetic-coupling"
      }
    },
    prerequisites = {
      "production-science-pack",
      "sp-intermediate-ceramics"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-kr-lithium-sulfur-battery",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/krastorio/technologies/lithium-sulfur-battery.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-lithium-sulfur-battery",
      },
      {
        type = "unlock-recipe",
        recipe = "electrolyte",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-manganese-chloride",
      }
    },
    prerequisites = {
      "sp-antimony-processing",
      "sp-propane-products",
      "electromagnetic-plant",
      "sp-carbon-high-tech"
    },
    unit = {
      count = 300,
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
        {"agricultural-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-high-pressure-fan",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/high-pressure-fan.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-high-pressure-fan"
      },
    },
    prerequisites = {
      "sp-turbine-parts",
      "sp-control-unit"
    },
    unit = {
      count = 150,
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
        {"sp-computer-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-light-emitting-diode",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/light-emitting-diode.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-light-emitting-diode"
      },
    },
    prerequisites = {
      "sp-electronic-science-pack-2"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-optical-sensor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/optical-sensor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-optical-sensor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-infrared-sensor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cmos"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-photodiode"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-infrared-light-emitting-diode"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aluminum-gallium-arsenide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-mercury-cadmium-telluride"
      },
    },
    prerequisites = {
      "sp-optics",
      "sp-tellurium-processing",
      "sp-cadmium-processing",
      "sp-germanium-processing",
      "sp-arsen-processing",
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-actuator",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/actuator.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-actuator"
      },
    },
    prerequisites = {
      "advanced-circuit",
      "lubricant"
    },
    unit = {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-chronomatter",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/chronomatter.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-chronomatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-chronalyte"
      },
    },
    prerequisites = {
      "sp-rukite-processing",
      "sp-nuclear-science-pack-3",
      "sp-computer-science-pack-3"
    },
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-propane-products",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/methyl-tert-butyl-ether.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-propane"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-propylene"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-methyl-tert-butyl-ether"
      }
    },
    prerequisites = {
      "sp-filter",
      "sp-chemical-stager"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ethylene-products",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ethylene-dichloride.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ethylene-and-propane"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ethylene-dichloride"
      },
    },
    prerequisites = {
      "sp-filter",
      "sp-chemical-science-pack-2"
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-iodine-chemistry",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/iodethene.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-hydrogen-iodide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iodethene"
      }
    },
    prerequisites = {
      "sp-iodine-processing",
      "sp-ethylene-products"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-acetic-products",  -- #ForRegEx# - technology
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/vinyl-acetate.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/ethylene-vinyl-acetate.png", 256, nil),
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-acetic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vinyl-acetate",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ethylene-vinyl-acetate",
      },
    },
    prerequisites = {
      "sp-kr-fuel-refinery",
      "sp-ethylene-products"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-polyvinyl-fluoride",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/polyvinyl-fluoride.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-hydrogen-fluoride",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vinyl-fluoride",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-polyvinyl-fluoride",
      },
    },
    prerequisites = {
      "sp-ethylene-products",
      "sp-geological-science-pack-2"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-polyaniline",  -- #ForRegEx# - technology
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/aniline.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/polyaniline.png", 256, nil),
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-aniline",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aniline-from-nitrogen",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-polyaniline",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ammonium-sulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ammonium-persulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hydrogen-peroxide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-peroxymonosulfuric-acid",
      },
    },
    prerequisites = {
      "sp-oxidizer",
      "sp-chemical-science-pack-2",
      "sp-geological-science-pack-2"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-sodium-hydroxide",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/sodium-hydroxide.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-hydroxide-from-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-hydroxide-from-liquid-sodium"
      },
    },
    prerequisites = {"sp-sodium-processing"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-vinyl-chloride",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/vinyl-chloride.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-vinyl-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-insulated-wire"
      },
    },
    prerequisites = {
      "sp-rubber",
      "sp-electronic-science-pack-1"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-benzyltrimethylammonium-chloride",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/benzyltrimethylammonium-chloride.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-trialkylamine",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-methyl-chloride",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-toluene",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-benzyl-chloride",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-benzyltrimethylammonium-chloride",
      },
    },
    prerequisites = {
      "sp-iodine-chemistry",
      "sp-incinerator"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-control-unit",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/control-unit.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-control-unit"
      },
    },
    prerequisites = {
      "sp-optical-sensor",
      "sp-voltage-regulator-module"
    },
    unit = {
      count = 400,
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
        {"sp-computer-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-cybernetics",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/cybernetics.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-micro-frame"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-micro-machine"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cybernetics"
      },
    },
    prerequisites = {
      "sp-neodymium-magnet",
      "sp-material-science-pack-3",
      "sp-advanced-processing-unit"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"sp-computer-science-pack-2", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-nanobot",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/nanobot.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-nanobot"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nanowire"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nanoflex"
      }
    },
    prerequisites = {
      "sp-quantum-tech"
    },
    unit = {
      count = 1200,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-speed-module-4",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/technology/speed-module-4.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-speed-module-4"
      }
    },
    prerequisites = {
      "sp-gravitational-devices"
    },
    unit = {
      count = 500,
      ingredients = {
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
        {"space-science-pack", 1}
        -- Krastorio: {"sp-matter-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-efficiency-module-4",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/technology/efficiency-module-4.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-efficiency-module-4"
      }
    },
    prerequisites = {
      "sp-advanced-bio-processors"
    },
    unit = {
      count = 500,
      ingredients = {
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
        {"space-science-pack", 1}
        -- Krastorio: {"sp-matter-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-productivity-module-4",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/technology/productivity-module-4.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-productivity-module-4"
      }
    },
    prerequisites = {
      "sp-frictionless-joint",
      "sp-alien-processing"
    },
    unit = {
      count = 500,
      ingredients = {
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
        {"space-science-pack", 1}
        -- Krastorio: {"sp-matter-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-kr-portable-generator",  -- #ForRegEx# - technology
    icons = core_util.technology_icon_constant_equipment("__Spaghetorio__/graphics/krastorio/technologies/portable-generator.png"),
    icon_size = 256,
    icon_mipmaps = 4,
    upgrade = false,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-portable-generator",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-turbocharger",
      },
    },
    prerequisites = {
      "battery-equipment",
    },
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "sp-personal-roboport-mk3-equipment",  -- #ForRegEx# - technology
    icon_size = 128,
    icon = "__Spaghetorio__/graphics/equipment/hr-personal-roboport-mk3-equipment.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-personal-roboport-mk3-equipment"
      }
    },
    prerequisites = {
      "sp-advanced-processing-unit",
      "sp-neodymium-magnet"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-military-science-pack-3", 1},
        {"production-science-pack", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-personal-roboport-mk3-equipment",  -- #ForRegEx# - technology
    icon_size = 128,
    icon = "__Spaghetorio__/graphics/equipment/hr-personal-roboport-mk3-equipment.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-personal-roboport-mk3-equipment"
      }
    },
    prerequisites = {
      "sp-advanced-processing-unit",
      "sp-neodymium-magnet"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-military-science-pack-3", 1},
        {"production-science-pack", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-personal-roboport-mk4-equipment",  -- #ForRegEx# - technology
    icon_size = 128,
    icon = "__Spaghetorio__/graphics/equipment/hr-personal-roboport-mk4-equipment.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-personal-roboport-mk4-equipment"
      }
    },
    prerequisites = {
      "sp-frictionless-joint",
      "sp-alien-processing"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-military-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"sp-space-science-pack-3", 1},
        {"sp-utility-science-pack-3", 1},
        {"space-science-pack", 1},
        -- {"sp-matter-science-pack", 1},
        -- {"sp-advanced-science-pack", 1},
        -- {"sp-singularity-science-pack", 1}
      },
      time = 30
    },
  },
  ------------------------------------------------------------------------------
  -- MARK: Military
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-intermediate-military",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__base__/graphics/technology/military.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "shotgun"
      },
      {
        type = "unlock-recipe",
        recipe = "shotgun-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "slowdown-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "grenade"
      }
    },
    prerequisites = {
      "military",
      "steel-processing",
      "sp-tin-processing"
    },
    unit = {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  ------------------------------------------------------------------------------
  -- MARK: alien compounds
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-alien-compounds",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/imersite-rukite-beam.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-rukite-compound"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-yemnuth-compound"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-rukite-compound"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-imersite-rukite-beam"
      }
    },
    prerequisites = {
      "sp-space-science-pack-3"
    },
    unit = {
      count = 800,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-advanced-alien-compounds",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/blunagium-yemnuth-beam.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-rukite-beam"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-yemnuth-beam"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-charged-slab"
      }
    },
    prerequisites = {
      "sp-production-science-pack-3"
    },
    unit = {
      count = 1000,
      ingredients = {
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
        {"space-science-pack", 1}
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  ------------------------------------------------------------------------------
  -- MARK: intermediate alien products
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-kr-ai-core",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/ai-core.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ai-core"
      },
    },
    prerequisites = {
      "sp-kr-imersium-processing",
      "sp-flux-capacitor"
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-matter-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-kr-energy-control-unit",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/energy-control-unit.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-energy-control-unit"
      },
    },
    prerequisites = {
      "sp-kr-imersium-processing",
      "sp-flux-capacitor"
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-matter-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-gravitational-devices",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/boson-blossom.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-solenoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-boson-blossom"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gravitational-wave-bridge"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gravitational-wave-interferometer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gravitational-wave-splitter"
      }
    },
    prerequisites = {
      "sp-space-science-pack-3",
      "sp-kr-automation"
    },
    unit = {
      count = 1500,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-advanced-bio-processors",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/neuropulse-module.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bio-capacitor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-neural-fusion-card"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-neuropulse-module"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-synaptic-core-chip"
      }
    },
    prerequisites = {
      "sp-space-science-pack-3",
      "sp-kr-automation"
    },
    unit = {
      count = 750,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-rukite-gearbox",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/rukite-gearbox.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-gear-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-gearbox"
      }
    },
    prerequisites = {
      "sp-space-science-pack-3",
      "sp-kr-automation"
    },
    unit = {
      count = 400,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-quantum-realm",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/quantized-orbital-flower.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-collapsed-orbitals"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-entangled-leptons"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gluon-orb"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-neutrino-stream-source"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantized-orbital-flower"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quark-sphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-trapped-quantum-energy"
      }
    },
    prerequisites = {
      "sp-space-science-pack-3"
    },
    unit = {
      count = 2000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-quantum-realm-stabilization",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/quantum-tube.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-femto-navigator"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-orbital-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantized-compute-unit"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-tube"
      }
    },
    prerequisites = {
      "sp-quantum-realm",
      "sp-alien-compounds",
      "sp-gravitational-devices"
    },
    unit = {
      count = 1200,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-frictionless-joint",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/frictionless-joint.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-frictionless-bearing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-frictionless-joint"
      }
    },
    prerequisites = {
      "sp-rukite-gearbox",
      "sp-gravitational-devices",
      "sp-alien-compounds"
    },
    unit = {
      count = 200,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-alien-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/alpha-wave-tray-array.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-wave-tray-array"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-radiation-channeler"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ultra-violet-processor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-graphene-chip"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-holo-grip-controller"
      }
    },
    prerequisites = {
      "sp-rukite-gearbox",
      "sp-gravitational-devices",
      "sp-alien-compounds",
      "sp-quantum-realm"
    },
    unit = {
      count = 1000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  ------------------------------------------------------------------------------
  -- MARK: advanced alien products
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-advanced-quantum-technology",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/subatomic-condenser.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-relativity-compute-unit"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-stream-supply"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-switch"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-subatomic-condenser"
      }
    },
    prerequisites = {
      "sp-advanced-alien-compounds"
    },
    unit = {
      count = 3000,
      ingredients = {
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
        -- {"sp-matter-science-pack", 1},
        -- {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-extreme-heat-source",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/extreme-heat-source.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ultra-durable-ceramics"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hot-stone"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-extreme-heat-source"
      }
    },
    prerequisites = {
      "sp-advanced-alien-compounds"
    },
    unit = {
      count = 1000,
      ingredients = {
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
        -- {"sp-matter-science-pack", 1},
        -- {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-high-temperature-superconducting",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/proton-neutron-superconductor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-proton-neutron-frame"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-proton-neutron-superconductor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantized-protons"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-capacitor"
      }
    },
    prerequisites = {
      "sp-advanced-quantum-technology",
      "sp-extreme-heat-source"
    },
    unit = {
      count = 2500,
      ingredients = {
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
        -- {"sp-matter-science-pack", 1},
        -- {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-alien-crystal-refinment",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/blunagium-imersite-slab.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/radiant-glass.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-imersite-slab"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-radiant-glass"
      }
    },
    prerequisites = {
      "sp-advanced-quantum-technology",
      "sp-extreme-heat-source"
    },
    unit = {
      count = 1600,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-star-stabilization",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/miniaturized-star-core-stabilizer.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-lossless-power-connector"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-miniaturized-star-core-stabilizer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-miniaturized-stellar-bridge"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-neutrino-charger"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sideral-seal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-energy-channeler"
      }
    },
    prerequisites = {
      "sp-advanced-quantum-technology",
      "sp-extreme-heat-source",
      "sp-alien-crystal-refinment"
    },
    unit = {
      count = 2000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-information-cube",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/information-cube.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-extreme-data-transfer-controller"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-information-cube"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-universal-storage-drive"
      }
    },
    prerequisites = {
      "sp-alien-crystal-refinment",
      "sp-advanced-bio-processors"
    },
    unit = {
      count = 4000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-alien-genetics",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/evolution-cell-container.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-vitality-prism"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-evolution-cell-container"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-evolution-pulse-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-optics"
      }
    },
    prerequisites = {
      "sp-space-science-pack-3"
    },
    unit = {
      count = 1500,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-sideral-computing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/sideral-compute-core.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sideral-compute-core"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quark-gluon-plasma-container"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quark-gluon-probe"
      }
    },
    prerequisites = {
      "sp-information-cube"
    },
    unit = {
      count = 3000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-relativity-condenser",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/relativity-condenser.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-relativity-condenser"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hadron-beam-charger"
      },
    },
    prerequisites = {
      "sp-star-stabilization"
    },
    unit = {
      count = 1500,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-omni-pulse-generator",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/omni-pulse-generator.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-interdimensional-prism-chamber"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-omni-pulse-generator"
      },
    },
    prerequisites = {
      "sp-relativity-condenser",
      "sp-sideral-computing"
    },
    unit = {
      count = 4000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-dark-matter",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/dark-matter-mining-satellite.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-dark-energy-harvester"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dark-matter-field-generator"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dark-matter-mining-satellite"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dark-matter"
      }
    },
    prerequisites = {
      "sp-sideral-computing"
    },
    unit = {
      count = 2000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-antimatter",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/antimatter-engine.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-antimatter-engine"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-antimatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dark-energy"
      }
    },
    prerequisites = {
      "sp-dark-matter"
    },
    unit = {
      count = 2000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 30
    },
  },
  ------------------------------------------------------------------------------
  -- Acrosphere conversion recipes
  -- MARK: Acrosphere technology
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-basic-acrosphere-conversion",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_four_icons("__Spaghetorio__/graphics/hr-icons/blunagium-acrosphere-1.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/grobgnum-acrosphere-1.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/rukite-acrosphere-1.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/yemnuth-acrosphere-1.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-to-grobgnum-acrosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-to-rukite-acrosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-to-yemnuth-acrosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-to-yemnuth-acrosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-yemnuth-to-blunagium-acrosphere"
      },
    },
    prerequisites = {
      "sp-blunagium-explorer",
      "sp-grobgnum-explorer",
      "sp-rukite-explorer",
      "sp-yemnuth-explorer",
      "sp-kr-matter-processing"
    },
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"sp-utility-science-pack-3", 1},
        {"sp-space-science-pack-3", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-upgrade-acrosphere-conversion",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.icon.combine_four_icons("__Spaghetorio__/graphics/hr-icons/blunagium-acrosphere-2.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/grobgnum-acrosphere-2.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/rukite-acrosphere-2.png", 256, nil,
                                         "__Spaghetorio__/graphics/hr-icons/yemnuth-acrosphere-2.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-upgrade-blunagium-acrosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-upgrade-grobgnum-acrosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-upgrade-rukite-acrosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-upgrade-yemnuth-acrosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-corrupted-acrosphere-1"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-corrupted-acrosphere-2"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-corrupted-acrosphere-3"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-corrupted-acrosphere-4"
      }
    },
    prerequisites = {"sp-basic-acrosphere-conversion"},
    unit = {
      count = 2500,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-acroproduct",  -- #ForRegEx# - technology
    icon_size = 256,
    icons =  util.icon.combine_three_icons("__Spaghetorio__/graphics/hr-icons/acrocrystal.png", 256, nil,
                                           "__Spaghetorio__/graphics/hr-icons/acromatter.png", 256, nil,
                                           "__Spaghetorio__/graphics/hr-icons/acrovoid.png", 256, nil),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-acrovoid"
      },
    },
    prerequisites = {
      "sp-upgrade-acrosphere-conversion"
    },
    unit = {
      count = 10000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-raw-resource-from-acrocrystal",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = 
    {
      {icon = "__Spaghetorio__/graphics/arrows/acroproduct-recipes-arrow-256x256.png", icon_size = 256, scale = 2},
      {icon = "__Spaghetorio__/graphics/hr-icons/acrocrystal.png", icon_size = 256}
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-iron-ore-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-copper-ore-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-stone-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-coal-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bauxite-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-chromite-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-calcite-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-ore-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesite-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-garnierite-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tinstone-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tungsten-ore-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-ore-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zirconium-ore-from-acrocrystal"
      }
    },
    prerequisites = {
      "sp-acroproduct"
    },
    unit = {
      count = 1000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-enriched-resource-from-acromatter",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = 
    {
      {icon = "__Spaghetorio__/graphics/arrows/acroproduct-recipes-arrow-256x256.png", icon_size = 256, scale = 2},
      {icon = "__Spaghetorio__/graphics/hr-icons/acromatter.png", icon_size = 256}
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-bauxite-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-chromite-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-titanium-ore-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-magnesite-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-garnierite-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-tinstone-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-tungsten-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-zinc-ore-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-copper-ore-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-iron-ore-from-acromatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-enriched-rare-metals-from-acromatter"
      }
    },
    prerequisites = {
      "sp-acroproduct"
    },
    unit = {
      count = 1000,
      ingredients = {
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
        -- {"space-science-pack", 1},
        -- {"sp-matter-science-pack", 1},
        -- {"advanced-tech-card", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-processed-resource-from-acrovoid",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = 
    {
      {icon = "__Spaghetorio__/graphics/arrows/acroproduct-recipes-arrow-256x256.png", icon_size = 256, scale = 2},
      {icon = "__Spaghetorio__/graphics/hr-icons/acrovoid.png", icon_size = 256}
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-uranium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-calcite-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cerium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-yttrium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lanthanum-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-neodymium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-fluorine-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gold-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-graphite-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-iridium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-leadstone-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-palladium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-phosphorus-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-platinum-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-silver-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tellurium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zircon-from-acrovoid"
      }
    },
    prerequisites = {
      "sp-acroproduct"
    },
    unit = {
      count = 1000,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  ------------------------------------------------------------------------------
  -- MARK: Buildings
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-crusher",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/technology/crusher-horizontal.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "crusher"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-coal",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-coke",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sand"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-stone-brick-from-sand"
      },
    },
    prerequisites = {
      "automation"
    },
    research_trigger = {
      type = "craft-item",
      item = "assembling-machine-1",
      count = 1
    },
  },
  {
    type = "technology",
    name = "sp-kr-greenhouse",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/greenhouse.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-greenhouse",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-seed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "wood-processing",
      },
    },
    prerequisites = {
        "fluid-handling",
        "landfill"
    },
    unit = {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-herbarium",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/greenhouse.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-herbarium",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ventilator",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sprinkler",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potato",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-wheat",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vanadyl-sulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-permanganate-solution",
      }
    },
    prerequisites = {
      "sp-potassium-processing",
      "sp-manganese-processing",
      "sp-kr-greenhouse"
    },
    unit = {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-kr-wind-turbine",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/icons/entities/wind-turbine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-wind-turbine",
      },
    },
    prerequisites = {
        "sp-steel-machining"
    },
    unit = {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-kr-fluids-chemistry",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/fluids-chemistry.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-filtration-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-kr-electrolysis-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-kr-water-electrolysis",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hydrogen-chloride",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-wood-fuel",
      },
    },
    prerequisites = {
      "chemical-science-pack"
    },
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-kr-fluid-excess-handling",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/fluid-burner.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-fluid-burner",
      },
    },
    prerequisites = {
      "sp-kr-fluids-chemistry",
      "electronics",
      "fluid-handling"
    },
    unit = {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-atmosphere-condensation",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/atmospheric-condenser.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-atmospheric-condenser",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plate-heat-exchanger"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hydrogen",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-oxygen",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nitrogen",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-water-from-atmosphere",
      },
      {
        type = "unlock-recipe",
        recipe = "steam-condensation",  -- recipe from space age
      },
    },
    prerequisites = {
      "sp-geological-science-pack-1"
    },
    unit = {
      count = 175,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-alloy-forge",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/alloy-forge.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-alloy-forge",
      },
    },
    prerequisites = {
      "advanced-material-processing-2",
      "metallurgic-science-pack",
      "concrete"
    },
    unit = {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-arc-furnace",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/arc-furnace.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-arc-furnace",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plasmacutter",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-improved-tungsten-plate-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-improved-platinum-smelting",
      }
    },
    prerequisites = {
      "sp-electrode",
      "sp-titanium-alloys",
      "sp-heat-resistant-electronics",
      "sp-electromagnetic-science-pack-2"
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-breeder-reactor",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/breeder-reactor.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-breeder-reactor",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-heavy-water",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-deuterium",
      },
    },
    prerequisites = {
      "sp-nuclear-science-pack-2",
      "sp-nuclear-waste-processing",
      "cryogenic-science-pack"
    },
    unit = {
      count = 1000,
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
        {"sp-nuclear-science-pack-2", 1},
         {"sp-computer-science-pack-2", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-chemical-stager",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/chemical-stager.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-chemical-stager",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-condenser-coil",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-precipitator",
      }
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-nickel-alloys",
      "sp-pressure-fluid"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-crystallizer",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/crystallizer.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-crystallizer",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-nitride",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-silicon-nitride",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-diamond-saw",
      }
    },
    prerequisites = {
      "sp-material-science-pack-2",
      "sp-kr-atmosphere-condensation",
      "sp-diamond"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-quantum-stabilizer",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/quantum-stabilizer.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-stabilizer",
      },
    },
    prerequisites = {
      "sp-material-science-pack-3"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-pathogen-lab",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/pathogen-lab.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-pathogen-lab",
      },
    },
    prerequisites = {
      "sp-material-science-pack-3"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-manufacturer",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/manufacturer.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-manufacturer",
      },
    },
    prerequisites = {
      "electromagnetic-science-pack",
      "sp-vanadium-alloys"
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-cyclotron",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/cyclotron.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-cyclotron",
      },
    },
    prerequisites = {
      "sp-material-science-pack-3",
      "sp-electromagnetic-science-pack-3"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-freezer",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/freezer.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-freezer",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-water-freezing",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cold-coolant",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cooling-coolant",
      }
    },
    prerequisites = {
      "biochamber",
      "sp-compressor",
      "agricultural-science-pack"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-gravity-assembler",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/gravity-assembler.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-gravity-assembler",
      },
    },
    prerequisites = {
      "sp-logistic-science-pack-3"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-core-extractor",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/core-extractor.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-core-extractor",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-drilling-fluid"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-3",
      "sp-ruthenium-alloys"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-oxidizer",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/oxidizer.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-oxidizer",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sulfur-dioxide",
      }
    },
    prerequisites = {
      "sp-kr-fuel-refinery"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-induction-hardening-facility",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/induction-hardening-facility.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-induction-hardening-facility",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-high-power-solenoid"
      }
    },
    prerequisites = {
      "sp-aluminum-alloys",
      "sp-titanium-machining",
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-bigger-fluid-tanks",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/steel-fluid-tanks.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-medium-storage-tank",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-large-storage-tank",
      },
    },
    prerequisites = {"sp-brass"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-big-crusher",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/crusher.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-big-crusher",
      },
    },
    prerequisites = {
      "tungsten-carbide"
    },
    unit = {
      count = 150,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-bio-processing",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/bio-lab.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-genetics-facility",
      },
    },
    prerequisites = {
      "space-science-pack"
    },
    unit = {
      count = 400,
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-advanced-chemistry",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/advanced-chemistry.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-advanced-chemical-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nitric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nitric-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nitrogen-dioxide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ventilator",
      }
    },
    prerequisites = {
      "sp-compressor",
      "sp-optical-sensor",
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-aqua-regia",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/aqua-regia.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-aqua-regia",
      },
    },
    prerequisites = {
      "sp-kr-advanced-chemistry",
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-triethylamide",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/triethylamide.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-triethylamide",
      },
    },
    prerequisites = {
      "agricultural-science-pack",
      "sp-kr-advanced-chemistry"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-cellulose",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/cellulose.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-cellulose",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-chlorotriethylamine",
      },
    },
    prerequisites = {
      "sp-triethylamide"
    },
    unit = {
      count = 400,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-sodium-periodate",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/sodium-periodate.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-periodate",
      },
    },
    prerequisites = {
      "sp-kr-advanced-chemistry"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-methyl-sulfate",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/methyl-sulfate.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-methyl-sulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sulfur-trioxide",
      },
    },
    prerequisites = {
      "agricultural-science-pack",
      "sp-kr-advanced-chemistry"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-hydroxypropanal",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/hydroxypropanal.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-hydroxypropanal",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-acrolein",
      },
    },
    prerequisites = {
      "space-science-pack"
    },
    unit = {
      count = 250,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-lysine",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/lysine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-lysine-from-iron-bacteria",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lysine-from-copper-bacteria",
      },
    },
    prerequisites = {
      "sp-kr-bio-processing",
      "bacteria-cultivation"
    },
    unit = {
      count = 250,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-carboxymethyllysine",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/carboxymethyllysine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-carboxymethyllysine",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-glyoxal",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-glyoxilic-acid",
      },
    },
    prerequisites = {
      "sp-lysine"
    },
    unit = {
      count = 300,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-tetrahydrofuran",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/tetrahydrofuran.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-tetrahydrofuran",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-butanediol",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-butynediol",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-acetylene",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-formaldehyde",
      },
    },
    prerequisites = {
      "space-science-pack",
    },
    unit = {
      count = 400,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-chloroacetic-acid",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/chloroacetic-acid.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-chloroacetic-acid",
      },
    },
    prerequisites = {
      "space-science-pack",
    },
    unit = {
      count = 200,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-ethylenediaminetetraacetic-acid",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/ethylenediaminetetraacetic-acid.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-ethylenediaminetetraacetic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ethylenediamine",
      },
    },
    prerequisites = {
      "sp-chloroacetic-acid",
    },
    unit = {
      count = 450,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-carboxymethyldiphenylphosphine",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/carboxymethyldiphenylphosphine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-carboxymethyldiphenylphosphine",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-dimethylphosphine",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-trimethylphosphine",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-powder",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bromomethane",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-methylmagnesium-bromide-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-trimethylphosphine",
      },
    },
    prerequisites = {
      "sp-bromine-processing",
      "sp-chloroacetic-acid",
      "sp-tetrahydrofuran"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-ammonia-tetra-ethers",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/tetramethylammonium.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-tetrapropylammonium",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tetraethylammonium",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tetramethylammonium",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ethyl-iodide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-propyl-bromide",
      },
    },
    prerequisites = {
      "sp-chemical-science-pack-3",
      "sp-bromine-processing",
      "sp-hydroxypropanal",
      "sp-triethylamide"
    },
    unit = {
      count = 600,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-bis-2-ethylhexyl-phosphoric-acid",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/bis-2-ethylhexyl-phosphoric-acid.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-bis-2-ethylhexyl-phosphoric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-2-ethylhexanol",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-2-ethylhex-2-enal",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-phosphorus-pentoxide",
      },
    },
    prerequisites = {
      "sp-chemical-science-pack-3",
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-neon",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/neon.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-neon-from-atmosphere"
      },
    },
    prerequisites = {
      "sp-krypton-rich-asteroid",
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-argon",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/argon.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-argon-from-methane-ice"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-argon-from-atmosphere"
      },
    },
    prerequisites = {
      "space-platform",
    },
    unit = {
      count = 350,
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
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-xenon",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/xenon.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-xenon-from-methane-ice"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-xenon-from-atmosphere"
      },
    },
    prerequisites = {
      "sp-chemical-science-pack-3",
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-radon",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/radon.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-radon-from-atmosphere"
      -- },
    },
    prerequisites = {
      "sp-nuclear-science-pack-3",
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-chloropropanol",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/chloropropanol.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-chloropropanol",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-propanediol",
      },
    },
    prerequisites = {
      "sp-chemical-science-pack-3",
      "sp-hydroxypropanal"
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-sulfopropyl-bromide",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/sulfopropyl-bromide.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sulfopropyl-bromide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sulfopropyl-alcohol",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hydrobromic-acid-from-sodium-bromide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hydrobromic-acid-from-potassium-bromide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-bisulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-sulfite-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-sulfite-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sulfur-trioxide-from-sodium-bisulfate",
      },
    },
    prerequisites = {
      "sp-bromine-processing",
      "sp-chloropropanol"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-sulfopropyl-metacrylate-potassium-salt-solution",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/sulfopropyl-metacrylate-potassium-salt-solution.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-sulfopropyl-metacrylate-potassium-salt-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-methacrylic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-acetone-cyanohydrin",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-acetone",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cumene-hydroperoxide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-methacrylamide-sulfate",
      },
    },
    prerequisites = {
      "sp-sulfopropyl-bromide",
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-ion-chromatography-for-rhenium-and-palladium",  -- #ForRegEx# - technology
    icons = util.icon.combine_two_icons("__Spaghetorio__/graphics/hr-icons/rhenium.png", 256, nil,
                                        "__Spaghetorio__/graphics/hr-icons/palladium.png", 256, nil),
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-rhenium-ion-chromatography",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-palladium-from-tetraammidepalladium-dichloride",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tetraammidepalladium-dichloride",
      },
    },
    prerequisites = {
      "sp-carboxymethyldiphenylphosphine",
      "sp-carboxymethyllysine",
      "sp-ammonia-tetra-ethers"
    },
    unit = {
      count = 300,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-teflon",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/teflon.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-teflon",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tetrafluoroethylene",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-perfluorooctanoic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-chloroform",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-octane",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-perfluorooctane",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-heptadecafluoro-1-iodooctane",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-chlorodifluoromethane",
      },
    },
    prerequisites = {
      "sp-kr-advanced-chemistry",
      "cryogenic-science-pack"
    },
    unit = {
      count = 400,
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
        {"sp-computer-science-pack-2", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-coast-water",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/hr-icons/coast-water.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-coast-water",
      }
    },
    prerequisites = {
      "sp-kr-advanced-chemistry",
      "agricultural-science-pack"
    },
    unit = {
      count = 100,
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
        {"sp-computer-science-pack-2", 1},
        {"agricultural-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-reinforced-plates",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/reinforced-plates.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-black-reinforced-plate",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-kr-white-reinforced-plate",
      }
    },
    prerequisites = {
      "sp-automation-science-pack-3"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-kr-quantum-computer",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/quantum-computer.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-quantum-computer",
      }
    },
    prerequisites = {
      "sp-quantum-computing"
    },
    unit = {
      count = 1500,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-singularity-lab",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/singularity-lab.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-singularity-lab",
      }
    },
    prerequisites = {
      "sp-utility-science-pack-3"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-singularity-beacon",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/singularity-beacon.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-singularity-beacon",
      }
    },
    prerequisites = {
      "sp-utility-science-pack-3"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-stellar-sinkhole-forge",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/intergalactic-transceiver.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-stellar-sinkhole-forge",
      }
    },
    prerequisites = {
      "sp-uniformity-science-pack"
    },
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-incinerator",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/gas-power-station.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-incinerator",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-catalytic-converter",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-methane",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-carbon-monoxide",
      },
      {
        type = "unlock-recipe",
        recipe = "burnt-spoilage",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-wood",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-coal",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-coke",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-carbon",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-methane",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-ethylene",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-petroleum-gas",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-light-oil",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-heavy-oil",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-sulfuric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-incinerate-sulfur",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-methane-from-atmosphere",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-carbon-dioxide-from-atmosphere",
      }
    },
    prerequisites = {
      "sp-palladium-processing",
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-advanced-solar-panel",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/advanced-solar-panel.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-advanced-solar-panel",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-kr-energy-storage",
      },
    },
    prerequisites = {
      "sp-advanced-processing-unit",
      "sp-production-science-pack-3"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1}
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "sp-kr-particle-accelerator",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/fusion-energy.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-particle-accelerator",
      },
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-kr-advanced-steam-turbine",
      -- },
      -- {
      --   type = "unlock-recipe",
      --   recipe = krastorio.recipes.changed_names["heavy-water"] or "heavy-water",
      -- },
      -- {
      --   type = "unlock-recipe",
      --   recipe = krastorio.recipes.changed_names["tritium"] or "tritium",
      -- },
      -- {
      --   type = "unlock-recipe",
      --   recipe = krastorio.recipes.changed_names["empty-dt-fuel"] or "empty-dt-fuel",
      -- },
      -- {
      --   type = "unlock-recipe",
      --   recipe = krastorio.recipes.changed_names["dt-fuel"] or "dt-fuel",
      -- },
    },
    prerequisites = {
      "processing-unit",
      -- "sp-kr-lithium-processing",
      "nuclear-power",
      "utility-science-pack",
      "low-density-structure",
      "kovarex-enrichment-process",
      -- "sp-superconductor",
      "sp-crystal-growing",
      "sp-neodymium-magnet",
      "sp-nuclear-science-pack-3"
    },
    unit = {
      count = 1500,
      ingredients = {
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
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "sp-kr-fuel-refinery",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/fuel-refinery.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-fuel-refinery",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-fuel",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hydrogen-cyanide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-potassium-cyanide",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-biomethanol",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-biomethanol-from-wood",
      }
    },
    prerequisites = {
      "sp-ethylene-products",
      "sp-incinerator",
      "biochamber"
    },
    unit = {
      count = 125,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-research-server",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/research-server.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "sp-optics",
      "sp-power-regulation",
      "sp-titanium-alloys",
      "sp-electrode",
      "sp-thermoelectric-conversion",
      "sp-metallurgic-science-pack-2",
      "sp-electromagnetic-science-pack-2"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-research-server",
      },
    },
    unit = {
      count = 350,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 30,
    },
  },
  {
      type = "technology",
      name = "sp-kr-quarry-minerals-extraction",  -- #ForRegEx# - technology
      icon = "__Spaghetorio__/graphics/krastorio/technologies/quarry-drill.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "sp-kr-quarry-drill",
        },
        {
          type = "unlock-recipe",
          recipe = "sp-imersite-powder",
        },
        {
          type = "unlock-recipe",
          recipe = "sp-imersite-crystal",
        },
      },
      prerequisites = {
        "big-mining-drill",
        "sp-automation-science-pack-3",
        "sp-geological-science-pack-3"
      },
      unit = {
        count = 350,
        ingredients = {
          {"sp-automation-science-pack-3", 1},
          {"sp-logistic-science-pack-2", 1},
          {"sp-material-science-pack-2", 1},
          {"sp-chemical-science-pack-2", 1},
          {"sp-geological-science-pack-3", 1},
          {"production-science-pack", 1},
          {"sp-electronic-science-pack-2", 1},
          {"utility-science-pack", 1},
          {"sp-computer-science-pack-2", 1}
        },
        time = 60,
      },
    },
    {
      type = "technology",
      name = "sp-kr-advanced-furnace",  -- #ForRegEx# - technology
      icon = "__Spaghetorio__/graphics/krastorio/technologies/advanced-furnace.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "sp-kr-advanced-furnace",
        },
        {
          type = "unlock-recipe",
          recipe = "sp-blunagium-plate",
        },
        {
          type = "unlock-recipe",
          recipe = "sp-grobgnum-plate",
        },
        {
          type = "unlock-recipe",
          recipe = "sp-rukite-plate",
        },
        {
          type = "unlock-recipe",
          recipe = "sp-yemnuth-plate",
        },
      },
      prerequisites = {
        "sp-kr-quarry-minerals-extraction"
      },
      unit = {
        count = 250,
        ingredients = {
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
          {"sp-matter-science-pack", 1},
          {"sp-advanced-science-pack", 1}
        },
        time = 45,
      },
    },
    {
    type = "technology",
    name = "sp-kr-automation",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/advanced-assembling-machine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-advanced-assembling-machine",
      },
    },
    prerequisites = {
      "automation-3",
      "sp-kr-imersium-processing",
      -- "sp-kr-energy-control-unit",
      -- "sp-kr-advanced-tech-card",
      -- "sp-kr-enriched-ores",
      "sp-kr-advanced-furnace"
    },
    unit = {
      count = 500,
      ingredients = {
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
        -- {"sp-matter-science-pack", 1},
        -- {"advanced-tech-card", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-matter-processing",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/matter-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-matter-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-kr-matter-assembler",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-kr-stabilizer-charging-station",
      },
      -- TODO: Add recipes
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-matter-stabilizer",
      -- },
      -- {
      --   type = "unlock-recipe",
      --   recipe = "sp-charge-stabilizer",
      -- },
    },
    prerequisites = {
      "automation-3",
      "sp-utility-science-pack-3"
    },
    unit = {
      count = 500,
      ingredients = {
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
        {"sp-matter-science-pack", 1}
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "sp-kr-antimatter-reactor",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/antimatter-reactor.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-antimatter-reactor",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-empty-antimatter-fuel-cell",
      },
      {
        type = "unlock-recipe",
        recipe =  "sp-charged-antimatter-fuel-cell",
      },
    },
    prerequisites = {
      "sp-uniformity-science-pack",
    },
    unit = {
      count = 2000,
      ingredients = {
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
        {"sp-matter-science-pack", 1},
        {"sp-advanced-science-pack", 1},
        {"sp-singularity-science-pack", 1},
        {"sp-uniformity-science-pack", 1}
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "sp-kr-superior-inserters",  -- #ForRegEx# - technology
    icon = "__Spaghetorio__/graphics/krastorio/technologies/superior-inserters.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-kr-superior-inserter",
      },
      {
        type = "unlock-recipe",
        recipe = "sp-kr-superior-long-inserter",
      }
    },
    prerequisites = {"sp-frictionless-joint"},
    unit = {
      count = 500,
      ingredients = {
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
        {"sp-matter-science-pack", 1},
        {"sp-advanced-science-pack", 1}
      },
      time = 45,
    },
  },
  ------------------------------------------------------------------------------
  -- MARK: Space locations
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-dysprosium-rich-asteroid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/dysprosium-rich-asteroid.png",
    effects = {
      {
        type = "unlock-space-location",
        space_location = "sp-dysprosium-rich-asteroid",
        use_icon_overlay_constant = true
      }
    },
    prerequisites = {
      "sp-ammonia-tetra-ethers",
      "sp-sulfopropyl-metacrylate-potassium-salt-solution",
      "sp-bis-2-ethylhexyl-phosphoric-acid"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ruthenium-rich-asteroid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ruthenium-rich-asteroid.png",
    effects = {
      {
        type = "unlock-space-location",
        space_location = "sp-ruthenium-rich-asteroid",
        use_icon_overlay_constant = true
      }
    },
    prerequisites = {
      "space-science-pack"
    },
    unit = {
      count = 1000,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-terbium-rich-asteroid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/terbium-rich-asteroid.png",
    effects = {
      {
        type = "unlock-space-location",
        space_location = "sp-terbium-rich-asteroid",
        use_icon_overlay_constant = true
      }
    },
    prerequisites = {
      "sp-ammonia-tetra-ethers"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-ytterbium-rich-asteroid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/ytterbium-rich-asteroid.png",
    effects = {
      {
        type = "unlock-space-location",
        space_location = "sp-ytterbium-rich-asteroid",
        use_icon_overlay_constant = true
      }
    },
    prerequisites = {
      "sp-chemical-science-pack-3"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-iridium-rich-asteroid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/iridium-rich-asteroid.png",
    effects = {
      {
        type = "unlock-space-location",
        space_location = "sp-iridium-rich-asteroid",
        use_icon_overlay_constant = true
      }
    },
    prerequisites = {
      "sp-geological-science-pack-3",
      "sp-dysprosium-rich-asteroid",
      "sp-ruthenium-rich-asteroid",
      "sp-terbium-rich-asteroid",
      "sp-ytterbium-rich-asteroid",
      "sp-carboxymethyllysine",
      "sp-cellulose",
    },
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
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
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-osmium-rich-asteroid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/osmium-rich-asteroid.png",
    effects = {
      {
        type = "unlock-space-location",
        space_location = "sp-osmium-rich-asteroid",
        use_icon_overlay_constant = true
      }
    },
    prerequisites = {
      "sp-geological-science-pack-3",
      "sp-dysprosium-rich-asteroid",
      "sp-ruthenium-rich-asteroid",
      "sp-terbium-rich-asteroid",
      "sp-ytterbium-rich-asteroid",
      "sp-carboxymethyldiphenylphosphine",
      "sp-cellulose",
    },
    unit = {
      count = 2000,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
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
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-krypton-rich-asteroid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/krypton-rich-asteroid.png",
    effects = {
      {
        type = "unlock-space-location",
        space_location = "sp-krypton-rich-asteroid",
        use_icon_overlay_constant = true
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-krypton-asteroid-chunk"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-melting-clathrate-hydrate-ice"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-olivine"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-from-crushing-olivine"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-crushing-pyroxenem"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-from-crushing-pyroxenem"
      }
    },
    prerequisites = {
      "sp-dysprosium-rich-asteroid",
      "sp-ruthenium-rich-asteroid",
      "sp-terbium-rich-asteroid",
      "sp-ytterbium-rich-asteroid"
    },
    unit = {
      count = 1200,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-promethium-rich-asteroid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/promethium-rich-asteroid.png",
    effects = {
      {
        type = "unlock-space-location",
        space_location = "sp-promethium-rich-asteroid",
        use_icon_overlay_constant = true
      }
    },
    prerequisites = {
      "sp-krypton-rich-asteroid",
      "sp-iridium-rich-asteroid",
      "sp-osmium-rich-asteroid"
    },
    unit = {
      count = 5000,
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
        {"sp-computer-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  ------------------------------------------------------------------------------
  -- MARK: Science packs
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-electronic-science-pack-1",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/electronic-science-pack-1.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-electronic-science-pack-1"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-electronic-components-set"
      },
    },
    prerequisites = {
      "sp-electronic-components"
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-geological-science-pack-1",  -- #ForRegEx# - technology
    icon_size = 64,
    icon = "__Spaghetorio__/graphics/krastorio/icons/cards/basic-tech-card.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-geological-science-pack-1"
      },
    },
    prerequisites = {
      "oil-processing",
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-material-science-pack-1",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/material-science-pack-1.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-material-science-pack-1"
      },
    },
    prerequisites = {"sp-aluminum-processing"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-automation-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/automation-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-automation-science-pack-2"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-biusart-lab"
      },
    },
    prerequisites = {
      "lamp",
      "sp-manufacturer",
      "sp-kr-portable-generator"
    },
    unit = {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-logistic-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/logistic-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-logistic-science-pack-2"
      },
    },
    prerequisites = {
      "robotics",
      "automobilism",
      "railway",
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-military-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/military-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-military-science-pack-2"
      },
    },
    prerequisites = {
      "sp-logistic-science-pack-2",
      "modular-armor",
      "military-3"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-chemical-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/chemical-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-chemical-science-pack-2"
      },
    },
    prerequisites = {
      "sp-logistic-science-pack-2",
      "sp-crystallizer",
      "sp-heat-resistant-tile"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-electronic-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 64,
    icon = "__Spaghetorio__/graphics/krastorio/icons/cards/utility-tech-card.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-electronic-science-pack-2"
      },
    },
    prerequisites = {
      "sp-integrated-circuit"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"production-science-pack", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-geological-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/geological-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-geological-science-pack-2"
      },
    },
    prerequisites = {
      "sp-alkaline-solutions"
    },
    unit = {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-material-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/material-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-material-science-pack-2"
      },
    },
    prerequisites = {
      "sp-titanium-processing"
    },
    unit = {
      count = 300,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-metallurgic-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/metallurgic-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-metallurgic-science-pack-2"
      },
    },
    prerequisites = {
      "sp-cobalt-alloys",
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-electromagnetic-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/electromagnetic-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-electromagnetic-science-pack-2"
      },
    },
    prerequisites = {
      "electromagnetic-plant"
    },
    unit = {
      count = 250,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"electromagnetic-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-computer-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/computer-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-computer-science-pack-2"
      },
    },
    prerequisites = {
      "processing-unit",
      "sp-heat-resistant-electronics"
    },
    unit = {
      count = 500,
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
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-nuclear-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/nuclear-science-pack-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-nuclear-science-pack-2"
      },
    },
    prerequisites = {
      "nuclear-power"
    },
    unit = {
      count = 250,
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
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-automation-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/automation-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-automation-science-pack-3"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gear-mechanism-experimental-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-hydraulic-control-insight-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-machine-research-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-mechatronics-insight-data"
      },
    },
    prerequisites = {
      "biolab"
    },
    unit = {
      count = 250,
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-logistic-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/logistic-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-logistic-science-pack-3"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-drone-routing-insight-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-inventory-control-insight-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-transport-efficiency-insight-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-railway-research-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-assembly-research-data"
      }
    },
    prerequisites = {
      "sp-automation-science-pack-3",
      "logistic-system",
      "turbo-transport-belt"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-military-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/military-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-military-science-pack-3"
      },
    },
    prerequisites = {
      "sp-logistic-science-pack-3"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-military-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-chemical-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/chemical-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-chemical-science-pack-3"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ion-chromatography-experimental-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-element-separation-experimental-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-inert-compounds-experimental-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-reactivity-experimental-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-catalyst-research-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-organic-chemistry-insight-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-inorganic-chemistry-insight-data"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-3",
      "sp-tetrahydrofuran"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-electronic-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/electronic-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-electronic-science-pack-3"
      },
    },
    prerequisites = {
      "sp-geological-science-pack-3",
      "sp-chemical-science-pack-3",
      "sp-logistic-science-pack-3"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-geological-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/geological-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-geological-science-pack-3"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-mineral-insight-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ore-insight-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-mining-research-data"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vulcanic-research-data"
      }
    },
    prerequisites = {
      "sp-xenotime-processing",
      "sp-djerfisherite-processing",
      "sp-bromine-processing"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
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
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-material-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/material-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-material-science-pack-3"
      },
    },
    prerequisites = {
      "sp-chemical-science-pack-3",
      "sp-geological-science-pack-3",
      "sp-ceramic-matrix-composites"
    },
    unit = {
      count = 500,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-production-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/production-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-production-science-pack-3"
      },
    },
    prerequisites = {
      "sp-electromagnetic-science-pack-3",
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-3", 1},
        {"sp-electromagnetic-science-pack-3", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-metallurgic-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/metallurgic-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-metallurgic-science-pack-3"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3",
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-electromagnetic-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/electromagnetic-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-electromagnetic-science-pack-3"
      },
    },
    prerequisites = {
      "sp-electronic-science-pack-3",
      "sp-metallurgic-science-pack-3"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-3", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-biological-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/biological-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-biological-science-pack-3"
      },
    },
    prerequisites = {
      "sp-material-science-pack-3",
      "sp-logistic-science-pack-3"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-cryogenic-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/cryogenic-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-cryogenic-science-pack-3"
      },
    },
    prerequisites = {
      "sp-metallurgic-science-pack-3",
      "sp-logistic-science-pack-3"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-3", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-space-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/astronomical-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-space-science-pack-3"
      },
    },
    prerequisites = {
      "sp-utility-science-pack-3",
      "sp-blunagium-explorer",
      "sp-grobgnum-explorer",
      "sp-rukite-explorer",
      "sp-yemnuth-explorer"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-3", 1},
        {"sp-electromagnetic-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-utility-science-pack-3", 1},
        {"sp-cryogenic-science-pack-3", 1},
        {"sp-biological-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-computer-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/computer-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-computer-science-pack-3"
      },
    },
    prerequisites = {
      "sp-production-science-pack-3",
      "sp-cryogenic-science-pack-3",
      "sp-quantum-computing"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-3", 1},
        {"sp-electromagnetic-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"sp-cryogenic-science-pack-3", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-nuclear-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/nuclear-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-nuclear-science-pack-3"
      },
      -- alpha decay
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-polonium-213"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-astatine-213"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-astatine-217"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-francium-217"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-francium-221"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-actinium-221"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-actinium-225"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-thorium-225"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-thorium-229"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-uranium-229"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-uranium-233"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-uranium-236"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-neptunium-233"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-plutonium-239"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-alpha-decay-experimental-data-from-plutonium-240"
      },
      -- beta plus decay
      {
        type = "unlock-recipe",
        recipe = "sp-beta-plus-decay-experimental-data-from-protactinium-232"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-beta-plus-decay-experimental-data-from-neptunium-236"
      },
      -- beta minus decay
      {
        type = "unlock-recipe",
        recipe = "sp-beta-minus-decay-experimental-data-from-bismuth-213"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-beta-minus-decay-experimental-data-from-radium-221"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-beta-minus-decay-experimental-data-from-actinium-232"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-beta-minus-decay-experimental-data-from-protactinium-229"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-beta-minus-decay-experimental-data-from-protactinium-236"
      },
    },
    prerequisites = {
      "sp-production-science-pack-3",
      "sp-cryogenic-science-pack-3",
      "sp-advanced-nuclear-waste-processing"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-3", 1},
        {"sp-electromagnetic-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"sp-cryogenic-science-pack-3", 1},
        {"agricultural-science-pack", 1},
        {"sp-computer-science-pack-2", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "sp-utility-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/utility-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-utility-science-pack-3"
      }
    },
    prerequisites = {
      "sp-computer-science-pack-3",
      "sp-biological-science-pack-3"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-3", 1},
        {"sp-electromagnetic-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"utility-science-pack", 1},
        {"sp-cryogenic-science-pack-3", 1},
        {"sp-biological-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-nuclear-science-pack-2", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-matter-science-pack",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/matter-science-pack-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-matter-science-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-matter-research-data"
      }
    },
    prerequisites = {
      "sp-nuclear-science-pack-3",
      "sp-space-science-pack-3"
    },
    unit = {
      count = 750,
      ingredients = {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-metallurgic-science-pack-3", 1},
        {"sp-electromagnetic-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-utility-science-pack-3", 1},
        {"sp-cryogenic-science-pack-3", 1},
        {"sp-biological-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"sp-space-science-pack-3", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-optimization-science-pack",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/krastorio/technologies/optimization-tech-card.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-optimization-science-pack"
      }
    },
    prerequisites = {
      "sp-matter-science-pack"
    },
    unit = {
      count = 750,
      ingredients = {
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
        {"sp-matter-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-advanced-science-pack",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/krastorio/technologies/advanced-tech-card.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-advanced-science-pack"
      }
    },
    prerequisites = {
      "sp-optimization-science-pack"
    },
    unit = {
      count = 750,
      ingredients = {
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
        {"sp-matter-science-pack", 1},
        {"sp-optimization-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-singularity-science-pack",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/krastorio/technologies/singularity-tech-card.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-singularity-science-pack"
      }
    },
    prerequisites = {
      "sp-advanced-science-pack"
    },
    unit = {
      count = 750,
      ingredients = {
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
        {"sp-matter-science-pack", 1},
        {"sp-optimization-science-pack", 1},
        {"sp-advanced-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sp-uniformity-science-pack",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghetorio__/graphics/hr-icons/uniformity-science-pack.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sp-uniformity-science-pack"
      },
    },
    prerequisites = {
      "sp-omni-pulse-generator",
      "sp-antimatter",
    },
    unit = {
      count = 2500,
      ingredients = {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 30
    },
  },
  ------------------------------------------------------------------------------
  --- MARK: Infinite technologies
  ------------------------------------------------------------------------------
  {
    type = "technology",
    name = "sp-mining-productivity-10",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects = {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {
      "sp-geological-science-pack-2",
      "mining-productivity-3"
    },
    unit = {
      count_formula = "500*(L - 9)",
      ingredients =
      {
        {"sp-automation-science-pack-2", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-2", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    },
    max_level = 24,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-mining-productivity-25",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects = {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {
      "utility-science-pack",
      "sp-mining-productivity-10"
    },
    unit = {
      count_formula = "750*(L - 24)",
      ingredients =
      {
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
      },
      time = 60
    },
    max_level = 49,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-mining-productivity-50",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects = {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {
      "sp-geological-science-pack-3",
      "sp-mining-productivity-25"
    },
    unit = {
      count_formula = "1000*(L - 49)",
      ingredients =
      {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 60
    },
    max_level = 74,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-mining-productivity-75",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects = {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {
      "sp-geological-science-pack-3",
      "sp-mining-productivity-50"
    },
    unit = {
      count_formula = "1000*(L - 74)",
      ingredients =
      {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-utility-science-pack-3", 1}
      },
      time = 60
    },
    max_level = 99,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-mining-productivity-100",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects = {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {
      "promethium-science-pack",
      "sp-mining-productivity-75"
    },
    unit = {
      count_formula = "1000*(L - 74)",
      ingredients =
      {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"space-science-pack", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-utility-science-pack-3", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-worker-robots-storage-4",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/worker-robots-storage.png"),
    effects = {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {
      "worker-robots-storage-3"
    },
    unit = {
      count_formula = "((L-3)^2)*1000",
      ingredients =
      {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 60
    },
    max_level = 5,
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-worker-robots-storage-6",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/worker-robots-storage.png"),
    effects = {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {
      "sp-worker-robots-storage-4"
    },
    unit = {
      count_formula = "((L-4)^2)*1000",
      ingredients =
      {
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
        {"sp-uniformity-science-pack", 1},
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-toolbelt-2",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/toolbelt.png"),
    effects = {
      {
        modifier = 20,
        type = "character-inventory-slots-bonus"
      }
    },
    prerequisites = {
      "chemical-science-pack",
      "sp-electronic-science-pack-1"
    },
    unit = {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-toolbelt-3",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/toolbelt.png"),
    effects = {
      {
        modifier = 20,
        type = "character-inventory-slots-bonus"
      }
    },
    prerequisites = {
      "sp-toolbelt-2"
    },
    unit = {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-toolbelt-4",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/toolbelt.png"),
    effects = {
      {
        modifier = 20,
        type = "character-inventory-slots-bonus"
      }
    },
    prerequisites = {
      "sp-toolbelt-3"
    },
    unit = {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-toolbelt-5",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/toolbelt.png"),
    effects = {
      {
        modifier = 20,
        type = "character-inventory-slots-bonus"
      }
    },
    prerequisites = {
      "sp-toolbelt-4",
      "utility-science-pack"
    },
    unit = {
      count = 1000,
      ingredients =
      {
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
      },
      time = 60
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-toolbelt-6",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/toolbelt.png"),
    effects = {
      {
        modifier = 20,
        type = "character-inventory-slots-bonus"
      }
    },
    prerequisites = {
      "sp-toolbelt-5"
    },
    unit = {
      count = 2000,
      ingredients =
      {
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
      },
      time = 60
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-toolbelt-7",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/toolbelt.png"),
    effects = {
      {
        modifier = 20,
        type = "character-inventory-slots-bonus"
      }
    },
    prerequisites = {
      "sp-toolbelt-6",
      "sp-utility-science-pack-3"
    },
    unit = {
      count_formula = "((L-6)^2)*1000+1000",
      ingredients =
      {
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
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
  },
  {
    type = "technology",
    name = "follower-robot-count-6",
    icons = core_util.technology_icon_constant_followers("__base__/graphics/technology/follower-robots.png"),
    effects = {
      {
        type = "maximum-following-robots-count",
        modifier = 25
      }
    },
    prerequisites = {
      "follower-robot-count-5",
      "sp-space-science-pack-3"
    },
    unit = {
      ingredients =
      {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-3", 1},
        {"sp-electronic-science-pack-3", 1},
        {"sp-geological-science-pack-3", 1},
        {"sp-material-science-pack-3", 1},
        {"sp-military-science-pack-3", 1},
        {"sp-computer-science-pack-3", 1},
        {"sp-production-science-pack-3", 1},
        {"sp-nuclear-science-pack-3", 1},
        {"sp-space-science-pack-3", 1},
        {"sp-utility-science-pack-3", 1},
        {"space-science-pack", 1}
        -- Krastorio: {"sp-advanced-science-pack", 1}
        -- Krastorio: {"sp-matter-science-pack", 1}
      },
      time = 30,
      count_formula = "(1.5^(L-6))*1000"
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-inserter-capacity-bonus-8",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    effects = {
      {
        type = "inserter-stack-size-bonus",
        modifier = 2
      },
      {
        type = "bulk-inserter-capacity-bonus",
        modifier = 2
      }
    },
    prerequisites = {
      "inserter-capacity-bonus-7"
    },
    unit = {
      count_formula = "((L-7)^2)*5000",
      ingredients =
      {
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
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
      },
      time = 60
    },
    max_level = 10,
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-inserter-capacity-bonus-11",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    effects = {
      {
        type = "inserter-stack-size-bonus",
        modifier = 2
      },
      {
        type = "bulk-inserter-capacity-bonus",
        modifier = 2
      }
    },
    prerequisites = {
      "sp-inserter-capacity-bonus-8"
    },
    unit = {
      count_formula = "((L-7)^2)*5000",
      ingredients =
      {
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
        {"sp-uniformity-science-pack", 1},
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-braking-force-8",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/braking-force.png"),
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.15
      }
    },
    prerequisites = {
      "braking-force-7"
    },
    unit = {
      count_formula = "((L-7)^2)*1000",
      ingredients =
      {
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
        {"sp-uniformity-science-pack", 1},
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-research-speed-7",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
    effects = {
      {
        type = "laboratory-speed",
        modifier = 0.6
      }
    },
    prerequisites = {
      "research-speed-6"
    },
    unit = {
      count_formula = "(L-6)*1000",
      ingredients =
      {
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
        {"sp-uniformity-science-pack", 1},
        -- Krastorio: {"sp-matter-science-pack", 1},
        -- Krastorio: {"sp-advanced-science-pack", 1},
        -- Krastorio: {"sp-singularity-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-m-d"
  },
  {
    type = "technology",
    name = "sp-transport-belt-capacity-3",  -- #ForRegEx# - infinite-technology
    localised_description = {"technology-description.belt-capacity"},
    icons = core_util.technology_icon_constant_stack_size("__space-age__/graphics/technology/transport-belt-capacity.png"),
    effects = {
      {
        type = "belt-stack-size-bonus",
        modifier = 1
      },
      {
        type = "inserter-stack-size-bonus",
        modifier = 2
      }
    },
    prerequisites = {"sp-kr-superior-inserters"},
    unit = {
      count = 10000,
      ingredients =
      {
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
        {"sp-matter-science-pack", 1},
        {"sp-advanced-science-pack", 1}
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-transport-belt-capacity-4",  -- #ForRegEx# - infinite-technology
    localised_description = {"technology-description.belt-capacity"},
    icons = core_util.technology_icon_constant_stack_size("__space-age__/graphics/technology/transport-belt-capacity.png"),
    effects = {
      {
        type = "belt-stack-size-bonus",
        modifier = 1
      },
      {
        type = "inserter-stack-size-bonus",
        modifier = 2
      }
    },
    prerequisites = {
      "sp-transport-belt-capacity-3",
      "sp-inserter-capacity-bonus-8"
    },
    unit = {
      count = 40000,
      ingredients =
      {
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
        {"sp-uniformity-science-pack", 1},
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-physical-projectile-damage-1",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-1.png"),
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.1
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.1
      }
    },
    prerequisites = {"military"},
    unit = {
      count_formula = "L*10",
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    max_level = 2,
  },
  {
    type = "technology",
    name = "sp-physical-projectile-damage-3",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-1.png"),
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.1
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.1
      }
    },
    prerequisites = {
      "sp-physical-projectile-damage-1",
      "logistic-science-pack"
    },
    unit = {
      count_formula = "L*15",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    max_level = 4,
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-physical-projectile-damage-5",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-1.png"),
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      }
    },
    prerequisites = {
      "sp-physical-projectile-damage-3",
      "military-science-pack"
    },
    unit = {
      count_formula = "(L-4)*20",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    max_level = 8,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-physical-projectile-damage-9",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-1.png"),
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      }
    },
    prerequisites = {
      "sp-physical-projectile-damage-5",
      "chemical-science-pack"
    },
    unit = {
      count_formula = "(L-8)*50",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 60
    },
    max_level = 12,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-physical-projectile-damage-13",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-2.png"),
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 0.9
      }
    },
    prerequisites = {
      "sp-physical-projectile-damage-9",
      "metallurgic-science-pack"
    },
    unit = {
      count_formula = "(L-12)*100",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 60
    },
    max_level = 20,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-physical-projectile-damage-21",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-2.png"),
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 1.3
      }
    },
    prerequisites = {
      "sp-physical-projectile-damage-13",
      "sp-military-science-pack-2",
      "sp-electromagnetic-science-pack-2"
    },
    unit = {
      count_formula = "(L-20)*250",
      ingredients =
      {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-military-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    max_level = 30,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-physical-projectile-damage-31",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-2.png"),
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 1
      }
    },
    prerequisites = {
      "sp-physical-projectile-damage-21",
      "sp-military-science-pack-3"
    },
    unit = {
      count_formula = "(L-30)*500",
      ingredients =
      {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-military-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-weapon-shooting-speed-1",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-1.png"),
    effects = {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.1
      }
    },
    prerequisites = {"military"},
    unit = {
      count_formula = "L*10",
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    max_level = 2,
  },
  {
    type = "technology",
    name = "sp-weapon-shooting-speed-3",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-1.png"),
    effects = {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      }
    },
    prerequisites = {
      "sp-weapon-shooting-speed-1",
      "logistic-science-pack"
    },
    unit = {
      count_formula = "L*15",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    max_level = 4,
    upgrade = true,
  },
  {
    type = "technology",
    name = "sp-weapon-shooting-speed-5",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-2.png"),
    effects = {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 0.5
      }
    },
    prerequisites = {
      "sp-weapon-shooting-speed-3",
      "military-science-pack"
    },
    unit = {
      count_formula = "(L-4)*20",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    max_level = 8,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-weapon-shooting-speed-9",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-2.png"),
    effects = {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.3
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.3
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 0.7
      }
    },
    prerequisites = {
      "sp-weapon-shooting-speed-5",
      "chemical-science-pack"
    },
    unit = {
      count_formula = "(L-8)*50",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 60
    },
    max_level = 12,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-weapon-shooting-speed-13",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-3.png"),
    effects = {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.3
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 0.8
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 0.9
      }
    },
    prerequisites = {
      "sp-weapon-shooting-speed-9",
      "metallurgic-science-pack"
    },
    unit = {
      count_formula = "(L-12)*100",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 60
    },
    max_level = 20,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-weapon-shooting-speed-21",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-3.png"),
    effects = {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 1.5
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 1.3
      }
    },
    prerequisites = {
      "sp-weapon-shooting-speed-13",
      "sp-military-science-pack-2",
      "sp-electromagnetic-science-pack-2"
    },
    unit = {
      count_formula = "(L-20)*250",
      ingredients =
      {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-military-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    max_level = 30,
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-weapon-shooting-speed-31",  -- #ForRegEx# - infinite-technology
    icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-3.png"),
    effects = {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 1.5
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 1.3
      }
    },
    prerequisites = {
      "sp-weapon-shooting-speed-21",
      "sp-military-science-pack-3"
    },
    unit = {
      count_formula = "(L-30)*500",
      ingredients =
      {
        {"sp-automation-science-pack-3", 1},
        {"sp-logistic-science-pack-3", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-military-science-pack-3", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-metallurgic-science-pack-2", 1},
        {"sp-electromagnetic-science-pack-2", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "sp-additional-cargo-landing-pad",  -- #ForRegEx# - infinite-technology
    icon_size = 256,
    icon_mipmaps = 4,
    icons = core_util.technology_icon_constant_stack_size("__space-age__/graphics/technology/space-platform.png"),
    -- icons = core_util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-3.png"),
    effects = {
      {
        type = "cargo-landing-pad-count",
        modifier = 1
      }
    },
    prerequisites = {
      "space-science-pack"
    },
    unit = {
      count_formula = "L*500",
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
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
})
