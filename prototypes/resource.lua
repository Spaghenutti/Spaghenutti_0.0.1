-- For every ressource add also
--    - autoplace-control
--    - particle
--    - item

local resource_autoplace = require("__core__/lualib/resource-autoplace")

data:extend({
  {
    type = "resource",
    name = "sp-aluminum-ore",
    icon = "__Spaghetorio__/graphics/icons/aluminum-ore-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=1.0, g=0.2, b=0.2},
    minable = {
      hardness = 2,
      mining_particle = "aluminum-ore-particle",
      mining_time = 1,
      result = "sp-aluminum-ore"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-aluminum-ore",
      order = "d",
      base_density = 1,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/aluminum-ore-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-aluminum-ore-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-chromite",
    icon = "__Spaghetorio__/graphics/icons/chromite-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.5, g=0.5, b=1.0},
    minable = {
      hardness = 1,
      mining_particle = "chromite-particle",
      mining_time = 1,
      result = "sp-chromite"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-chromite",
      order = "f",
      base_density = 1,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/chromite-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-chromite-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-limestone",
    icon = "__Spaghetorio__/graphics/icons/limestone-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=1.0, g=1.0, b=0.8},
    minable = {
      hardness = 1,
      mining_particle = "limestone-particle",
      mining_time = 1,
      result = "sp-limestone",
      fluid_amount = 10,
      required_fluid = "sp-sulfamate"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-limestone",
      order = "d",
      base_density = 0.5,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/limestone-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-limestone-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-titanium-ore",
    icon = "__Spaghetorio__/graphics/icons/titanium-ore-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.4, g=0.3, b=0.3},
    minable = {
      hardness = 3,
      mining_particle = "titanium-ore-particle",
      mining_time = 1,
      result = "sp-titanium-ore",
      fluid_amount = 15,
      required_fluid = "sp-phosphoric-acid"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-titanium-ore",
      order = "d",
      base_density = 1,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/titanium-ore-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-titanium-ore-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-magnesium-ore",
    icon = "__Spaghetorio__/graphics/icons/magnesium-ore-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.75, g=0.75, b=0.75},
    minable = {
      hardness = 1,
      mining_particle = "magnesium-ore-particle",
      mining_time = 1,
      result = "sp-magnesium-ore",
      fluid_amount = 5,
      required_fluid = "sp-phosphoric-acid"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-magnesium-ore",
      order = "d",
      base_density = 1,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/magnesium-ore-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-magnesium-ore-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-nickel-ore",
    icon = "__Spaghetorio__/graphics/icons/nickel-ore-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.3, g=0.9, b=0.61},
    minable = {
      hardness = 1,
      mining_particle = "nickel-ore-particle",
      mining_time = 1,
      result = "sp-nickel-ore",
      fluid_amount = 50,
      required_fluid = "water",
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-nickel-ore",
      order = "d",
      base_density = 1,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/nickel-ore-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-nickel-ore-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-spodumene",
    icon = "__Spaghetorio__/graphics/icons/spodumene-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.5, g=1, b=0.6},
    minable = {
      hardness = 1,
      mining_particle = "spodumene-particle",
      mining_time = 1,
      result = "sp-spodumene",
      fluid_amount = 20,
      required_fluid = "sp-sulfamate"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-spodumene",
      order = "d",
      base_density = 0.8,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/spodumene-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-spodumene-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-tinstone",
    icon = "__Spaghetorio__/graphics/icons/tinstone-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.1, g=0.9, b=0.7},
    minable = {
      hardness = 1.2,
      mining_particle = "tinstone-particle",
      mining_time = 1,
      result = "sp-tinstone"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-tinstone",
      order = "d",
      base_density = 10,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = true,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/tinstone-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-tinstone-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-tungsten-ore",
    icon = "__Spaghetorio__/graphics/icons/tungsten-ore-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.35, g=0.15, b=0},
    minable = {
      hardness = 4,
      mining_particle = "tungsten-ore-particle",
      mining_time = 1,
      result = "sp-tungsten-ore",
      fluid_amount = 30,
      required_fluid = "sp-perchloric-acid"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-tungsten-ore",
      order = "d",
      base_density = 1,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/tungsten-ore-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-tungsten-ore-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-zinc-ore",
    icon = "__Spaghetorio__/graphics/icons/zinc-ore-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0, g=0.25, b=1},
    minable = {
      hardness = 2,
      mining_particle = "zinc-ore-particle",
      mining_time = 1,
      result = "sp-zinc-ore"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-zinc-ore",
      order = "d",
      base_density = 1,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/zinc-ore-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-zinc-ore-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
  {
    type = "resource",
    name = "sp-zirconium-ore",
    icon = "__Spaghetorio__/graphics/icons/zirconium-ore-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.8, g=0.65, b=0},
    minable = {
      hardness = 2.5,
      mining_particle = "zirconium-ore-particle",
      mining_time = 1,
      result = "sp-zirconium-ore"
      },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "sp-zirconium-ore",
      order = "d",
      base_density = 1,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22,
    }),
    stage_counts = {20000, 12000, 8000, 4000, 2000, 1000, 500, 200},
    stages = {
      sheet = {
        filename = "__Spaghetorio__/graphics/resource/zirconium-ore-patches.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__Spaghetorio__/graphics/resource/hr-zirconium-ore-patches.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        }
      }
    }
  },
})

if mods["Krastorio2"] then
  data:extend({
    {
      type = "resource",
      name = "sp-blunagium",
      category = "kr-quarry",
      icon = "__Spaghetorio__/graphics/icons/blunagium.png",
      icon_size = 64,
      icon_mipmaps = 4,
      flags = {"placeable-neutral"},
      order = "a-b-a",
      subgroup = "raw-resource",
      infinite = false,
      highlight = true,
      minimum = 50,
      normal = 350,
      infinite_depletion_amount = 10,
      resource_patch_search_radius = 12,
      tree_removal_probability = 1,
      tree_removal_max_distance = 32 * 32,
      minable = {
        hardness = 1,
        mining_time = 2,
        result = "sp-blunagium",
      },
      collision_box = {{-3.4, -3.4 }, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5 }, {3.5, 3.5}},
      autoplace = resource_autoplace.resource_autoplace_settings({
        name = "sp-blunagium",
        order = "f",
        base_density = 1,
        richness_multiplier = 1,
        richness_multiplier_distance_bonus = 1.5,
        base_spots_per_km2 = 0.2,
        has_starting_area_placement = false,
        random_spot_size_minimum = 0.01,
        random_spot_size_maximum = 0.1,
        regular_blob_amplitude_multiplier = 1,
        richness_post_multiplier = 1.0,
        additional_richness = 350000,
        regular_rq_factor_multiplier = 0.1,
        candidate_spot_count = 22,
      }),
      stage_counts = {0},
      stages = {
        sheet = {
          filename = "__Spaghetorio__/graphics/alien-resource/blunagium-mine.png",
          priority = "extra-high",
          width = 256,
          height = 256,
          frame_count = 4,
          variation_count = 1,
          scale = 0.8,
        },
      },
      effect_animation_period = 5,
      effect_animation_period_deviation = 1,
      effect_darkness_multiplier = 3.5,
      min_effect_alpha = 0.2,
      max_effect_alpha = 0.3,
      map_color = {r = 0, g = 0, b = 1},
      mining_visualisation_tint = {r = 0.1, g = 0.1, b = 0.8},
      map_grid = false,
    },
    {
      type = "resource",
      name = "sp-grobgnum",
      category = "kr-quarry",
      icon = "__Spaghetorio__/graphics/icons/grobgnum.png",
      icon_size = 64,
      icon_mipmaps = 4,
      flags = {"placeable-neutral"},
      order = "a-b-a",
      subgroup = "raw-resource",
      infinite = false,
      highlight = true,
      minimum = 50,
      normal = 350,
      infinite_depletion_amount = 10,
      resource_patch_search_radius = 12,
      tree_removal_probability = 1,
      tree_removal_max_distance = 32 * 32,
      minable = {
        hardness = 1,
        mining_time = 2,
        result = "sp-grobgnum",
      },
      collision_box = {{-3.4, -3.4 }, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5 }, {3.5, 3.5}},
      autoplace = resource_autoplace.resource_autoplace_settings({
        name = "sp-grobgnum",
        order = "f",
        base_density = 1,
        richness_multiplier = 1,
        richness_multiplier_distance_bonus = 1.5,
        base_spots_per_km2 = 0.2,
        has_starting_area_placement = false,
        random_spot_size_minimum = 0.01,
        random_spot_size_maximum = 0.1,
        regular_blob_amplitude_multiplier = 1,
        richness_post_multiplier = 1.0,
        additional_richness = 350000,
        regular_rq_factor_multiplier = 0.1,
        candidate_spot_count = 22,
      }),
      stage_counts = {0},
      stages = {
        sheet = {
          filename = "__Spaghetorio__/graphics/alien-resource/grobgnum-mine.png",
          priority = "extra-high",
          width = 256,
          height = 256,
          frame_count = 4,
          variation_count = 1,
          scale = 0.8,
        },
      },
      effect_animation_period = 5,
      effect_animation_period_deviation = 1,
      effect_darkness_multiplier = 3.5,
      min_effect_alpha = 0.2,
      max_effect_alpha = 0.3,
      map_color = {r = 0, g = 0.7, b = 0},
      mining_visualisation_tint = {r = 0.1, g = 0.8, b = 0.1},
      map_grid = false,
    },
    {
      type = "resource",
      name = "sp-rukite",
      category = "kr-quarry",
      icon = "__Spaghetorio__/graphics/icons/rukite.png",
      icon_size = 64,
      icon_mipmaps = 4,
      flags = {"placeable-neutral"},
      order = "a-b-a",
      subgroup = "raw-resource",
      infinite = false,
      highlight = true,
      minimum = 50,
      normal = 350,
      infinite_depletion_amount = 10,
      resource_patch_search_radius = 12,
      tree_removal_probability = 1,
      tree_removal_max_distance = 32 * 32,
      minable = {
        hardness = 1,
        mining_time = 2,
        result = "sp-rukite",
      },
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      autoplace = resource_autoplace.resource_autoplace_settings({
        name = "sp-rukite",
        order = "f",
        base_density = 1,
        richness_multiplier = 1,
        richness_multiplier_distance_bonus = 1.5,
        base_spots_per_km2 = 0.2,
        has_starting_area_placement = false,
        random_spot_size_minimum = 0.01,
        random_spot_size_maximum = 0.1,
        regular_blob_amplitude_multiplier = 1,
        richness_post_multiplier = 1.0,
        additional_richness = 350000,
        regular_rq_factor_multiplier = 0.1,
        candidate_spot_count = 22,
      }),
      stage_counts = {0},
      stages = {
        sheet = {
          filename = "__Spaghetorio__/graphics/alien-resource/rukite-mine.png",
          priority = "extra-high",
          width = 256,
          height = 256,
          frame_count = 4,
          variation_count = 1,
          scale = 0.8,
        },
      },
      effect_animation_period = 5,
      effect_animation_period_deviation = 1,
      effect_darkness_multiplier = 3.5,
      min_effect_alpha = 0.2,
      max_effect_alpha = 0.3,
      map_color = {r = 1, g = 0, b = 0},
      mining_visualisation_tint = {r = 0.8, g = 0.1, b = 0.1},
      map_grid = false,
    },
    {
      type = "resource",
      name = "sp-yemnuth",
      category = "kr-quarry",
      icon = "__Spaghetorio__/graphics/icons/yemnuth.png",
      icon_size = 64,
      icon_mipmaps = 4,
      flags = {"placeable-neutral"},
      order = "a-b-a",
      subgroup = "raw-resource",
      infinite = false,
      highlight = true,
      minimum = 50,
      normal = 350,
      infinite_depletion_amount = 10,
      resource_patch_search_radius = 12,
      tree_removal_probability = 1,
      tree_removal_max_distance = 32 * 32,
      minable = {
        hardness = 1,
        mining_time = 2,
        result = "sp-yemnuth",
      },
      collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
      selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
      autoplace = resource_autoplace.resource_autoplace_settings({
        name = "sp-yemnuth",
        order = "f",
        base_density = 1,
        richness_multiplier = 1,
        richness_multiplier_distance_bonus = 1.5,
        base_spots_per_km2 = 0.2,
        has_starting_area_placement = false,
        random_spot_size_minimum = 0.01,
        random_spot_size_maximum = 0.1,
        regular_blob_amplitude_multiplier = 1,
        richness_post_multiplier = 1.0,
        additional_richness = 350000,
        regular_rq_factor_multiplier = 0.1,
        candidate_spot_count = 22,
      }),
      stage_counts = {0},
      stages = {
        sheet = {
          filename = "__Spaghetorio__/graphics/alien-resource/yemnuth-mine.png",
          priority = "extra-high",
          width = 256,
          height = 256,
          frame_count = 4,
          variation_count = 1,
          scale = 0.8,
        },
      },
      effect_animation_period = 5,
      effect_animation_period_deviation = 1,
      effect_darkness_multiplier = 3.5,
      min_effect_alpha = 0.2,
      max_effect_alpha = 0.3,
      map_color = {r = 1, g = 1, b = 0},
      mining_visualisation_tint = {r = 0.8, g = 0.8, b = 0.1},
      map_grid = false,
    },
  })
end