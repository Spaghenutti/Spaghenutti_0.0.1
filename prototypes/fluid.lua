data:extend({
  ------------------------------------------------------------------------------
  -- MARK: aqueous-fluid
  ------------------------------------------------------------------------------
  {
    type = "fluid",
    name = "sp-liquid-sodium",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.71, g=0.71, b=0.71},
    flow_color = {r=0.71, g=71, b=0.71},
    icon = "__Spaghenutti__/graphics/icons/liquid-sodium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "aqueous-fluid",
    order = "a[fluid]-f[liquid-sodium]"
  },
  {
    type = "fluid",
    name = "sp-aqueous-niobium",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.39, g=0.11, b=0.75},
    flow_color = {r=0.39, g=0.11, b=0.75},
    icon = "__Spaghenutti__/graphics/icons/aqueous-niobium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "aqueous-fluid",
    order = "a[fluid]-f[aqueous-niobium]"
  },
  {
    type = "fluid",
    name = "sp-aqueous-tantalum",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/aqueous-tantalum.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "aqueous-fluid",
    order = "a[fluid]-f[aqueous-tantalum]"
  },
  {
    type = "fluid",
    name = "sp-coolant",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/coolant.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "aqueous-fluid",
    order = "a[fluid]-f[coolant]"
  },
  ------------------------------------------------------------------------------
  -- MARK: dirty-fluid
  ------------------------------------------------------------------------------
  {
    type = "fluid",
    name = "sp-dirty-water-with-aluminum",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-aluminum.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-aluminum]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-chromite",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-chromite.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-chromite]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-copper",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-copper.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-copper]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-iron",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-iron.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-iron]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-magnesium",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-magnesium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-magnesium]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-nickel",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-nickel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-nickel]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-sulfur",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-sulfur.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-sulfur]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-tin",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-tin.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-tin]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-titanium",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-titanium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-titanium]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-tungsten",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-tungsten.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-tungsten]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-zinc",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-zinc.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-zinc]"
  },
  {
    type = "fluid",
    name = "sp-dirty-water-with-zirconium",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/dirty-water-with-zirconium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "dirty-fluid",
    order = "a[fluid]-f[dirty-water-with-zirconium]"
  },
  ------------------------------------------------------------------------------
  -- MARK: gas
  ------------------------------------------------------------------------------
  {
    type = "fluid",
    name = "sp-helium",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/helium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "gas",
    order = "a[fluid]-f[helium]"
  },
  {
    type = "fluid",
    name = "sp-helium-3",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/helium-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "gas",
    order = "a[fluid]-f[helium-3]"
  },
  {
    type = "fluid",
    name = "sp-xenon",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/xenon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "gas",
    order = "a[fluid]-f[xenon]"
  },
  {
    type = "fluid",
    name = "sp-deuterium",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/deuterium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "gas",
    order = "a[fluid]-f[deuterium]"
  },
  ------------------------------------------------------------------------------
  -- MARK: chemical
  ------------------------------------------------------------------------------
  {
    type = "fluid",
    name = "sp-phosphoric-acid",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/phosphoric-acid.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[phosphoric-acid]"
  },
  {
    type = "fluid",
    name = "sp-sulfamate",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/sulfamate.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[sulfamate]"
  },
  {
    type = "fluid",
    name = "sp-perchloric-acid",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/perchloric-acid.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[perchloric-acid]"
  },
  {
    type = "fluid",
    name = "sp-liquid-nitrogen",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/liquid-nitrogen.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[liquid-nitrogen]"
  },
  {
    type = "fluid",
    name = "sp-epoxy",  -- #ForRegEx# - item
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/epoxy.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[liquid-nitrogen]"
  },
  {
    type = "fluid",
    name = "sp-bleach",  -- #ForRegEx# - item
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/bleach.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[liquid-nitrogen]"
  },
  {
    type = "fluid",
    name = "sp-ethylene",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[ethylene]"
  },
  {
    type = "fluid",
    name = "sp-ethylene-dichloride",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/ethylene-dichloride.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[ethylene-dichloride]"
  },
  {
    type = "fluid",
    name = "sp-sodium-hydroxide",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/sodium-hydroxide.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[sodium-hydroxide]"
  },
  {
    type = "fluid",
    name = "sp-propane",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/propane.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[propene]"
  },
  {
    type = "fluid",
    name = "sp-propylene",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/propylene.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[propylene]"
  },
  {
    type = "fluid",
    name = "sp-benzene",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/benzene.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[benzene]"
  },
  {
    type = "fluid",
    name = "sp-styrene",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/styrene.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[styrene]"
  },
  {
    type = "fluid",
    name = "sp-vinyl-chloride",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/vinyl-chloride.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[vinyl-chloride]"
  },
  {
    type = "fluid",
    name = "sp-methyl-tert-butyl-ether",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/methyl-tert-butyl-ether.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "chemical",
    order = "a[fluid]-f[vinyl-chloride]"
  },
  ------------------------------------------------------------------------------
  -- MARK: alien
  ------------------------------------------------------------------------------
  {
    type = "fluid",
    name = "sp-grobgnum-slurry",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/grobgnum-slurry.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "alien",
    order = "a[fluid]-f[grobgnum-slurry]"
  },
  {
    type = "fluid",
    name = "sp-grobgnumylene",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/grobgnumylene.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "alien",
    order = "a[fluid]-f[grobgnumylene]"
  },
  {
    type = "fluid",
    name = "sp-grobgnum-hydroxide",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/grobgnum-hydroxide.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "alien",
    order = "a[fluid]-f[grobgnum-hydroxide]"
  },
  {
    type = "fluid",
    name = "sp-chronomatter",  -- #ForRegEx# - fluid
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.05, g=0.1, b=0.5},
    flow_color = {r=0.05, g=0.1, b=0.5},
    icon = "__Spaghenutti__/graphics/icons/chronomatter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "alien",
    order = "a[fluid]-f[chronomatter]"
  },
})

if not mods["Krastorio2"] then
  data:extend({
    {
      type = "fluid",
      name = "sp-nitrogen",  -- #ForRegEx# - fluid
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r=0.05, g=0.1, b=0.5},
      flow_color = {r=0.05, g=0.1, b=0.5},
      icon = "__Spaghenutti__/graphics/dummy/dummy-fluid-sp-nitrogen.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "gas",
      order = "a[fluid]-f[nitrogen]"
    },
    {
      type = "fluid",
      name = "sp-hydrogen",  -- #ForRegEx# - fluid
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r=0.05, g=0.1, b=0.5},
      flow_color = {r=0.05, g=0.1, b=0.5},
      icon = "__Spaghenutti__/graphics/dummy/dummy-fluid-sp-hydrogen.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "gas",
      order = "a[fluid]-f[hydrogen]"
    },
    {
      type = "fluid",
      name = "sp-chlorine",  -- #ForRegEx# - fluid
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r=0.58, g=0.95, b=0.5},
      flow_color = {r=0.58, g=0.95, b=0.5},
      icon = "__Krastorio2Assets__/icons/fluids/chlorine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "chemical",
      order = "a[fluid]-f[chlorine]"
    },
    {
      type = "fluid",
      name = "sp-oxygen",  -- #ForRegEx# - fluid
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r=0.05, g=0.1, b=0.5},
      flow_color = {r=0.05, g=0.1, b=0.5},
      icon = "__Spaghenutti__/graphics/dummy/dummy-fluid-sp-oxygen.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "gas",
      order = "a[fluid]-f[oxygen]"
    },
    {
      type = "fluid",
      name = "sp-ammonia",  -- #ForRegEx# - fluid
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r=0.05, g=0.1, b=0.5},
      flow_color = {r=0.05, g=0.1, b=0.5},
      icon = "__Spaghenutti__/graphics/dummy/dummy-fluid-sp-oxygen.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "chemical",
      order = "a[fluid]-f[ammonia]"
    },
    {
      type = "fluid",
      name = "sp-nitric-acid",  -- #ForRegEx# - fluid
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r=0.05, g=0.1, b=0.5},
      flow_color = {r=0.05, g=0.1, b=0.5},
      icon = "__Spaghenutti__/graphics/dummy/dummy-fluid-sp-oxygen.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "chemical",
      order = "a[fluid]-f[nitric-acid]"
    },
  })
end

data.raw.fluid["water"].subgroup = "aqueous-fluid"

data.raw.fluid["crude-oil"].subgroup = "oil"
data.raw.fluid["petroleum-gas"].subgroup = "oil"
data.raw.fluid["heavy-oil"].subgroup = "oil"
data.raw.fluid["light-oil"].subgroup = "oil"
data.raw.fluid["lubricant"].subgroup = "oil"

data.raw.fluid["sulfuric-acid"].subgroup = "chemical"

data.raw.fluid["steam"].subgroup = "gas"
