local data_util = require("__flib__.data-util")
local table = require("__flib__.table")

local function sc_icon(product, ingredient)
  local product_icon = data_util.create_icons(data.raw[product.type][product.name])
  local ingredient_icon = data_util.create_icons(data.raw[ingredient.type][ingredient.name])
  ingredient_icon[1].scale = 0.22
  ingredient_icon[1].shift = { -8, -8 }
  return table.array_merge({ product_icon, ingredient_icon })
end

return {
  {
    type = "recipe",
    name = "kr-s-c-copper-cable",
    icons = sc_icon({ type = "item", name = "copper-cable" }, { type = "item", name = "copper-ore" }),
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 1.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "copper-ore", 2 },
    },
    result = "copper-cable",
    result_count = 2,
  },
  -- Irons
  {
    type = "recipe",
    name = "kr-s-c-iron-stick",
    icons = sc_icon({ type = "item", name = "iron-stick" }, { type = "item", name = "iron-ore" }),
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 1.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "iron-ore", 2 },
    },
    result = "iron-stick",
    result_count = 2,
  },
  {
    type = "recipe",
    name = "kr-s-c-iron-gear-wheel",
    icons = sc_icon({ type = "item", name = "iron-gear-wheel" }, { type = "item", name = "iron-ore" }),
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 1.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "iron-ore", 2 },
    },
    result = "iron-gear-wheel",
    result_count = 1,
  },
  {
    type = "recipe",
    name = "kr-s-c-iron-beam",
    icons = sc_icon({ type = "item", name = "iron-beam" }, { type = "item", name = "iron-ore" }),
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 4.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "iron-ore", 4 },
    },
    result = "iron-beam",
  },
  -- Steels
  {
    type = "recipe",
    name = "kr-s-c-steel-gear-wheel",
    icons = sc_icon({ type = "item", name = "steel-gear-wheel" }, { type = "item", name = "iron-plate" }),
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 5.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "iron-plate", 10 },
      { "coke", 2 },
    },
    result = "steel-gear-wheel",
    result_count = 5,
  },
  {
    type = "recipe",
    name = "kr-s-c-steel-beam",
    icons = sc_icon({ type = "item", name = "steel-beam" }, { type = "item", name = "iron-plate" }),
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 20.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "iron-plate", 20 },
      { "coke", 4 },
    },
    result = "steel-beam",
    result_count = 5,
  },
  -- Imersiums
  {
    type = "recipe",
    name = "kr-s-c-imersium-gear-wheel",
    icons = sc_icon({ type = "item", name = "imersium-gear-wheel" }, { type = "item", name = "imersite-powder" }),
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 2.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "imersite-powder", 3 },
      { "rare-metals", 2 },
    },
    result = "imersium-gear-wheel",
    result_count = 1,
  },
  {
    type = "recipe",
    name = "kr-s-c-imersium-beam",
    icons = sc_icon({ type = "item", name = "imersium-beam" }, { type = "item", name = "imersite-powder" }),
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 12.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "imersite-powder", 6 },
      { "rare-metals", 4 },
    },
    result = "imersium-beam",
    result_count = 1,
  },
  -- Other
  {
    type = "recipe",
    name = "kr-s-c-electronic-components",
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 12.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { "plastic-bar", 5 },
      { "stone", 12 },
      { type = "fluid", name = "water", amount = 20 },
    },
    result = "electronic-components",
    result_count = 6,
  },
}
