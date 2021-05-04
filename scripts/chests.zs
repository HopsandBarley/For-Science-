import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.item.IIngredient;
import stdlib.List;

var air = <item:minecraft:air>;
var stone_buttons = <tag:items:forge:stone_buttons>;

//Tier 1 Chests Tag
<tag:items:storage_overhaul:tier_one_chests>.add(<item:storage_overhaul:oak_chest_tier_1>);
<tag:items:storage_overhaul:tier_one_chests>.add(<item:storage_overhaul:spruce_chest_tier_1>);
<tag:items:storage_overhaul:tier_one_chests>.add(<item:storage_overhaul:birch_chest_tier_1>);
<tag:items:storage_overhaul:tier_one_chests>.add(<item:storage_overhaul:dark_oak_chest_tier_1>);
<tag:items:storage_overhaul:tier_one_chests>.add(<item:storage_overhaul:jungle_chest_tier_1>);
<tag:items:storage_overhaul:tier_one_chests>.add(<item:storage_overhaul:acacia_chest_tier_1>);
<tag:items:storage_overhaul:tier_one_chests>.add(<item:storage_overhaul:warped_chest_tier_1>);
<tag:items:storage_overhaul:tier_one_chests>.add(<item:storage_overhaul:crimson_chest_tier_1>);

//Tier 1 Barrels Tag
<tag:items:storage_overhaul:tier_one_barrels>.add(<item:storage_overhaul:oak_barrel_tier_1>);
<tag:items:storage_overhaul:tier_one_barrels>.add(<item:storage_overhaul:spruce_barrel_tier_1>);
<tag:items:storage_overhaul:tier_one_barrels>.add(<item:storage_overhaul:birch_barrel_tier_1>);
<tag:items:storage_overhaul:tier_one_barrels>.add(<item:storage_overhaul:dark_oak_barrel_tier_1>);
<tag:items:storage_overhaul:tier_one_barrels>.add(<item:storage_overhaul:jungle_barrel_tier_1>);
<tag:items:storage_overhaul:tier_one_barrels>.add(<item:storage_overhaul:acacia_barrel_tier_1>);
<tag:items:storage_overhaul:tier_one_barrels>.add(<item:storage_overhaul:warped_barrel_tier_1>);
<tag:items:storage_overhaul:tier_one_barrels>.add(<item:storage_overhaul:crimson_barrel_tier_1>);

//Tier 2 Chests Tag
<tag:items:storage_overhaul:tier_two_chests>.add(<item:storage_overhaul:oak_chest_tier_2>);
<tag:items:storage_overhaul:tier_two_chests>.add(<item:storage_overhaul:spruce_chest_tier_2>);
<tag:items:storage_overhaul:tier_two_chests>.add(<item:storage_overhaul:birch_chest_tier_2>);
<tag:items:storage_overhaul:tier_two_chests>.add(<item:storage_overhaul:dark_oak_chest_tier_2>);
<tag:items:storage_overhaul:tier_two_chests>.add(<item:storage_overhaul:jungle_chest_tier_2>);
<tag:items:storage_overhaul:tier_two_chests>.add(<item:storage_overhaul:acacia_chest_tier_2>);
<tag:items:storage_overhaul:tier_two_chests>.add(<item:storage_overhaul:warped_chest_tier_2>);
<tag:items:storage_overhaul:tier_two_chests>.add(<item:storage_overhaul:crimson_chest_tier_2>);

//Tier 2 Barrels Tag
<tag:items:storage_overhaul:tier_two_barrels>.add(<item:storage_overhaul:oak_barrel_tier_2>);
<tag:items:storage_overhaul:tier_two_barrels>.add(<item:storage_overhaul:spruce_barrel_tier_2>);
<tag:items:storage_overhaul:tier_two_barrels>.add(<item:storage_overhaul:birch_barrel_tier_2>);
<tag:items:storage_overhaul:tier_two_barrels>.add(<item:storage_overhaul:dark_oak_barrel_tier_2>);
<tag:items:storage_overhaul:tier_two_barrels>.add(<item:storage_overhaul:jungle_barrel_tier_2>);
<tag:items:storage_overhaul:tier_two_barrels>.add(<item:storage_overhaul:acacia_barrel_tier_2>);
<tag:items:storage_overhaul:tier_two_barrels>.add(<item:storage_overhaul:warped_barrel_tier_2>);
<tag:items:storage_overhaul:tier_two_barrels>.add(<item:storage_overhaul:crimson_barrel_tier_2>);

//Tier 3 Chests Tag
<tag:items:storage_overhaul:tier_three_chests>.add(<item:storage_overhaul:oak_chest_tier_3>);
<tag:items:storage_overhaul:tier_three_chests>.add(<item:storage_overhaul:spruce_chest_tier_3>);
<tag:items:storage_overhaul:tier_three_chests>.add(<item:storage_overhaul:birch_chest_tier_3>);
<tag:items:storage_overhaul:tier_three_chests>.add(<item:storage_overhaul:dark_oak_chest_tier_3>);
<tag:items:storage_overhaul:tier_three_chests>.add(<item:storage_overhaul:jungle_chest_tier_3>);
<tag:items:storage_overhaul:tier_three_chests>.add(<item:storage_overhaul:acacia_chest_tier_3>);
<tag:items:storage_overhaul:tier_three_chests>.add(<item:storage_overhaul:warped_chest_tier_3>);
<tag:items:storage_overhaul:tier_three_chests>.add(<item:storage_overhaul:crimson_chest_tier_3>);

//Tier 3 Barrels Tag
<tag:items:storage_overhaul:tier_three_barrels>.add(<item:storage_overhaul:oak_barrel_tier_3>);
<tag:items:storage_overhaul:tier_three_barrels>.add(<item:storage_overhaul:spruce_barrel_tier_3>);
<tag:items:storage_overhaul:tier_three_barrels>.add(<item:storage_overhaul:birch_barrel_tier_3>);
<tag:items:storage_overhaul:tier_three_barrels>.add(<item:storage_overhaul:dark_oak_barrel_tier_3>);
<tag:items:storage_overhaul:tier_three_barrels>.add(<item:storage_overhaul:jungle_barrel_tier_3>);
<tag:items:storage_overhaul:tier_three_barrels>.add(<item:storage_overhaul:acacia_barrel_tier_3>);
<tag:items:storage_overhaul:tier_three_barrels>.add(<item:storage_overhaul:warped_barrel_tier_3>);
<tag:items:storage_overhaul:tier_three_barrels>.add(<item:storage_overhaul:crimson_barrel_tier_3>);


//Update Vanilla Chest Recipe
craftingTable.removeByName("minecraft:chest");

craftingTable.addShaped("chest", <item:minecraft:chest>*1, [
	[<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>],
	[<tag:items:minecraft:planks>, stone_buttons, <tag:items:minecraft:planks>],
	[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);


//Update Storage Overhaul Chest Recipes
craftingTable.removeByName("storage_overhaul:oak_chest");

craftingTable.addShaped("oak_chest", <item:storage_overhaul:oak_chest>*1, [
	[<item:minecraft:oak_slab>, <item:minecraft:oak_slab>, <item:minecraft:oak_slab>],
	[<item:minecraft:oak_planks>, stone_buttons, <item:minecraft:oak_planks>],
	[<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_chest");

craftingTable.addShaped("spruce_chest", <item:storage_overhaul:spruce_chest>*1, [
	[<item:minecraft:spruce_slab>, <item:minecraft:spruce_slab>, <item:minecraft:spruce_slab>],
	[<item:minecraft:spruce_planks>, stone_buttons, <item:minecraft:spruce_planks>],
	[<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>]]);
	
craftingTable.removeByName("storage_overhaul:birch_chest");

craftingTable.addShaped("birch_chest", <item:storage_overhaul:birch_chest>*1, [
	[<item:minecraft:birch_slab>, <item:minecraft:birch_slab>, <item:minecraft:birch_slab>],
	[<item:minecraft:birch_planks>, stone_buttons, <item:minecraft:birch_planks>],
	[<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_chest");

craftingTable.addShaped("acacia_chest", <item:storage_overhaul:acacia_chest>*1, [
	[<item:minecraft:acacia_slab>, <item:minecraft:acacia_slab>, <item:minecraft:acacia_slab>],
	[<item:minecraft:acacia_planks>, stone_buttons, <item:minecraft:acacia_planks>],
	[<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_chest");

craftingTable.addShaped("jungle_chest", <item:storage_overhaul:jungle_chest>*1, [
	[<item:minecraft:jungle_slab>, <item:minecraft:jungle_slab>, <item:minecraft:jungle_slab>],
	[<item:minecraft:jungle_planks>, stone_buttons, <item:minecraft:jungle_planks>],
	[<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_chest");

craftingTable.addShaped("dark_oak_chest", <item:storage_overhaul:dark_oak_chest>*1, [
	[<item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_slab>],
	[<item:minecraft:dark_oak_planks>, stone_buttons, <item:minecraft:dark_oak_planks>],
	[<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_chest");

craftingTable.addShaped("crimson_chest", <item:storage_overhaul:crimson_chest>*1, [
	[<item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>],
	[<item:minecraft:crimson_planks>, stone_buttons, <item:minecraft:crimson_planks>],
	[<item:minecraft:crimson_planks>, <item:minecraft:crimson_planks>, <item:minecraft:crimson_planks>]]);
	
craftingTable.removeByName("storage_overhaul:warped_chest");

craftingTable.addShaped("warped_chest", <item:storage_overhaul:warped_chest>*1, [
	[<item:minecraft:warped_slab>, <item:minecraft:warped_slab>, <item:minecraft:warped_slab>],
	[<item:minecraft:warped_planks>, stone_buttons, <item:minecraft:warped_planks>],
	[<item:minecraft:warped_planks>, <item:minecraft:warped_planks>, <item:minecraft:warped_planks>]]);

//Update Storage Overhaul Chest Tier 1 Recipes	
craftingTable.removeByName("storage_overhaul:oak_chest_tier_1");

craftingTable.addShaped("oak_chest_tier_1", <item:storage_overhaul:oak_chest_tier_1>*1, [
	[<item:minecraft:oak_slab>, <item:minecraft:oak_slab>, <item:minecraft:oak_slab>],
	[<item:minecraft:oak_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:oak_planks>],
	[<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_chest_tier_1");

craftingTable.addShaped("spruce_chest_tier_1", <item:storage_overhaul:spruce_chest_tier_1>*1, [
	[<item:minecraft:spruce_slab>, <item:minecraft:spruce_slab>, <item:minecraft:spruce_slab>],
	[<item:minecraft:spruce_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:spruce_planks>],
	[<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>]]);
	
craftingTable.removeByName("storage_overhaul:birch_chest_tier_1");

craftingTable.addShaped("birch_chest_tier_1", <item:storage_overhaul:birch_chest_tier_1>*1, [
	[<item:minecraft:birch_slab>, <item:minecraft:birch_slab>, <item:minecraft:birch_slab>],
	[<item:minecraft:birch_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:birch_planks>],
	[<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_chest_tier_1");

craftingTable.addShaped("acacia_chest_tier_1", <item:storage_overhaul:acacia_chest_tier_1>*1, [
	[<item:minecraft:acacia_slab>, <item:minecraft:acacia_slab>, <item:minecraft:acacia_slab>],
	[<item:minecraft:acacia_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:acacia_planks>],
	[<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_chest_tier_1");

craftingTable.addShaped("jungle_chest_tier_1", <item:storage_overhaul:jungle_chest_tier_1>*1, [
	[<item:minecraft:jungle_slab>, <item:minecraft:jungle_slab>, <item:minecraft:jungle_slab>],
	[<item:minecraft:jungle_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:jungle_planks>],
	[<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_chest_tier_1");

craftingTable.addShaped("dark_oak_chest_tier_1", <item:storage_overhaul:dark_oak_chest_tier_1>*1, [
	[<item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_slab>],
	[<item:minecraft:dark_oak_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:dark_oak_planks>],
	[<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_chest_tier_1");

craftingTable.addShaped("crimson_chest_tier_1", <item:storage_overhaul:crimson_chest_tier_1>*1, [
	[<item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>],
	[<item:minecraft:crimson_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:crimson_planks>],
	[<item:minecraft:crimson_planks>, <item:minecraft:crimson_planks>, <item:minecraft:crimson_planks>]]);
	
craftingTable.removeByName("storage_overhaul:warped_chest_tier_1");

craftingTable.addShaped("warped_chest_tier_1", <item:storage_overhaul:warped_chest_tier_1>*1, [
	[<item:minecraft:warped_slab>, <item:minecraft:warped_slab>, <item:minecraft:warped_slab>],
	[<item:minecraft:warped_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:warped_planks>],
	[<item:minecraft:warped_planks>, <item:minecraft:warped_planks>, <item:minecraft:warped_planks>]]);
	
//Update Storage Overhaul Chest Tier 2 Recipes	
craftingTable.removeByName("storage_overhaul:oak_chest_tier_2");

craftingTable.addShaped("oak_chest_tier_2", <item:storage_overhaul:oak_chest_tier_2>*1, [
	[<item:minecraft:oak_slab>, <item:minecraft:oak_slab>, <item:minecraft:oak_slab>],
	[<item:minecraft:oak_planks>, <tag:items:forge:ingots/gold>, <item:minecraft:oak_planks>],
	[<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_chest_tier_2");

craftingTable.addShaped("spruce_chest_tier_2", <item:storage_overhaul:spruce_chest_tier_2>*1, [
	[<item:minecraft:spruce_slab>, <item:minecraft:spruce_slab>, <item:minecraft:spruce_slab>],
	[<item:minecraft:spruce_planks>, <tag:items:forge:ingots/gold>, <item:minecraft:spruce_planks>],
	[<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>]]);
	
craftingTable.removeByName("storage_overhaul:birch_chest_tier_2");

craftingTable.addShaped("birch_chest_tier_2", <item:storage_overhaul:birch_chest_tier_2>*1, [
	[<item:minecraft:birch_slab>, <item:minecraft:birch_slab>, <item:minecraft:birch_slab>],
	[<item:minecraft:birch_planks>, <tag:items:forge:ingots/gold>, <item:minecraft:birch_planks>],
	[<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_chest_tier_2");

craftingTable.addShaped("acacia_chest_tier_2", <item:storage_overhaul:acacia_chest_tier_2>*1, [
	[<item:minecraft:acacia_slab>, <item:minecraft:acacia_slab>, <item:minecraft:acacia_slab>],
	[<item:minecraft:acacia_planks>, <tag:items:forge:ingots/gold>, <item:minecraft:acacia_planks>],
	[<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_chest_tier_2");

craftingTable.addShaped("jungle_chest_tier_2", <item:storage_overhaul:jungle_chest_tier_2>*1, [
	[<item:minecraft:jungle_slab>, <item:minecraft:jungle_slab>, <item:minecraft:jungle_slab>],
	[<item:minecraft:jungle_planks>, <tag:items:forge:ingots/gold>, <item:minecraft:jungle_planks>],
	[<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_chest_tier_2");

craftingTable.addShaped("dark_oak_chest_tier_2", <item:storage_overhaul:dark_oak_chest_tier_2>*1, [
	[<item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_slab>],
	[<item:minecraft:dark_oak_planks>, <tag:items:forge:ingots/gold>, <item:minecraft:dark_oak_planks>],
	[<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_chest_tier_2");

craftingTable.addShaped("crimson_chest_tier_2", <item:storage_overhaul:crimson_chest_tier_2>*1, [
	[<item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>],
	[<item:minecraft:crimson_planks>, <tag:items:forge:ingots/gold>, <item:minecraft:crimson_planks>],
	[<item:minecraft:crimson_planks>, <item:minecraft:crimson_planks>, <item:minecraft:crimson_planks>]]);
	
craftingTable.removeByName("storage_overhaul:warped_chest_tier_2");

craftingTable.addShaped("warped_chest_tier_2", <item:storage_overhaul:warped_chest_tier_2>*1, [
	[<item:minecraft:warped_slab>, <item:minecraft:warped_slab>, <item:minecraft:warped_slab>],
	[<item:minecraft:warped_planks>, <tag:items:forge:ingots/gold>, <item:minecraft:warped_planks>],
	[<item:minecraft:warped_planks>, <item:minecraft:warped_planks>, <item:minecraft:warped_planks>]]);
	
//Update Storage Overhaul Chest Tier 3 Recipes	
craftingTable.removeByName("storage_overhaul:oak_chest_tier_3");

craftingTable.addShaped("oak_chest_tier_3", <item:storage_overhaul:oak_chest_tier_3>*1, [
	[<item:minecraft:oak_slab>, <item:minecraft:oak_slab>, <item:minecraft:oak_slab>],
	[<item:minecraft:oak_planks>, <tag:items:forge:gems/diamond>, <item:minecraft:oak_planks>],
	[<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_chest_tier_3");

craftingTable.addShaped("spruce_chest_tier_3", <item:storage_overhaul:spruce_chest_tier_3>*1, [
	[<item:minecraft:spruce_slab>, <item:minecraft:spruce_slab>, <item:minecraft:spruce_slab>],
	[<item:minecraft:spruce_planks>, <tag:items:forge:gems/diamond>, <item:minecraft:spruce_planks>],
	[<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>]]);
	
craftingTable.removeByName("storage_overhaul:birch_chest_tier_3");

craftingTable.addShaped("birch_chest_tier_3", <item:storage_overhaul:birch_chest_tier_3>*1, [
	[<item:minecraft:birch_slab>, <item:minecraft:birch_slab>, <item:minecraft:birch_slab>],
	[<item:minecraft:birch_planks>, <tag:items:forge:gems/diamond>, <item:minecraft:birch_planks>],
	[<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_chest_tier_3");

craftingTable.addShaped("acacia_chest_tier_3", <item:storage_overhaul:acacia_chest_tier_3>*1, [
	[<item:minecraft:acacia_slab>, <item:minecraft:acacia_slab>, <item:minecraft:acacia_slab>],
	[<item:minecraft:acacia_planks>, <tag:items:forge:gems/diamond>, <item:minecraft:acacia_planks>],
	[<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_chest_tier_3");

craftingTable.addShaped("jungle_chest_tier_3", <item:storage_overhaul:jungle_chest_tier_3>*1, [
	[<item:minecraft:jungle_slab>, <item:minecraft:jungle_slab>, <item:minecraft:jungle_slab>],
	[<item:minecraft:jungle_planks>, <tag:items:forge:gems/diamond>, <item:minecraft:jungle_planks>],
	[<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_chest_tier_3");

craftingTable.addShaped("dark_oak_chest_tier_3", <item:storage_overhaul:dark_oak_chest_tier_3>*1, [
	[<item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_slab>],
	[<item:minecraft:dark_oak_planks>, <tag:items:forge:gems/diamond>, <item:minecraft:dark_oak_planks>],
	[<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_chest_tier_3");

craftingTable.addShaped("crimson_chest_tier_3", <item:storage_overhaul:crimson_chest_tier_3>*1, [
	[<item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>],
	[<item:minecraft:crimson_planks>, <tag:items:forge:gems/diamond>, <item:minecraft:crimson_planks>],
	[<item:minecraft:crimson_planks>, <item:minecraft:crimson_planks>, <item:minecraft:crimson_planks>]]);
	
craftingTable.removeByName("storage_overhaul:warped_chest_tier_3");

craftingTable.addShaped("warped_chest_tier_3", <item:storage_overhaul:warped_chest_tier_3>*1, [
	[<item:minecraft:warped_slab>, <item:minecraft:warped_slab>, <item:minecraft:warped_slab>],
	[<item:minecraft:warped_planks>, <tag:items:forge:gems/diamond>, <item:minecraft:warped_planks>],
	[<item:minecraft:warped_planks>, <item:minecraft:warped_planks>, <item:minecraft:warped_planks>]]);
	
//Update Storage Overhaul Barrel Recipes
craftingTable.removeByName("storage_overhaul:oak_barrel");

craftingTable.addShaped("oak_barrel", <item:storage_overhaul:oak_barrel>*1, [
	[<item:buildersaddition:oak_vertical_slab>, <item:minecraft:oak_slab>, <item:buildersaddition:oak_vertical_slab>],
	[<item:buildersaddition:oak_vertical_slab>, stone_buttons, <item:buildersaddition:oak_vertical_slab>],
	[<item:buildersaddition:oak_vertical_slab>, <item:minecraft:oak_slab>, <item:buildersaddition:oak_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_barrel");

craftingTable.addShaped("spruce_barrel", <item:storage_overhaul:spruce_barrel>*1, [
	[<item:buildersaddition:spruce_vertical_slab>, <item:minecraft:spruce_slab>, <item:buildersaddition:spruce_vertical_slab>],
	[<item:buildersaddition:spruce_vertical_slab>, stone_buttons, <item:buildersaddition:spruce_vertical_slab>],
	[<item:buildersaddition:spruce_vertical_slab>, <item:minecraft:spruce_slab>, <item:buildersaddition:spruce_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:birch_barrel");

craftingTable.addShaped("birch_barrel", <item:storage_overhaul:birch_barrel>*1, [
	[<item:buildersaddition:birch_vertical_slab>, <item:minecraft:birch_slab>, <item:buildersaddition:birch_vertical_slab>],
	[<item:buildersaddition:birch_vertical_slab>, stone_buttons, <item:buildersaddition:birch_vertical_slab>],
	[<item:buildersaddition:birch_vertical_slab>, <item:minecraft:birch_slab>, <item:buildersaddition:birch_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_barrel");

craftingTable.addShaped("acacia_barrel", <item:storage_overhaul:acacia_barrel>*1, [
	[<item:buildersaddition:acacia_vertical_slab>, <item:minecraft:acacia_slab>, <item:buildersaddition:acacia_vertical_slab>],
	[<item:buildersaddition:acacia_vertical_slab>, stone_buttons, <item:buildersaddition:acacia_vertical_slab>],
	[<item:buildersaddition:acacia_vertical_slab>, <item:minecraft:acacia_slab>, <item:buildersaddition:acacia_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_barrel");

craftingTable.addShaped("jungle_barrel", <item:storage_overhaul:jungle_barrel>*1, [
	[<item:buildersaddition:jungle_vertical_slab>, <item:minecraft:jungle_slab>, <item:buildersaddition:jungle_vertical_slab>],
	[<item:buildersaddition:jungle_vertical_slab>, stone_buttons, <item:buildersaddition:jungle_vertical_slab>],
	[<item:buildersaddition:jungle_vertical_slab>, <item:minecraft:jungle_slab>, <item:buildersaddition:jungle_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_barrel");

craftingTable.addShaped("dark_oak_barrel", <item:storage_overhaul:dark_oak_barrel>*1, [
	[<item:buildersaddition:dark_oak_vertical_slab>, <item:minecraft:dark_oak_slab>, <item:buildersaddition:dark_oak_vertical_slab>],
	[<item:buildersaddition:dark_oak_vertical_slab>, stone_buttons, <item:buildersaddition:dark_oak_vertical_slab>],
	[<item:buildersaddition:dark_oak_vertical_slab>, <item:minecraft:dark_oak_slab>, <item:buildersaddition:dark_oak_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_barrel");

craftingTable.addShaped("crimson_barrel", <item:storage_overhaul:crimson_barrel>*1, [
	[<item:buildersaddition:crimson_vertical_slab>, <item:minecraft:crimson_slab>, <item:buildersaddition:crimson_vertical_slab>],
	[<item:buildersaddition:crimson_vertical_slab>, stone_buttons, <item:buildersaddition:crimson_vertical_slab>],
	[<item:buildersaddition:crimson_vertical_slab>, <item:minecraft:crimson_slab>, <item:buildersaddition:crimson_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:warped_barrel");

craftingTable.addShaped("warped_barrel", <item:storage_overhaul:warped_barrel>*1, [
	[<item:buildersaddition:warped_vertical_slab>, <item:minecraft:warped_slab>, <item:buildersaddition:warped_vertical_slab>],
	[<item:buildersaddition:warped_vertical_slab>, stone_buttons, <item:buildersaddition:warped_vertical_slab>],
	[<item:buildersaddition:warped_vertical_slab>, <item:minecraft:warped_slab>, <item:buildersaddition:warped_vertical_slab>]]);
	
//Update Storage Overhaul Barrel Tier 1 Recipes
craftingTable.removeByName("storage_overhaul:oak_barrel_tier_1");

craftingTable.addShaped("oak_barrel_tier_1", <item:storage_overhaul:oak_barrel_tier_1>*1, [
	[<item:buildersaddition:oak_vertical_slab>, <item:minecraft:oak_slab>, <item:buildersaddition:oak_vertical_slab>],
	[<item:buildersaddition:oak_vertical_slab>, <tag:items:forge:ingots/iron>, <item:buildersaddition:oak_vertical_slab>],
	[<item:buildersaddition:oak_vertical_slab>, <item:minecraft:oak_slab>, <item:buildersaddition:oak_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_barrel_tier_1");

craftingTable.addShaped("spruce_barrel_tier_1", <item:storage_overhaul:spruce_barrel_tier_1>*1, [
	[<item:buildersaddition:spruce_vertical_slab>, <item:minecraft:spruce_slab>, <item:buildersaddition:spruce_vertical_slab>],
	[<item:buildersaddition:spruce_vertical_slab>, <tag:items:forge:ingots/iron>, <item:buildersaddition:spruce_vertical_slab>],
	[<item:buildersaddition:spruce_vertical_slab>, <item:minecraft:spruce_slab>, <item:buildersaddition:spruce_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:birch_barrel_tier_1");

craftingTable.addShaped("birch_barrel_tier_1", <item:storage_overhaul:birch_barrel_tier_1>*1, [
	[<item:buildersaddition:birch_vertical_slab>, <item:minecraft:birch_slab>, <item:buildersaddition:birch_vertical_slab>],
	[<item:buildersaddition:birch_vertical_slab>, <tag:items:forge:ingots/iron>, <item:buildersaddition:birch_vertical_slab>],
	[<item:buildersaddition:birch_vertical_slab>, <item:minecraft:birch_slab>, <item:buildersaddition:birch_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_barrel_tier_1");

craftingTable.addShaped("acacia_barrel_tier_1", <item:storage_overhaul:acacia_barrel_tier_1>*1, [
	[<item:buildersaddition:acacia_vertical_slab>, <item:minecraft:acacia_slab>, <item:buildersaddition:acacia_vertical_slab>],
	[<item:buildersaddition:acacia_vertical_slab>, <tag:items:forge:ingots/iron>, <item:buildersaddition:acacia_vertical_slab>],
	[<item:buildersaddition:acacia_vertical_slab>, <item:minecraft:acacia_slab>, <item:buildersaddition:acacia_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_barrel_tier_1");

craftingTable.addShaped("jungle_barrel_tier_1", <item:storage_overhaul:jungle_barrel_tier_1>*1, [
	[<item:buildersaddition:jungle_vertical_slab>, <item:minecraft:jungle_slab>, <item:buildersaddition:jungle_vertical_slab>],
	[<item:buildersaddition:jungle_vertical_slab>, <tag:items:forge:ingots/iron>, <item:buildersaddition:jungle_vertical_slab>],
	[<item:buildersaddition:jungle_vertical_slab>, <item:minecraft:jungle_slab>, <item:buildersaddition:jungle_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_barrel_tier_1");

craftingTable.addShaped("dark_oak_barrel_tier_1", <item:storage_overhaul:dark_oak_barrel_tier_1>*1, [
	[<item:buildersaddition:dark_oak_vertical_slab>, <item:minecraft:dark_oak_slab>, <item:buildersaddition:dark_oak_vertical_slab>],
	[<item:buildersaddition:dark_oak_vertical_slab>, <tag:items:forge:ingots/iron>, <item:buildersaddition:dark_oak_vertical_slab>],
	[<item:buildersaddition:dark_oak_vertical_slab>, <item:minecraft:dark_oak_slab>, <item:buildersaddition:dark_oak_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_barrel_tier_1");

craftingTable.addShaped("crimson_barrel_tier_1", <item:storage_overhaul:crimson_barrel_tier_1>*1, [
	[<item:buildersaddition:crimson_vertical_slab>, <item:minecraft:crimson_slab>, <item:buildersaddition:crimson_vertical_slab>],
	[<item:buildersaddition:crimson_vertical_slab>, <tag:items:forge:ingots/iron>, <item:buildersaddition:crimson_vertical_slab>],
	[<item:buildersaddition:crimson_vertical_slab>, <item:minecraft:crimson_slab>, <item:buildersaddition:crimson_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:warped_barrel_tier_1");

craftingTable.addShaped("warped_barrel_tier_1", <item:storage_overhaul:warped_barrel_tier_1>*1, [
	[<item:buildersaddition:warped_vertical_slab>, <item:minecraft:warped_slab>, <item:buildersaddition:warped_vertical_slab>],
	[<item:buildersaddition:warped_vertical_slab>, <tag:items:forge:ingots/iron>, <item:buildersaddition:warped_vertical_slab>],
	[<item:buildersaddition:warped_vertical_slab>, <item:minecraft:warped_slab>, <item:buildersaddition:warped_vertical_slab>]]);
	
//Update Storage Overhaul Barrel Tier 2 Recipes
craftingTable.removeByName("storage_overhaul:oak_barrel_tier_2");

craftingTable.addShaped("oak_barrel_tier_2", <item:storage_overhaul:oak_barrel_tier_2>*1, [
	[<item:buildersaddition:oak_vertical_slab>, <item:minecraft:oak_slab>, <item:buildersaddition:oak_vertical_slab>],
	[<item:buildersaddition:oak_vertical_slab>, <tag:items:forge:ingots/gold>, <item:buildersaddition:oak_vertical_slab>],
	[<item:buildersaddition:oak_vertical_slab>, <item:minecraft:oak_slab>, <item:buildersaddition:oak_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_barrel_tier_2");

craftingTable.addShaped("spruce_barrel_tier_2", <item:storage_overhaul:spruce_barrel_tier_2>*1, [
	[<item:buildersaddition:spruce_vertical_slab>, <item:minecraft:spruce_slab>, <item:buildersaddition:spruce_vertical_slab>],
	[<item:buildersaddition:spruce_vertical_slab>, <tag:items:forge:ingots/gold>, <item:buildersaddition:spruce_vertical_slab>],
	[<item:buildersaddition:spruce_vertical_slab>, <item:minecraft:spruce_slab>, <item:buildersaddition:spruce_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:birch_barrel_tier_2");

craftingTable.addShaped("birch_barrel_tier_2", <item:storage_overhaul:birch_barrel_tier_2>*1, [
	[<item:buildersaddition:birch_vertical_slab>, <item:minecraft:birch_slab>, <item:buildersaddition:birch_vertical_slab>],
	[<item:buildersaddition:birch_vertical_slab>, <tag:items:forge:ingots/gold>, <item:buildersaddition:birch_vertical_slab>],
	[<item:buildersaddition:birch_vertical_slab>, <item:minecraft:birch_slab>, <item:buildersaddition:birch_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_barrel_tier_2");

craftingTable.addShaped("acacia_barrel_tier_2", <item:storage_overhaul:acacia_barrel_tier_2>*1, [
	[<item:buildersaddition:acacia_vertical_slab>, <item:minecraft:acacia_slab>, <item:buildersaddition:acacia_vertical_slab>],
	[<item:buildersaddition:acacia_vertical_slab>, <tag:items:forge:ingots/gold>, <item:buildersaddition:acacia_vertical_slab>],
	[<item:buildersaddition:acacia_vertical_slab>, <item:minecraft:acacia_slab>, <item:buildersaddition:acacia_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_barrel_tier_2");

craftingTable.addShaped("jungle_barrel_tier_2", <item:storage_overhaul:jungle_barrel_tier_2>*1, [
	[<item:buildersaddition:jungle_vertical_slab>, <item:minecraft:jungle_slab>, <item:buildersaddition:jungle_vertical_slab>],
	[<item:buildersaddition:jungle_vertical_slab>, <tag:items:forge:ingots/gold>, <item:buildersaddition:jungle_vertical_slab>],
	[<item:buildersaddition:jungle_vertical_slab>, <item:minecraft:jungle_slab>, <item:buildersaddition:jungle_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_barrel_tier_2");

craftingTable.addShaped("dark_oak_barrel_tier_2", <item:storage_overhaul:dark_oak_barrel_tier_2>*1, [
	[<item:buildersaddition:dark_oak_vertical_slab>, <item:minecraft:dark_oak_slab>, <item:buildersaddition:dark_oak_vertical_slab>],
	[<item:buildersaddition:dark_oak_vertical_slab>, <tag:items:forge:ingots/gold>, <item:buildersaddition:dark_oak_vertical_slab>],
	[<item:buildersaddition:dark_oak_vertical_slab>, <item:minecraft:dark_oak_slab>, <item:buildersaddition:dark_oak_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_barrel_tier_2");

craftingTable.addShaped("crimson_barrel_tier_2", <item:storage_overhaul:crimson_barrel_tier_2>*1, [
	[<item:buildersaddition:crimson_vertical_slab>, <item:minecraft:crimson_slab>, <item:buildersaddition:crimson_vertical_slab>],
	[<item:buildersaddition:crimson_vertical_slab>, <tag:items:forge:ingots/gold>, <item:buildersaddition:crimson_vertical_slab>],
	[<item:buildersaddition:crimson_vertical_slab>, <item:minecraft:crimson_slab>, <item:buildersaddition:crimson_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:warped_barrel_tier_2");

craftingTable.addShaped("warped_barrel_tier_2", <item:storage_overhaul:warped_barrel_tier_2>*1, [
	[<item:buildersaddition:warped_vertical_slab>, <item:minecraft:warped_slab>, <item:buildersaddition:warped_vertical_slab>],
	[<item:buildersaddition:warped_vertical_slab>, <tag:items:forge:ingots/gold>, <item:buildersaddition:warped_vertical_slab>],
	[<item:buildersaddition:warped_vertical_slab>, <item:minecraft:warped_slab>, <item:buildersaddition:warped_vertical_slab>]]);
	
//Update Storage Overhaul Barrel Tier 3 Recipes
craftingTable.removeByName("storage_overhaul:oak_barrel_tier_3");

craftingTable.addShaped("oak_barrel_tier_3", <item:storage_overhaul:oak_barrel_tier_3>*1, [
	[<item:buildersaddition:oak_vertical_slab>, <item:minecraft:oak_slab>, <item:buildersaddition:oak_vertical_slab>],
	[<item:buildersaddition:oak_vertical_slab>, <tag:items:forge:gems/diamond>, <item:buildersaddition:oak_vertical_slab>],
	[<item:buildersaddition:oak_vertical_slab>, <item:minecraft:oak_slab>, <item:buildersaddition:oak_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_barrel_tier_3");

craftingTable.addShaped("spruce_barrel_tier_3", <item:storage_overhaul:spruce_barrel_tier_3>*1, [
	[<item:buildersaddition:spruce_vertical_slab>, <item:minecraft:spruce_slab>, <item:buildersaddition:spruce_vertical_slab>],
	[<item:buildersaddition:spruce_vertical_slab>, <tag:items:forge:gems/diamond>, <item:buildersaddition:spruce_vertical_slab>],
	[<item:buildersaddition:spruce_vertical_slab>, <item:minecraft:spruce_slab>, <item:buildersaddition:spruce_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:birch_barrel_tier_3");

craftingTable.addShaped("birch_barrel_tier_3", <item:storage_overhaul:birch_barrel_tier_3>*1, [
	[<item:buildersaddition:birch_vertical_slab>, <item:minecraft:birch_slab>, <item:buildersaddition:birch_vertical_slab>],
	[<item:buildersaddition:birch_vertical_slab>, <tag:items:forge:gems/diamond>, <item:buildersaddition:birch_vertical_slab>],
	[<item:buildersaddition:birch_vertical_slab>, <item:minecraft:birch_slab>, <item:buildersaddition:birch_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_barrel_tier_3");

craftingTable.addShaped("acacia_barrel_tier_3", <item:storage_overhaul:acacia_barrel_tier_3>*1, [
	[<item:buildersaddition:acacia_vertical_slab>, <item:minecraft:acacia_slab>, <item:buildersaddition:acacia_vertical_slab>],
	[<item:buildersaddition:acacia_vertical_slab>, <tag:items:forge:gems/diamond>, <item:buildersaddition:acacia_vertical_slab>],
	[<item:buildersaddition:acacia_vertical_slab>, <item:minecraft:acacia_slab>, <item:buildersaddition:acacia_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_barrel_tier_3");

craftingTable.addShaped("jungle_barrel_tier_3", <item:storage_overhaul:jungle_barrel_tier_3>*1, [
	[<item:buildersaddition:jungle_vertical_slab>, <item:minecraft:jungle_slab>, <item:buildersaddition:jungle_vertical_slab>],
	[<item:buildersaddition:jungle_vertical_slab>, <tag:items:forge:gems/diamond>, <item:buildersaddition:jungle_vertical_slab>],
	[<item:buildersaddition:jungle_vertical_slab>, <item:minecraft:jungle_slab>, <item:buildersaddition:jungle_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_barrel_tier_3");

craftingTable.addShaped("dark_oak_barrel_tier_3", <item:storage_overhaul:dark_oak_barrel_tier_3>*1, [
	[<item:buildersaddition:dark_oak_vertical_slab>, <item:minecraft:dark_oak_slab>, <item:buildersaddition:dark_oak_vertical_slab>],
	[<item:buildersaddition:dark_oak_vertical_slab>, <tag:items:forge:gems/diamond>, <item:buildersaddition:dark_oak_vertical_slab>],
	[<item:buildersaddition:dark_oak_vertical_slab>, <item:minecraft:dark_oak_slab>, <item:buildersaddition:dark_oak_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_barrel_tier_3");

craftingTable.addShaped("crimson_barrel_tier_3", <item:storage_overhaul:crimson_barrel_tier_3>*1, [
	[<item:buildersaddition:crimson_vertical_slab>, <item:minecraft:crimson_slab>, <item:buildersaddition:crimson_vertical_slab>],
	[<item:buildersaddition:crimson_vertical_slab>, <tag:items:forge:gems/diamond>, <item:buildersaddition:crimson_vertical_slab>],
	[<item:buildersaddition:crimson_vertical_slab>, <item:minecraft:crimson_slab>, <item:buildersaddition:crimson_vertical_slab>]]);
	
craftingTable.removeByName("storage_overhaul:warped_barrel_tier_3");

craftingTable.addShaped("warped_barrel_tier_3", <item:storage_overhaul:warped_barrel_tier_3>*1, [
	[<item:buildersaddition:warped_vertical_slab>, <item:minecraft:warped_slab>, <item:buildersaddition:warped_vertical_slab>],
	[<item:buildersaddition:warped_vertical_slab>, <tag:items:forge:gems/diamond>, <item:buildersaddition:warped_vertical_slab>],
	[<item:buildersaddition:warped_vertical_slab>, <item:minecraft:warped_slab>, <item:buildersaddition:warped_vertical_slab>]]);
	
//Update Storage Overhaul Storage Barrel Recipes
craftingTable.removeByName("storage_overhaul:oak_storage_barrel");

craftingTable.addShaped("oak_storage_barrel", <item:storage_overhaul:oak_storage_barrel>*1, [
	[<item:minecraft:oak_planks>, <item:minecraft:oak_log>, <item:minecraft:oak_planks>],
	[<item:minecraft:oak_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:oak_planks>],
	[<item:minecraft:oak_planks>, <item:minecraft:oak_slab>, <item:minecraft:oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:spruce_storage_barrel");

craftingTable.addShaped("spruce_storage_barrel", <item:storage_overhaul:spruce_storage_barrel>*1, [
	[<item:minecraft:spruce_planks>, <item:minecraft:spruce_log>, <item:minecraft:spruce_planks>],
	[<item:minecraft:spruce_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:spruce_planks>],
	[<item:minecraft:spruce_planks>, <item:minecraft:spruce_slab>, <item:minecraft:spruce_planks>]]);
	
craftingTable.removeByName("storage_overhaul:birch_storage_barrel");

craftingTable.addShaped("birch_storage_barrel", <item:storage_overhaul:birch_storage_barrel>*1, [
	[<item:minecraft:birch_planks>, <item:minecraft:birch_log>, <item:minecraft:birch_planks>],
	[<item:minecraft:birch_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:birch_planks>],
	[<item:minecraft:birch_planks>, <item:minecraft:birch_slab>, <item:minecraft:birch_planks>]]);
	
craftingTable.removeByName("storage_overhaul:acacia_storage_barrel");

craftingTable.addShaped("acacia_storage_barrel", <item:storage_overhaul:acacia_storage_barrel>*1, [
	[<item:minecraft:acacia_planks>, <item:minecraft:acacia_log>, <item:minecraft:acacia_planks>],
	[<item:minecraft:acacia_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:acacia_planks>],
	[<item:minecraft:acacia_planks>, <item:minecraft:acacia_slab>, <item:minecraft:acacia_planks>]]);
	
craftingTable.removeByName("storage_overhaul:jungle_storage_barrel");

craftingTable.addShaped("jungle_storage_barrel", <item:storage_overhaul:jungle_storage_barrel>*1, [
	[<item:minecraft:jungle_planks>, <item:minecraft:jungle_log>, <item:minecraft:jungle_planks>],
	[<item:minecraft:jungle_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:jungle_planks>],
	[<item:minecraft:jungle_planks>, <item:minecraft:jungle_slab>, <item:minecraft:jungle_planks>]]);
	
craftingTable.removeByName("storage_overhaul:dark_oak_storage_barrel");

craftingTable.addShaped("dark_oak_storage_barrel", <item:storage_overhaul:dark_oak_storage_barrel>*1, [
	[<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_log>, <item:minecraft:dark_oak_planks>],
	[<item:minecraft:dark_oak_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:dark_oak_planks>],
	[<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_slab>, <item:minecraft:dark_oak_planks>]]);
	
craftingTable.removeByName("storage_overhaul:crimson_storage_barrel");

craftingTable.addShaped("crimson_storage_barrel", <item:storage_overhaul:crimson_storage_barrel>*1, [
	[<item:minecraft:crimson_planks>, <item:minecraft:crimson_stem>, <item:minecraft:crimson_planks>],
	[<item:minecraft:crimson_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:crimson_planks>],
	[<item:minecraft:crimson_planks>, <item:minecraft:crimson_slab>, <item:minecraft:crimson_planks>]]);
	
craftingTable.removeByName("storage_overhaul:warped_storage_barrel");

craftingTable.addShaped("warped_storage_barrel", <item:storage_overhaul:warped_storage_barrel>*1, [
	[<item:minecraft:warped_planks>, <item:minecraft:warped_stem>, <item:minecraft:warped_planks>],
	[<item:minecraft:warped_planks>, <tag:items:forge:ingots/iron>, <item:minecraft:warped_planks>],
	[<item:minecraft:warped_planks>, <item:minecraft:warped_slab>, <item:minecraft:warped_planks>]]);