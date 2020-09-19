#!/usr/bin/env bash
# Mincraft random giverizer
# Requires xclip:
#    apt-get install xclip
# Or: Use Gnu Screen and the adjacent tool, do-minecraft-give.sh, to inject the give directly into Screen

# TO DO
#    Take args to set random vs number of items

GIVE=( "acacia_boat" "acacia_door" "acacia_fence" "acacia_fence_gate" "acacia_stairs" "activator_rail" "air" "anvil" "apple" "armor_stand" "arrow" "baked_potato" "banner" "beacon" "bed" "beef" "beetroot" "beetroots" "beetroot_seeds" "beetroot_soup" "birch_boat" "birch_door" "birch_fence" "birch_fence_gate" "birch_stairs" "black_glazed_terracotta" "blaze_powder" "blaze_rod" "blue_glazed_terracotta" "boat" "bone" "bone_block" "book" "bookshelf" "bow" "bowl" "bread" "brewing_stand" "brick" "brick_block" "brick_stairs" "brown_glazed_terracotta" "brown_mushroom" "brown_mushroom_block" "bucket" "cactus" "cake" "carpet" "carrot" "carrot_on_a_stick" "carrots" "cauldron" "chainmail_boots" "chainmail_chestplate" "chainmail_helmet" "chainmail_leggings" "chest" "chest_minecart" "chicken" "chorus_flower" "chorus_fruit" "chorus_plant" "clay" "clay_ball" "clock" "coal" "coal_block" "coal_ore" "cobblestone" "cobblestone_wall" "cocoa" "comparator" "compass" "concrete" "concrete_powder" "cooked_beef" "cooked_chicken" "cooked_fish" "cooked_mutton" "cooked_porkchop" "cooked_rabbit" "cookie" "crafting_table" "cyan_glazed_terracotta" "dark_oak_boat" "dark_oak_door" "dark_oak_fence" "dark_oak_fence_gate" "dark_oak_stairs" "daylight_detector" "daylight_detector_inverted" "deadbush" "detector_rail" "dirt" "dispenser" "double_plant" "double_stone_slab" "double_stone_slab2" "double_wooden_slab" "dragon_breath" "dragon_egg" "dropper" "dye" "egg" "elytra" "emerald" "emerald_block" "emerald_ore" "enchanted_book" "enchanting_table" "farmland" "feather" "fence" "fence_gate" "fermented_spider_eye" "filled_map" "fire" "fire_charge" "firework_charge" "fireworks" "fish" "fishing_rod" "flint" "flint_and_steel" "flower_pot" "flowing_lava" "flowing_water" "frosted_ice" "furnace" "furnace_minecart" "ghast_tear" "glass" "glass_pane" "glowstone" "glowstone_dust" "gold_block" "golden_apple" "golden_axe" "golden_boots" "golden_carrot" "golden_chestplate" "golden_helmet" "golden_hoe" "golden_horse_armor" "golden_leggings" "golden_pickaxe" "golden_rail" "golden_shovel" "golden_sword" "gold_ingot" "gold_nugget" "gold_ore" "grass" "grass_path" "gravel" "gray_glazed_terracotta" "green_glazed_terracotta" "gunpowder" "hardened_clay" "hay_block" "heavy_weighted_pressure_plate" "hopper" "hopper_minecart" "ice" "iron_axe" "iron_bars" "iron_block" "iron_boots" "iron_chestplate" "iron_door" "iron_helmet" "iron_hoe" "iron_horse_armor" "iron_ingot" "iron_leggings" "iron_nugget" "iron_ore" "iron_pickaxe" "iron_shovel" "iron_sword" "iron_trapdoor" "item_frame" "jukebox" "jungle_boat" "jungle_door" "jungle_fence" "jungle_fence_gate" "jungle_stairs" "knowledge_book" "ladder" "lava" "lava_bucket" "lead" "leather" "leather_boots" "leather_chestplate" "leather_helmet" "leather_leggings" "leaves" "leaves2" "lever" "light_blue_glazed_terracotta" "light_gray_glazed_terracotta" "light_weighted_pressure_plate" "lime_glazed_terracotta" "lit_furnace" "lit_pumpkin" "lit_redstone_lamp" "lit_redstone_ore" "log" "log2" "magenta_glazed_terracotta" "magma" "magma_cream" "map" "melon" "melon_block" "melon_seeds" "melon_stem" "milk_bucket" "minecart" "mob_spawner" "monster_egg" "mossy_cobblestone" "mushroom_stew" "mutton" "mycelium" "name_tag" "noteblock" "oak_stairs" "observer" "obsidian" "orange_glazed_terracotta" "packed_ice" "painting" "paper" "pink_glazed_terracotta" "piston" "piston_head" "planks" "poisonous_potato" "popped_chorus_fruit" "porkchop" "potato" "potatoes" "prismarine" "prismarine_crystals" "prismarine_shard" "pumpkin" "pumpkin_pie" "pumpkin_seeds" "pumpkin_stem" "purple_glazed_terracotta" "purpur_block" "purpur_double_slab" "purpur_pillar" "purpur_slab" "purpur_stairs" "quartz" "quartz_block" "quartz_ore" "quartz_stairs" "rabbit" "rabbit_foot" "rabbit_hide" "rabbit_stew" "rail" "record_11" "record_13" "record_blocks" "record_cat" "record_chirp" "record_far" "record_mall" "record_mellohi" "record_stal" "record_strad" "record_wait" "record_ward" "red_flower" "red_glazed_terracotta" "red_mushroom" "red_mushroom_block" "red_sandstone" "red_sandstone_stairs" "redstone" "redstone_block" "redstone_lamp" "redstone_ore" "redstone_torch" "redstone_wire" "reeds" "repeater" "rotten_flesh" "saddle" "sand" "sandstone" "sandstone_stairs" "sapling" "sea_lantern" "shears" "shield" "sign" "skull" "slime" "slime_ball" "snow" "snowball" "snow_layer" "soul_sand" "spawn_egg" "speckled_melon" "spectral_arrow" "spider_eye" "sponge" "spruce_boat" "spruce_door" "spruce_fence" "spruce_fence_gate" "spruce_stairs" "stained_glass" "stained_glass_pane" "stained_hardened_clay" "standing_banner" "standing_sign" "stick" "sticky_piston" "stone" "stone_axe" "stonebrick" "stone_brick_stairs" "stone_button" "stone_hoe" "stone_pickaxe" "stone_pressure_plate" "stone_shovel" "stone_slab" "stone_slab2" "stone_stairs" "stone_sword" "string" "structure_block" "structure_void" "sugar" "tallgrass" "tipped_arrow" "tnt" "tnt_minecart" "torch" "trapdoor" "trapped_chest" "tripwire_hook" "unlit_redstone_torch" "vine" "wall_banner" "wall_sign" "water" "water_bucket" "waterlily" "web" "wheat" "wheat_seeds" "white_glazed_terracotta" "wooden_axe" "wooden_button" "wooden_door" "wooden_hoe" "wooden_pickaxe" "wooden_pressure_plate" "wooden_shovel" "wooden_slab" "wooden_sword" "wool" "writable_book" "written_book" "yellow_flower" "yellow_glazed_terracotta")

NUMBER_ITEMS=${#GIVE[@]}
P=${1}

if [[ -z "${P}" ]]; then
    echo "Error: Need player name"
    echo "USAGE: ${0} <player_name>"
fi

RAND_ITEM=$((1 + RANDOM % NUMBER_ITEMS))

# Set AMOUNT to a random number, or a fixed number
#AMOUNT=$((1 + RANDOM % 9))
AMOUNT=1

OUT="/give $P ${GIVE[$RAND_ITEM]} $AMOUNT  "
echo -n $OUT
OS=$( uname -s )
if [[ "${OS}" == "Darwin" ]]; then
    echo -n $OUT | pbcopy
else
    echo -n $OUT | xclip -selection c
fi

exit

# DO NOT GIVE - OVERPOWERED
NO_GIVE=( "black_shulker_box" "blue_shulker_box" "brown_shulker_box" "cyan_shulker_box" "gray_shulker_box" "green_shulker_box" "light_blue_shulker_box" "lime_shulker_box" "magenta_shulker_box" "orange_shulker_box" "pink_shulker_box" "purple_shulker_box" "red_shulker_box" "shulker_shell" "silver_shulker_box" "white_shulker_box" "yellow_shulker_box" "nether_brick" "netherbrick" "nether_brick_fence" "nether_brick_stairs" "netherrack" "nether_star" "nether_wart" "nether_wart_block" "red_nether_brick" "lingering_potion" "potion" "splash_potion" "diamond" "diamond_axe" "diamond_block" "diamond_boots" "diamond_chestplate" "diamond_helmet" "diamond_hoe" "diamond_horse_armor" "diamond_leggings" "diamond_ore" "diamond_pickaxe" "diamond_shovel" "diamond_sword" "end_bricks" "end_crystal" "end_gateway" "end_portal" "end_portal_frame" "end_rod" "end_stone" "ender_chest" "ender_eye" "ender_pearl" "chain_command_block" "command_block" "command_block_minecart" "repeating_command_block" "bedrock" "barrier" "portal" "lapis_block" "lapis_ore" "totem_of_undying" "experience_bottle" "glass_bottle" "powered_comparator" "powered_repeater" "unpowered_comparator" "unpowered_repeater")
