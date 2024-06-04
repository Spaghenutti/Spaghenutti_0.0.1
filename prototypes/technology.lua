local util = require("data-util")

data:extend({
  {
    type = "technology",
    name = "sp-copper-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/copper-tube.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-copper-tube"
      }
    },
    unit =
    {
      count = 2,
      ingredients = {{"basic-tech-card", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-iron-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/technology/hr-iron-gear-wheel.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-gear-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bolts-from-iron-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-machined-parts-from-iron-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-spring"
      }
    },
    unit =
    {
      count = 2,
      ingredients = {{"basic-tech-card", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-tin-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    -- icon = "__Spaghenutti__/graphics/hr-icons/tin-and-lead.png",
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/tin-ingot.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/lead-slab.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-tin-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tin-and-lead"
      },
    },
    unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-basic-solder",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/solder.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-solder"
      }
    },
    prerequisites = { "sp-tin-processing" },
    unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-basic-alloy",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/bronze-rod.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-bronze-rod"
      },
    },
    prerequisites = { "sp-tin-processing" },
    unit =
    {
      count = 25,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-steel-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/connecting-rod.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-connecting-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bolts-from-steel-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-machined-parts-from-steel-plate"
      },
    },
    prerequisites = {"steel-processing", "sp-basic-alloy"},
    unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-aluminum-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/aluminum-sheet.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-alumina"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aluminum-sheet"
      }
    },
    prerequisites = {"logistic-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-aluminum-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/aluminum-frame.png",
    effects =
    {
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
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-aluminum-treatment",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/anodized-aluminum.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-anodized-aluminum"
      }
    },
    prerequisites = {"sp-aluminum-processing", "chemical-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-coal-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/graphite-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-coke"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-graphite"
      },
    },
    prerequisites = {"automation-science-pack"},
    unit =
    {
      count = 50,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-zinc-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/zinc-sulfate-1.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/zinc-plate.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-zinc-plate"
      },
    },
    prerequisites = {"chemical-science-pack", "sp-material-science-pack-1"},
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-brass",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/brass.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-brass"
      }
    },
    prerequisites = {"sp-zinc-processing"},
    unit =
    {
      count = 50,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  -- update technologies below
  {
    type = "technology",
    name = "sp-carbon-high-tech",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/carbon-nanotubes.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/graphene.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-carbon-nanotubes"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-graphene"
      },
    },
    prerequisites = {"sp-material-science-pack-2"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-cement",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/cement.png",
    effects =
    {
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
      },
    },
    prerequisites = {
      "chemical-science-pack",
      "sp-geological-science-pack-1"
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-crucible",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/crucible.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-crucible"
      }
    },
    prerequisites = {"sp-cement"},
    unit =
    {
      count = 50,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-calcium-and-fluorine",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/fluorine.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/calcium.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-calcium-and-fluorine"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-glass-from-calcium"
      },
    },
    prerequisites = {"sp-cement"},
    unit =
    {
      count = 50,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-titanium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/titanium-ingot.png",
    effects =
    {
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
    },
    prerequisites = {"chemical-science-pack", "sp-material-science-pack-1"},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-titanium-machining",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/titanium-frame.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/titanium-plate.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-frame"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-plate"
      },
    },
    prerequisites = {"sp-titanium-processing"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-basic-ceramics",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/ceramics-1.png",
    effects =
    {
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
    prerequisites = {"logistic-science-pack", "sp-cement", "sp-coal-processing"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-advanced-ceramics",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/titanium-carbide.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/tungsten-carbide.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-carbide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tungsten-carbide"
      },
    },
    prerequisites = {"sp-titanium-processing", "sp-basic-ceramics"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-zirconium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/zirconium-rod.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-zirconium-rod"
      },
    },
    prerequisites = {"sp-material-science-pack-1"},
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalzed
    type = "technology",
    name = "sp-niobium-and-tantalum",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/niobium-billet.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/tantalum-billet.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-niobium-powder"
      },
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
        recipe = "sp-aqueous-niobium-tantalum"
      },
    },
    prerequisites = {"sp-calcium-and-fluorine", "sp-material-science-pack-1"},
    unit =
    {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"sp-material-science-pack-1", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-capacitor-from-niobium-and-tantalum",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_three_icons("__Spaghenutti__/graphics/hr-icons/capacitor.png", 256, nil,
                                     "__Spaghenutti__/graphics/hr-icons/tantalum-billet.png", 256, nil,
                                     "__Spaghenutti__/graphics/hr-icons/niobium-billet.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-capacitor-from-niobium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-capacitor-from-tantalum"
      },
    },
    prerequisites = {"sp-niobium-and-tantalum"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-tungsten-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/tungsten-slab.png",
    effects =
    {
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
        recipe = "sp-tungsten-slab"
      },
    },
    prerequisites = {"sp-sodium-processing"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalzed
    type = "technology",
    name = "sp-nickel-and-cobalt",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/nickel-ingot.png", 256, {-20, 20},
                                   "__Spaghenutti__/graphics/hr-icons/cobalt-billet.png", 256, {20, -20}),
    effects =
    {
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
        recipe = "sp-nickel-ingot"
      }
    },
    prerequisites = {"advanced-material-processing"},
    unit =
    {
      count = 50,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-noble-metals",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_five_icons("__Spaghenutti__/graphics/hr-icons/silver.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/palladium.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/gold.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/iridium.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/platinum.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-gold"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-platinum-iridium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-silver-palladium"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-palladium"
      },
    },
    prerequisites = {
      "sp-nickel-and-cobalt",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 2},
        {"sp-material-science-pack-2", 2}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-catalyst-from-palladium",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/catalyst.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-catalyst-from-palladium"
      }
    },
    prerequisites = {"sp-noble-metals"},
    unit =
    {
      count = 50,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-stainless-steel-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/stainless-steel.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/chromium-plate.png", 256, nil),
    effects =
    {
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
        recipe = "sp-chromium-plate"
      },
    },
    prerequisites = {
      "logistic-science-pack",
      "sp-nickel-and-cobalt"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-aluminum-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/duralumin.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/aluminum-brass.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-duralumin"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-aluminum-brass"
      },
    },
    prerequisites = {"sp-material-science-pack-1", "sp-zirconium-processing", "sp-magnesium-processing", "sp-zinc-processing"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"sp-material-science-pack-1", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-nickel-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/duralumin.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-inconel"
      },
    },
    prerequisites = {"sp-material-science-pack-2"},
    unit =
    {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 2},
        {"sp-material-science-pack-2", 2}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-titanium-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/TiAlSn.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/TiNb.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-TiAlSn"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-TiNb"
      },
    },
    prerequisites = {
      "logistic-science-pack",
      "sp-titanium-machining",
      "sp-niobium-and-tantalum",
      "sp-aluminum-machining"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized: Check if it can be unlocked with material science 2
    type = "technology",
    name = "sp-niobium-alloys",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/niobium-steel.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/niobium-tin.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-niobium-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-niobium-tin"
      },
    },
    prerequisites = {"sp-niobium-and-tantalum"},
    unit =
    {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"sp-material-science-pack-1", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-pressure-fluid",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/pressure-tube.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-pressure-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-pressure-tube"
      },
    },
    prerequisites = {"sp-nickel-alloys", "oil-processing"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-filter",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/filter.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/sinter-filter.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-filter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sinter-filter"
      },
    },
    prerequisites = {"chemical-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-ball-bearing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/ball-bearing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-ball-bearing"
      },
    },
    prerequisites = {"lubricant"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-optics",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/mirror.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/lens.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-mirror"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-lens"
      },
    },
    prerequisites = {
      "sp-stainless-steel-processing",
      "lubricant"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-salt",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/salt.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/sodium.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-salt"
      },
    },
    prerequisites = {"sp-cement"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-bleach",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/bleach.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-bleach"
      },
    },
    prerequisites = {"sp-cement"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-magnesium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/magnesium-slab.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-slab"
      },
    },
    prerequisites = {"sp-cement"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-sodium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/sodium.png",
    effects =
    {
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
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-catalyst-from-liquid-sodium",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/catalyst.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-catalyst-from-liquid-sodium"
      }
    },
    prerequisites = {
      "sp-sodium-processing",
      "sp-propane-products"
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-advanced-optics",  -- #ForRegEx# - technology
    icon_size = 256,
    mip_maps = 4,
    icon = "__base__/graphics/technology/optics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-glass-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-infrared-filter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-laser"
      },
    },
    prerequisites = {
      "sp-sodium-processing",
      "sp-optics"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-electronic-components",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_three_icons("__Spaghenutti__/graphics/hr-icons/coil.png", 256, nil,
                                     "__Spaghenutti__/graphics/hr-icons/transistor.png", 256, nil,
                                     "__Spaghenutti__/graphics/hr-icons/diode.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-resistor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-capacitor-from-aluminum"
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
    },
    prerequisites = {
      "sp-phosphorus-processing",
      "sp-electronic-science-pack-1"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-integrated-circuit",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/memory-chip.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-integrated-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-memory-chip"
      },
    },
    prerequisites = {"sp-electronic-science-pack-2"},
    unit =
    {
      count = 100,
      ingredients = {{"sp-automation-science-pack-2", 1}, {"sp-logistic-science-pack-2", 1}, {"sp-chemical-science-pack-2", 1}, {"sp-electronic-science-pack-2", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-silver-products",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/silver-solder.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-silver-solder"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-mirror-from-silver"
      },
    },
    prerequisites = {"advanced-electronics"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-advanced-circuit-board",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/antenna-chip.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/processor.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-antenna-chip"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-processor"
      }
    },
    prerequisites = {"sp-silver-products", "sp-titanium-nitride", "sp-high-purity-silicon-processing"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-compute-unit",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/compute-unit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-compute-unit"
      },
      -- TODO: Add GPU
    },
    prerequisites = {"sp-chemical-science-pack-2", "sp-heatsink"},
    unit =
    {
      count = 100,
      ingredients = {{"sp-automation-science-pack-2", 1}, {"sp-logistic-science-pack-2", 1}, {"sp-chemical-science-pack-2", 1}, {"sp-electronic-science-pack-2", 1}, {"sp-geological-science-pack-2", 1}, {"sp-astronomical-science-pack-2", 1}, {"sp-material-science-pack-2", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-quantum-computing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/cubit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-cubit"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-data-plane"
      },
    },
    prerequisites = {"sp-chemical-science-pack-3"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-fabric",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/fabric.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-fabric"
      },
    },
    prerequisites = {"chemical-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-magnet",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/magnet.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-magnet"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-electromagnet"
      },
    },
    prerequisites = {"sp-electronic-science-pack-1", "sp-material-science-pack-1"},
    unit =
    {
      count = 50,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"sp-electronic-science-pack-1", 1}, {"sp-material-science-pack-1", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-neodymium-magnet",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/neodymium-magnet.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-neodymium-magnet"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-diamond",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/diamond.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-diamond"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-heatsink",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/heatsink.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-heatsink"
      },
    },
    prerequisites = {"sp-aluminum-machining"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-plate-heat-exchanger",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/plate-heat-exchanger.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-plate-heat-exchanger"
      },
    },
    prerequisites = {"sp-heatsink"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-cooling",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/coolant.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-coolant"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-liquid-nitrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-cryostat"
      },
    },
    prerequisites = {"production-science-pack", "sp-plate-heat-exchanger"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-spark-plug",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/spark-plug.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-spark-plug"
      },
    },
    prerequisites = {"sp-nickel-alloys", "sp-advanced-ceramics"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-phosphorus-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/phosphoric-acid.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/phosphorus.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-phosphorus"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-phosphoric-acid"
      },
    },
    prerequisites = {"chemical-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-turbine-parts",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/turbine-rotor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-turbine-blade-from-stainless-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-turbine-blade-from-TiAlSn"
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
        recipe = "sp-turbopump"
      },
    },
    prerequisites = {"sp-material-science-pack-2"},
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-rocket-engine",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/rocket-engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-nozzle"
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
    prerequisites = {"sp-turbine-parts"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-solid-rocket-motor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/solid-rocket-motor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-solid-rocket-motor"
      },
    },
    prerequisites = {"sp-chemical-science-pack-2", "sp-material-science-pack-2", "sp-astronomical-science-pack-2"},
    unit =
    {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-heat-resistant-tile",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/heat-resistant-tile.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-heat-resistant-tile"
      },
    },
    prerequisites = {"sp-basic-ceramics"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-plutonium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/plutonium-240-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-239-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-240-processing"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-plutonium-fuel-rod",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/plutonium-fuel-rod.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-239-fuel-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-plutonium-240-fuel-rod"
      },
    },
    prerequisites = {"sp-material-science-pack-2"},
    unit =
    {
      count = 200,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-nuclear-fuel-rod",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/uranium-fuel-rod.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-empty-fuel-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-uranium-fuel-rod"
      },
    },
    prerequisites = {"sp-material-science-pack-2"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-nuclear-waste-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/nuclear-waste.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-used-up-fuel-rod-reprocessing"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nuclear-waste-processing"
      },
    },
    prerequisites = {"sp-nuclear-fuel-rod"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-advanced-nuclear-waste-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.overlay_small_icon_for_technology("__Spaghenutti__/graphics/hr-icons/nuclear-waste.png", 256,
                                                   "__Spaghenutti__/graphics/hr-icons/plutonium-239-1.png", 256),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-advanced-nuclear-waste-processing"
      },
    },
    prerequisites = {"sp-nuclear-waste-processing"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-titanium-nitride",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/titanium-nitride-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-nitride"
      },
    },
    prerequisites = {"sp-titanium-processing"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-material-science-pack-1", 1},
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-superconductor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/superconductor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-superconductor"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-antimony-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/stibnite.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/antimony.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-antimony"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-stibnite"
      },
    },
    prerequisites = {"sp-chemical-science-pack-3"},
    unit =
    {
      count = 100,
      ingredients = {{"sp-chemical-science-pack-3", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-tellurium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/tellurium-hydroxide.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/tellurium-1.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-tellurium-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-tellurium"
      },
    },
    prerequisites = {"sulfur-processing", "sp-bleach"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-high-purity-silicon-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/high-purity-silicon.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-high-purity-silicon"
      },
    },
    prerequisites = {"sp-electronic-science-pack-2"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-insulation-sheet",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/insulation-sheet.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-insulation-sheet"
      },
    },
    prerequisites = {"sp-rubber"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-rubber",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/rubber.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-rubber"
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
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-nitenol",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/nitenol.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-nitenol"
      },
    },
    prerequisites = {"sp-material-science-pack-2"},
    unit =
    {
      count = 100,
      ingredients = {{"sp-automation-science-pack-2", 1}, {"sp-logistic-science-pack-2", 1}, {"sp-material-science-pack-2", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-invar",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/invar.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-invar"
      },
    },
    prerequisites = {
      "sp-nickel-and-cobalt",
      "sp-material-science-pack-2"
  },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 2},
        {"sp-material-science-pack-2", 2}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-high-pressure-tank",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/high-pressure-tank.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-carbon-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-high-pressure-tank"
      },
    },
    prerequisites = {"sp-material-science-pack-2"},
    unit =
    {
      count = 100,
      ingredients = {{"sp-automation-science-pack-2", 1}, {"sp-logistic-science-pack-2", 1}, {"sp-chemical-science-pack-2", 1}, {"sp-electronic-science-pack-2", 1}, {"sp-geological-science-pack-2", 1}, {"sp-astronomical-science-pack-2", 1}, {"sp-material-science-pack-2", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-crystal-growing",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/quasicrystal.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/monocrystal.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-monocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quasicrystal-1"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quasicrystal-2"
      },
    },
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-blunagium-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/blunagium-bar.png",
    effects =
    {
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
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-grobgnum-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/grobgnum-bar.png",
    effects =
    {
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
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-rukite-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/rukite-bar.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-bar"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-powder"
      },
    },
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-yemnuth-processing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/yemnuth-shard.png",
    effects =
    {
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
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-noble-gases",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/xenon.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-helium-from-atmosphere"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-xenon-from-atmosphere"
      },
    },
    prerequisites = {"sp-chemical-science-pack-2"},
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-quantum-tech",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_two_icons("__Spaghenutti__/graphics/hr-icons/quantum-crystal.png", 256, nil,
                                   "__Spaghenutti__/graphics/hr-icons/quantum-foam.png", 256, nil),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-crystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-quantum-foam"
      },
    },
    prerequisites = {"sp-blunagium-processing", "sp-noble-gases"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-extreme-low-temperature-tech",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/fermium-condensate.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-fermium-condensate"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-helium-3-from-helium-and-hydrogen"
      }
    },
    prerequisites = {"sp-blunagium-processing"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-ion-thruster",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/ion-thruster.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-ion-thruster"
      }
    },
    prerequisites = {"sp-noble-gases"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-blunagium-explorer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/blunagium-explorer.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-vortex-core"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-blunagium-explorer"
      },
    },
    prerequisites = {"sp-extreme-low-temperature-tech", "sp-ion-thruster"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-gravitonium",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/gravitonium.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-gravitonium"
      }
    },
    prerequisites = {"sp-quantum-tech", "sp-yemnuth-processing"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-rukite-explorer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/rukite-explorer.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-rukite-explorer"
      },
    },
    prerequisites = {"sp-gravitonium"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-yemnuth-explorer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/yemnuth-explorer.png",
    effects =
    {
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
    },
    prerequisites = {"sp-gravitonium", "sp-ion-thruster"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-grobgnum-explorer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/grobgnum-explorer.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-grobgnum-explorer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-bioreactor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-biochip"
      },
    },
    prerequisites = {"sp-gravitonium"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-heavy-ball-bearing",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/heavy-bearing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-heavy-ball-bearing"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-kevlar",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/kevlar.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-kevlar"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-advanced-compute-unit",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/advanced-compute-unit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-advanced-compute-unit"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-electrode",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/electrode.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-electrode-from-platinum"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-electrode-from-iridium"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-flux-capacitor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/flux-capacitor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-flux-capacitor"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-gamma-radiation-source"
      },
    },
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-relay",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/relay.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-relay"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-transformer",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/transformer.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-transformer"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-vacuum-tube"
      },
    },
    prerequisites = {"sp-relay", "sp-heatsink"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-optical-sensor",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/cmos.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-cmos"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-optical-sensor"
      },
    },
    prerequisites = {"sp-relay"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-actuator",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/actuator.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-actuator"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-catalyst",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/catalyst.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-catalyst-from-calcium-magnesium"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-chronomatter",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/chronomatter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-chronomatter"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-chronalyte"
      },
    },
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-ethylene-products",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/ethylene-dichloride.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-ethylene-and-propene"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-ethylene-dichloride"
      },
    },
    prerequisites = {
      "logistic-science-pack",
      "sp-propane-products"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-epoxy",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/epoxy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-epoxy"
      },
    },
    prerequisites = {"chemical-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-propane-products",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/methyl-tert-butyl-ether.png",
    effects =
    {
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
      },
    },
    prerequisites = {
      "sp-filter",
      "sp-catalyst"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-sodium-hydroxide",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/sodium-hydroxide.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-hydroxide-from-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-sodium-hydroxide-from-sodium"
      },
    },
    prerequisites = {"sp-sodium-processing"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-vinyl-chloride",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/vinyl-chloride.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-vinyl-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-insulated-wire"
      },
    },
    prerequisites = {"sp-rubber"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-steel-wheel",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/wheel.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-steel-wheel"
      },
    },
    prerequisites = {"logistic-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-control-unit",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/control-unit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-control-unit"
      },
    },
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-cybernetics",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/cybernetics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-cybernetics"
      },
    },
    prerequisites = {"utility-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-nanobot",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/nanobot.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-nanobot"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nanowire"
      },
    },
    prerequisites = {"sp-quantum-tech"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-basic-acrosphere-conversion",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_four_icons("__Spaghenutti__/graphics/hr-icons/blunagium-acrosphere-1.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/grobgnum-acrosphere-1.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/rukite-acrosphere-1.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/yemnuth-acrosphere-1.png", 256, nil),
    effects =
    {
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
    prerequisites = {"sp-logistic-science-pack-3"},
    unit =
    {
      count = 100,
      ingredients = {{"basic-tech-card", 1}, {"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-upgrade-acrosphere-conversion",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_four_icons("__Spaghenutti__/graphics/hr-icons/blunagium-acrosphere-2.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/grobgnum-acrosphere-2.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/rukite-acrosphere-2.png", 256, nil,
                                    "__Spaghenutti__/graphics/hr-icons/yemnuth-acrosphere-2.png", 256, nil),
    effects =
    {
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
      }
    },
    prerequisites = {"sp-basic-acrosphere-conversion"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-acroproduct",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = util.combine_three_icons("__Spaghenutti__/graphics/hr-icons/acrocrystal.png", 256, nil,
                                     "__Spaghenutti__/graphics/hr-icons/acromatter.png", 256, nil,
                                     "__Spaghenutti__/graphics/hr-icons/acrovoid.png", 256, nil),
    effects =
    {
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
    prerequisites = {"sp-upgrade-acrosphere-conversion"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-raw-resource-from-acrocrystal",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = 
    {
      {icon = "__Spaghenutti__/graphics/arrows/acroproduct-recipes-arrow-256x256.png", icon_size = 256, scale = 2},
      {icon = "__Spaghenutti__/graphics/hr-icons/acrocrystal.png", icon_size = 256}
    },
    effects =
    {
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
        recipe = "sp-aluminum-ore-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-chromite-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-limestone-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-titanium-ore-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-magnesium-ore-from-acrocrystal"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-nickel-ore-from-acrocrystal"
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
    prerequisites = {"sp-acroproduct"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-processed-resource-from-acrovoid",  -- #ForRegEx# - technology
    icon_size = 256,
    icons = 
    {
      {icon = "__Spaghenutti__/graphics/arrows/acroproduct-recipes-arrow-256x256.png", icon_size = 256, scale = 2},
      {icon = "__Spaghenutti__/graphics/hr-icons/acrovoid.png", icon_size = 256}
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-uranium-from-acrovoid"
      },
      {
        type = "unlock-recipe",
        recipe = "sp-calcium-from-acrovoid"
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
        recipe = "sp-antimony-from-acrovoid"
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
    prerequisites = {"sp-acroproduct"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  -- MARK: Science packs
  {
    -- Finalized
    type = "technology",
    name = "sp-electronic-science-pack-1",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/electronic-science-pack-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-electronic-science-pack-1"
      },
    },
    prerequisites = {"logistic-science-pack"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-geological-science-pack-1",  -- #ForRegEx# - technology
    icon_size = 64,
    icon = "__Krastorio2Assets__/icons/cards/basic-tech-card.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-geological-science-pack-1"
      },
    },
    prerequisites = {},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"sp-material-science-pack-1", 1},
        {"sp-electronic-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    -- Finalized
    type = "technology",
    name = "sp-material-science-pack-1",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/material-science-pack-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-material-science-pack-1"
      },
    },
    prerequisites = {"sp-aluminum-processing"},
    unit =
    {
      count = 100,
      ingredients = {
        {"basic-tech-card", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-automation-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/automation-science-pack-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-automation-science-pack-2"
      },
    },
    prerequisites = {
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "sp-electronic-science-pack-1",
      "sp-geological-science-pack-1",
      "sp-material-science-pack-1"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-logistic-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/logistic-science-pack-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-logistic-science-pack-2"
      },
    },
    prerequisites = {
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "sp-electronic-science-pack-1",
      "sp-geological-science-pack-1",
      "sp-material-science-pack-1"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-military-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/military-science-pack-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-military-science-pack-2"
      },
    },
    prerequisites = {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "sp-electronic-science-pack-1",
      "sp-geological-science-pack-1",
      "sp-material-science-pack-1"},
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-chemical-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/chemical-science-pack-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-chemical-science-pack-2"
      },
    },
    prerequisites = {
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "sp-electronic-science-pack-1",
      "sp-geological-science-pack-1",
      "sp-material-science-pack-1"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-electronic-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 64,
    icon = "__Krastorio2Assets__/icons/cards/utility-tech-card.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-electronic-science-pack-2"
      },
    },
    prerequisites = {
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "sp-electronic-science-pack-1",
      "sp-geological-science-pack-1",
      "sp-material-science-pack-1"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-geological-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/geological-science-pack-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-geological-science-pack-2"
      },
    },
    prerequisites = {
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "sp-electronic-science-pack-1",
      "sp-geological-science-pack-1",
      "sp-material-science-pack-1"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-material-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/material-science-pack-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-material-science-pack-2"
      },
    },
    prerequisites = {
      "automation-science-pack",
      "logistic-science-pack", 
      "chemical-science-pack",
      "sp-electronic-science-pack-1",
      "sp-geological-science-pack-1",
      "sp-material-science-pack-1"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"sp-electronic-science-pack-1", 1},
        {"sp-geological-science-pack-1", 1},
        {"sp-material-science-pack-1", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-astronomical-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 64,
    icon = "__Krastorio2Assets__/icons/cards/matter-tech-card.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-astronomical-science-pack-2"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-computer-science-pack-2",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/computer-science-pack-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-computer-science-pack-2"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-automation-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/automation-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-automation-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-logistic-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/logistic-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-logistic-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-military-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/military-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-military-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-military-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-military-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-chemical-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/chemical-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-chemical-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-electronic-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/electronic-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-electronic-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-geological-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/geological-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-geological-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-material-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/material-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-material-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-astronomical-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/astronomical-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-astronomical-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1}, 
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "sp-computer-science-pack-3",  -- #ForRegEx# - technology
    icon_size = 256,
    icon = "__Spaghenutti__/graphics/hr-icons/computer-science-pack-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sp-computer-science-pack-3"
      },
    },
    prerequisites = {
      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-astronomical-science-pack-2",
      "sp-material-science-pack-2"
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"sp-automation-science-pack-2", 1},
        {"sp-logistic-science-pack-2", 1},
        {"sp-chemical-science-pack-2", 1},
        {"sp-electronic-science-pack-2", 1},
        {"sp-geological-science-pack-2", 1},
        {"sp-astronomical-science-pack-2", 1},
        {"sp-material-science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a"
  },
})

if not mods["Krastorio2"] then
  data:extend({
    
  })

  table.insert(data.raw.technology["sp-processed-resource-from-acrovoid"].effects, {type = "unlock-recipe", recipe = "sp-coke-from-acrovoid"})
  table.insert(data.raw.technology["sp-processed-resource-from-acrovoid"].effects, {type = "unlock-recipe", recipe = "sp-silicon-from-acrovoid"})
end

-- MARK: Tech changes
table.insert(data.raw.technology["automation-science-pack"].prerequisites, "sp-mechanical-assembling")

table.insert(data.raw.technology["gun-turret"].prerequisites, "sp-mechanical-assembling")

table.insert(data.raw.technology["fast-inserter"].prerequisites, "sp-ball-bearing")

table.insert(data.raw.technology["oil-processing"].prerequisites, "sp-stainless-steel-processing")

data.raw.technology["chemical-science-pack"].prerequisites = {
  "plastics",
  "sulfur-processing"
}
table.insert(data.raw.technology["chemical-science-pack"].unit.ingredients, {"sp-material-science-pack-1", 1})

data.raw.technology["circuit-network"].prerequisites = {"sp-aluminum-processing", "sp-aluminum-treatment", "sp-vinyl-chloride", "sp-electronic-components", "sp-magnet"}

table.insert(data.raw.technology["logistics-2"].prerequisites, "sp-aluminum-processing")

table.insert(data.raw.technology["railway"].prerequisites, "sp-steel-wheel")
table.insert(data.raw.technology["railway"].prerequisites, "sp-geological-science-pack-1")
table.insert(data.raw.technology["railway"].effects, {type = "unlock-recipe", recipe = "sp-train-boige"})
data.raw.technology["railway"].unit.ingredients = {
  -- basic-tech-card are also present, not checked why that is...
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

data.raw.technology["fluid-wagon"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

data.raw.technology["automated-rail-transportation"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

data.raw.technology["rail-signals"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}

table.insert(data.raw.technology["advanced-material-processing"].prerequisites, "sp-material-science-pack-1")
table.insert(data.raw.technology["advanced-material-processing"].unit.ingredients, {"sp-material-science-pack-1", 1})

table.insert(data.raw.technology["advanced-material-processing-2"].prerequisites, "sp-tungsten-processing")
table.insert(data.raw.technology["advanced-material-processing-2"].prerequisites, "sp-basic-ceramics")
table.insert(data.raw.technology["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "sp-heating-filament"})

table.insert(data.raw.technology["fluid-handling"].prerequisites, "sp-basic-alloy")
table.insert(data.raw.technology["fluid-handling"].effects, {type = "unlock-recipe", recipe = "sp-valve"})

table.insert(data.raw.technology["nuclear-power"].effects, {type = "unlock-recipe", recipe = "sp-reactor-core"})
table.insert(data.raw.technology["nuclear-power"].effects, {type = "unlock-recipe", recipe = "sp-control-rod"})

table.insert(data.raw.technology["automation-2"].prerequisites, "sp-heatsink")
table.insert(data.raw.technology["automation-2"].prerequisites, "sp-material-science-pack-1")
table.insert(data.raw.technology["automation-2"].prerequisites, "sp-electronic-science-pack-1")
data.raw.technology["automation-2"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1}
}

data.raw.technology["landfill"].prerequisites = {"sp-geological-science-pack-1"}
data.raw.technology["landfill"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-geological-science-pack-1", 1}
}
table.insert(data.raw.technology["landfill"].effects, {type = "unlock-recipe", recipe = "sp-landfill-from-limestone-and-stone"})
table.insert(data.raw.technology["landfill"].effects, {type = "unlock-recipe", recipe = "sp-landfill-from-limestone"})
table.insert(data.raw.technology["landfill"].effects, {type = "unlock-recipe", recipe = "sp-landfill-from-iron-ore"})

table.insert(data.raw.technology["oil-processing"].effects, {type = "unlock-recipe", recipe = "sp-flange"})
data.raw.technology["oil-processing"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1}
}

data.raw.technology["plastics"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1}
}

data.raw.technology["sulfur-processing"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1}
}

table.insert(data.raw.technology["solar-energy"].prerequisites, "sp-phosphorus-processing")
data.raw.technology["solar-energy"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-material-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

table.insert(data.raw.technology["concrete"].prerequisites, "sp-cement")
data.raw.technology["solar-energy"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1}
}  

data.raw.technology["flammables"].prerequisites = {"chemical-science-pack"}
data.raw.technology["flammables"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["explosives"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["laser"].prerequisites = {"sp-advanced-optics"}

data.raw.technology["low-density-structure"].prerequisites = {
  "sp-titanium-machining",
  "sp-high-pressure-tank"
}
table.insert(data.raw.technology["low-density-structure"].effects, {type = "unlock-recipe", recipe = "sp-composites"})

-- MARK: Infinite techs
data.raw.technology["research-speed-1"].prerequisites = {
  "chemical-science-pack",
  "sp-geological-science-pack-1"
}
data.raw.technology["research-speed-1"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["research-speed-2"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"chemical-science-pack", 1}
}

data.raw.technology["research-speed-3"].prerequisites = {"sp-computer-science-pack-2"}
data.raw.technology["research-speed-3"].unit.ingredients = {
  {"sp-computer-science-pack-2", 1}
}

data.raw.technology["toolbelt-3"].prerequisites = {
  "chemical-science-pack",
  "sp-geological-science-pack-1"
}
data.raw.technology["toolbelt-3"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"sp-material-science-pack-1", 1},
  {"sp-electronic-science-pack-1", 1},
  {"sp-geological-science-pack-1", 1},
  {"chemical-science-pack", 1}
}
