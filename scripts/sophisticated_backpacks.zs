
val air = <item:minecraft:air>;
val blue_gold_ingot = <tag:items:forge:ingots/blue_gold>;
var gold_backpack = <item:sophisticatedbackpacks:gold_backpack>.withTag({inventorySlots: 81 as int, upgradeSlots: 3 as int, contentsUuid: [210271675, 272780599, -1824552887, 2048547241]});
var iron_backpack = <item:sophisticatedbackpacks:iron_backpack>;
var create_filter = <item:create:filter>.withTag({Items: {}});

//Gold Backpack Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:gold_backpack");
craftingTable.addShaped("gold_backpack", <item:sophisticatedbackpacks:gold_backpack>*1, [
	[blue_gold_ingot, blue_gold_ingot, blue_gold_ingot],
	[blue_gold_ingot, iron_backpack, blue_gold_ingot],
	[blue_gold_ingot, blue_gold_ingot, blue_gold_ingot]]);
	
//Pickup Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:pickup_upgrade");

craftingTable.addShaped("sb_pickup_upgrade", <item:sophisticatedbackpacks:pickup_upgrade>*1, [
	[air, <item:create:sticky_mechanical_piston>, air],
	[<item:create:andesite_funnel>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:andesite_funnel>],
	[<item:create:shaft>, <item:create:belt_connector>, <item:create:shaft>]]);
	
//Advanced Pickup Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:advanced_pickup_upgrade");

craftingTable.addShaped("sb_adv_pickup_upgrade", <item:sophisticatedbackpacks:advanced_pickup_upgrade>*1, [
	[<item:create:extendo_grip>, <item:create:attribute_filter>, <item:create:mechanical_arm>],
	[<item:create:brass_funnel>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:brass_funnel>],
	[<item:create:shaft>, <item:create:belt_connector>, <item:create:shaft>]]);
	
//Filter Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:filter_upgrade");

craftingTable.addShaped("sb_filter_upgrade", <item:sophisticatedbackpacks:filter_upgrade>*1, [
	[<tag:items:forge:string>, create_filter, <tag:items:forge:string>],
	[<item:create:andesite_funnel>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:andesite_funnel>],
	[<tag:items:forge:string>, <item:create:chute>, <tag:items:forge:string>]]);
	
//Advanced Filter Upgrade
craftingTable.removeByName("sophisticatedbackpacks:advanced_filter_upgrade");

craftingTable.addShaped("sb_adv_filter_upgrade", <item:sophisticatedbackpacks:advanced_filter_upgrade>*1, [
	[<item:create:attribute_filter>, <item:create:attribute_filter>, <item:create:attribute_filter>],
	[<item:create:brass_funnel>, <item:sophisticatedbackpacks:filter_upgrade>, <item:create:brass_funnel>],
	[<item:create:content_observer>, <item:create:smart_chute>, <item:create:content_observer>]]);	
	
//Feeding Upgrade
craftingTable.removeByName("sophisticatedbackpacks:feeding_upgrade");

craftingTable.addShaped("sb_feeding_upgrade", <item:sophisticatedbackpacks:feeding_upgrade>*1, [
	[<item:farmersdelight:tomato>, <item:farmersdelight:oak_pantry>, <item:farmersdelight:cabbage>],
	[air, <item:sophisticatedbackpacks:upgrade_base>, air],
	[<item:farmersdelight:onion>, <item:minecraft:ender_pearl>, <item:farmersdelight:rice>]]);

//Magnet Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:magnet_upgrade");

craftingTable.addShaped("sb_magnet_upgrade", <item:sophisticatedbackpacks:magnet_upgrade>*1, [
	[air, <item:rankine:alnico_magnet>, air],
	[air, <item:sophisticatedbackpacks:upgrade_base>, air],
	[<item:minecraft:ender_pearl>, air, <item:minecraft:ender_pearl>]]);
	
//Advanced Magnet Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:advanced_magnet_upgrade");
craftingTable.removeByName("sophisticatedbackpacks:advanced_magnet_upgrade_from_basic");

craftingTable.addShaped("sb_adv_magnet_upgrade", <item:sophisticatedbackpacks:advanced_magnet_upgrade>*1, [
	[<item:rankine:rare_earth_magnet>, <item:create:attribute_filter>, <item:rankine:rare_earth_magnet>],
	[<item:create:gantry_carriage>, <item:sophisticatedbackpacks:magnet_upgrade>, air],
	[<item:create:gantry_shaft>, <item:create:gantry_shaft>, <item:create:gantry_shaft>]]);

//Void Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:void_upgrade");

craftingTable.addShaped("sb_void_upgrade", <item:sophisticatedbackpacks:void_upgrade>*1, [
	[<item:minecraft:ender_pearl>, create_filter, <item:minecraft:ender_pearl>],
	[<item:minecraft:obsidian>, <item:sophisticatedbackpacks:upgrade_base>, <item:minecraft:obsidian>],
	[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]]);
	
//Advanced Void Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:advanced_void_upgrade");

craftingTable.addShaped("sb_adv_void_upgrade", <item:sophisticatedbackpacks:advanced_void_upgrade>*1, [
	[<item:betterportals:portal_fluid_bucket>, <item:create:attribute_filter>, <item:betterportals:portal_fluid_bucket>],
	[<item:create:shadow_steel_casing>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:shadow_steel_casing>],
	[<item:create:shadow_steel_casing>, <item:create:shadow_steel_casing>, <item:create:shadow_steel_casing>]]);

//Restock Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:restock_upgrade");

craftingTable.addShaped("sb_restock_upgrade", <item:sophisticatedbackpacks:restock_upgrade>*1, [
	[air, <item:create:sticky_mechanical_piston>, air],
	[<item:create:belt_connector>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:belt_connector>],
	[<item:create:andesite_funnel>, <tag:items:storage_overhaul:tier_one_chests>, <item:create:andesite_funnel>]]);
	
//Advanced Restock Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:advanced_restock_upgrade");

craftingTable.addShaped("sb_adv_restock_upgrade", <item:sophisticatedbackpacks:advanced_restock_upgrade>*1, [
	[air, <item:create:sticky_mechanical_piston>, air],
	[<item:create:belt_connector>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:belt_connector>],
	[<item:create:brass_funnel>, <tag:items:storage_overhaul:tier_three_chests>, <item:create:brass_funnel>]]);

//Deposit Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:deposit_upgrade");

craftingTable.addShaped("sb_deposit_upgrade", <item:sophisticatedbackpacks:deposit_upgrade>*1, [
	[air, <item:create:mechanical_piston>, air],
	[<item:create:belt_connector>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:belt_connector>],
	[<item:create:andesite_funnel>, <tag:items:storage_overhaul:tier_one_chests>, <item:create:andesite_funnel>]]);
	
//Advanced Deposit Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:advanced_deposit_upgrade");

craftingTable.addShaped("sb_adv_deposit_upgrade", <item:sophisticatedbackpacks:advanced_deposit_upgrade>*1, [
	[air, <item:create:mechanical_piston>, air],
	[<item:create:belt_connector>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:belt_connector>],
	[<item:create:brass_funnel>, <tag:items:storage_overhaul:tier_three_chests>, <item:create:brass_funnel>]]);
	
//Refill Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:refill_upgrade");

craftingTable.addShaped("sb_refill_upgrade", <item:sophisticatedbackpacks:refill_upgrade>*1, [
	[air, <item:create:stockpile_switch>, air],
	[air, <item:sophisticatedbackpacks:upgrade_base>, air],
	[<item:create:andesite_funnel>, <item:create:adjustable_crate>, <item:create:andesite_funnel>]]);
	
//Upgrade Base Recipes
craftingTable.removeByName("sophisticatedbackpacks:upgrade_base");

craftingTable.addShaped("sb_upgrade_base", <item:sophisticatedbackpacks:upgrade_base>*1, [
	[<tag:items:forge:string>, <item:minecraft:leather>, <tag:items:forge:string>],
	[<item:minecraft:leather>, <item:create:portable_storage_interface>, <item:minecraft:leather>],
	[<tag:items:forge:string>, <item:minecraft:leather>, <tag:items:forge:string>]]);
	
//Crafting Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:crafting_upgrade");

craftingTable.addShaped("sb_crafting_upgrade", <item:sophisticatedbackpacks:crafting_upgrade>*1, [
	[<item:create:mechanical_crafter>, <item:create:mechanical_crafter>, <item:create:mechanical_crafter>],
	[<item:create:mechanical_crafter>, <item:sophisticatedbackpacks:upgrade_base>, <item:create:mechanical_crafter>],
	[<item:create:mechanical_crafter>, <item:create:mechanical_crafter>, <item:create:mechanical_crafter>]]);
	
//Upgrade Tool Swapper Recipes
craftingTable.removeByName("sophisticatedbackpacks:tool_swapper_upgrade");

craftingTable.addShaped("sb_tool_swapper_upgrade", <item:sophisticatedbackpacks:tool_swapper_upgrade>*1, [
	[<tag:items:forge:swords>, <item:create:mechanical_arm>, <tag:items:forge:pickaxes>],
	[air, <item:sophisticatedbackpacks:upgrade_base>, air],
	[<tag:items:forge:axes>, <item:create:weighted_ejector>, <tag:items:forge:shovels>]]);
	
//Advanced Upgrade Tool Swapper Recipes
craftingTable.removeByName("sophisticatedbackpacks:advanced_tool_swapper_upgrade");

craftingTable.addShaped("sb_adv_tool_swapper_upgrade", <item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>*1, [
	[<item:minecraft:crossbow>, <item:create:mechanical_arm>, <item:create:mechanical_drill>],
	[air, <item:sophisticatedbackpacks:upgrade_base>, air],
	[<item:create:deforester>, <item:create:weighted_ejector>, <item:create:mechanical_saw>]]);
	
//Everlasting Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:everlasting_upgrade");

craftingTable.addShaped("sb_everlasting_upgrade", <item:sophisticatedbackpacks:everlasting_upgrade>*1, [
	[<item:rankine:rare_earth_electromagnet>, <item:create:shadow_steel_casing>, <item:rankine:rare_earth_electromagnet>],
	[<item:minecraft:nether_star>, <item:sophisticatedbackpacks:upgrade_base>, <item:minecraft:nether_star>],
	[<item:rankine:trampoline>, <item:rankine:trampoline>, <item:rankine:trampoline>]]);
	
//Jukebox Upgrade Recipes
craftingTable.removeByName("sophisticatedbackpacks:jukebox_upgrade");

craftingTable.addShaped("sb_jukebox_upgrade", <item:sophisticatedbackpacks:jukebox_upgrade>*1, [
	[<tag:items:minecraft:music_discs>, air, <item:create:mechanical_arm>],
	[air, <item:sophisticatedbackpacks:upgrade_base>, air],
	[air, <item:minecraft:jukebox>, air]]);
	
//Stack Upgrade Tier 1 Recipes
craftingTable.removeByName("sophisticatedbackpacks:stack_upgrade_tier_1");

craftingTable.addShaped("sb_t1_stack_upgrade", <item:sophisticatedbackpacks:stack_upgrade_tier_1>*1, [
	[<item:create:copper_casing>, <item:rankine:aluminum_block>, <item:create:copper_casing>],
	[<item:rankine:aluminum_block>, <item:sophisticatedbackpacks:upgrade_base>, <item:rankine:aluminum_block>],
	[<item:create:copper_casing>, <item:rankine:aluminum_block>, <item:create:copper_casing>]]);
	
//Stack Upgrade Tier 2 Recipes
craftingTable.removeByName("sophisticatedbackpacks:stack_upgrade_tier_2");

craftingTable.addShaped("sb_t2_stack_upgrade", <item:sophisticatedbackpacks:stack_upgrade_tier_2>*1, [
	[<item:create:brass_casing>, <item:minecraft:gold_block>, <item:create:brass_casing>],
	[<item:minecraft:gold_block>, <item:sophisticatedbackpacks:upgrade_base>, <item:minecraft:gold_block>],
	[<item:create:brass_casing>, <item:minecraft:gold_block>, <item:create:brass_casing>]]);
	
//Stack Upgrade Tier 3 Recipes
craftingTable.removeByName("sophisticatedbackpacks:stack_upgrade_tier_3");

craftingTable.addShaped("sb_t3_stack_upgrade", <item:sophisticatedbackpacks:stack_upgrade_tier_3>*1, [
	[<item:create:refined_radiance_casing>, <item:minecraft:diamond_block>, <item:create:refined_radiance_casing>],
	[<item:minecraft:diamond_block>, <item:sophisticatedbackpacks:upgrade_base>, <item:minecraft:diamond_block>],
	[<item:create:refined_radiance_casing>, <item:minecraft:diamond_block>, <item:create:refined_radiance_casing>]]);
	
//Stack Upgrade Tier 4 Recipes
craftingTable.removeByName("sophisticatedbackpacks:stack_upgrade_tier_4");

craftingTable.addShaped("sb_t4_stack_upgrade", <item:sophisticatedbackpacks:stack_upgrade_tier_4>*1, [
	[<item:create:shadow_steel_casing>, <item:minecraft:netherite_block>, <item:create:shadow_steel_casing>],
	[<item:minecraft:netherite_block>, <item:sophisticatedbackpacks:upgrade_base>, <item:minecraft:netherite_block>],
	[<item:create:shadow_steel_casing>, <item:minecraft:netherite_block>, <item:create:shadow_steel_casing>]]);

//	Remove OP Sophisticated Backpack From JEI
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:inception_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:compacting_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:advanced_compacting_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:smelting_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:auto_smelting_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:stonecutter_upgrade>);