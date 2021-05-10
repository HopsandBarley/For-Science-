import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.item.IIngredient;
import stdlib.List;

var air = <item:minecraft:air>;
var axes = <tag:items:forge:axes> as MCTag<MCItemDefinition>;

// Remove Builders Addition Recipes
craftingTable.removeByName("buildersaddition:iron_ladder");
mods.jei.JEI.hideItem(<item:buildersaddition:iron_ladder>);
furnace.removeByName("buildersaddition:iron_ladder_rough");
mods.jei.JEI.hideItem(<item:buildersaddition:iron_ladder_rough>);
craftingTable.removeByName("buildersaddition:iron_fence");
mods.jei.JEI.hideItem(<item:buildersaddition:iron_fence>);
furnace.removeByName("buildersaddition:rough_iron_fence");
mods.jei.JEI.hideItem(<item:buildersaddition:iron_fence_rough>);
craftingTable.removeByName("buildersaddition:crossrail");
mods.jei.JEI.hideItem(<item:buildersaddition:crossrail>);
craftingTable.removeByName("buildersaddition:fireplace_guard");
mods.jei.JEI.hideItem(<item:buildersaddition:fireplace_guard>);
furnace.removeByName("buildersaddition:rough_fireplace_guard");
mods.jei.JEI.hideItem(<item:buildersaddition:rough_fireplace_guard>);
furnace.removeByName("buildersaddition:rough_iron_block");
mods.jei.JEI.hideItem(<item:buildersaddition:rough_iron_block>);

//	Iron Bars Recipe
craftingTable.removeByName("minecraft:iron_bars");
craftingTable.addShaped("cast_iron_bars", <item:minecraft:iron_bars>*16, [
	[<item:rankine:cast_iron_rod>, <item:rankine:cast_iron_rod>, <item:rankine:cast_iron_rod> ],
	[<item:rankine:cast_iron_rod>, <item:rankine:cast_iron_rod>, <item:rankine:cast_iron_rod> ]]);
	
// Flint and Steel
craftingTable.removeByName("minecraft:flint_and_steel");
craftingTable.addShapeless("flint_and_steel", <item:minecraft:flint_and_steel>,
	[<item:minecraft:flint>, <tag:items:forge:ingots/steel>]);

//	Anvil Recipe
craftingTable.removeByName("minecraft:anvil");
craftingTable.addShaped("cast_iron_anvil", <item:minecraft:anvil>, [
	[<item:rankine:cast_iron_block>, <item:rankine:cast_iron_block>, <item:rankine:cast_iron_block>],
	[air, <tag:items:forge:ingots/cast_iron>, air ],
	[<tag:items:forge:ingots/cast_iron>, <tag:items:forge:ingots/cast_iron>, <tag:items:forge:ingots/cast_iron>]]);
	
craftingTable.removeByName("rankine:anvil_from_metals");

//  Cauldron out of Cast Iron
craftingTable.removeByName("minecraft:cauldron");
craftingTable.addShaped("cast_iron_cauldron", <item:minecraft:cauldron>, [
[<tag:items:forge:ingots/cast_iron>, air, <tag:items:forge:ingots/cast_iron> ],
[<tag:items:forge:ingots/cast_iron>, air, <tag:items:forge:ingots/cast_iron> ],
[<tag:items:forge:ingots/cast_iron>, <tag:items:forge:ingots/cast_iron>, <tag:items:forge:ingots/cast_iron> ]]);

//  Smithing Table out of Cast iron_axe
craftingTable.removeByName("minecraft:smithing_table");
craftingTable.addShaped("cast_iron_smithing_table", <item:minecraft:smithing_table>, [
[<tag:items:forge:ingots/cast_iron>, <tag:items:forge:ingots/cast_iron> ],
[<tag:items:minecraft:planks>, <tag:items:minecraft:planks> ],
[<tag:items:minecraft:planks>, <tag:items:minecraft:planks> ]]);

//	Wooden Bucket and Flour to Dough
var transformingBucket = <item:woodenbuckets:wooden_water_bucket>.anyDamage().transformCustom("transform_buckets", (stack as IItemStack) => {
    return <item:woodenbuckets:wooden_bucket>.withDamage(stack.damage + 1);
  });

craftingTable.addShaped("dough_from_woodenbucket", <item:create:dough>, [
[<item:create:wheat_flour>, transformingBucket]]);

//	Foragecraft Rock to Stone Button
	craftingTable.addShapeless("fc_stone_to_stone_button", <item:minecraft:stone_button>*1, [
	<item:foragecraft:rock>]);

//	Add FarmersDelight Rope and Rankine Rope to forge string tag
	<tag:items:forge:string>.add(<item:farmersdelight:rope>);
	<tag:items:forge:string>.add(<item:rankine:rope>);

//	Craft Rankine Rope from FarmersDelight Straw
craftingTable.addShaped("rankin_rope", <item:rankine:rope>*1,[
   [<item:farmersdelight:straw>, <item:farmersdelight:straw>],
   [<item:farmersdelight:straw>, ]]);
	
//	Add farmersdelight flint knife to rankine flint tools
	<tag:items:rankine:flint_tools>.add(<item:farmersdelight:flint_knife>);

//	Update Rankine Flint Tools with string tag
craftingTable.removeByName("rankine:flint_hoe");

craftingTable.addShaped("flint_hoe", <item:rankine:flint_hoe>*1, [
	[<item:minecraft:flint>, <tag:items:forge:string>, air],
	[air, <tag:items:forge:rods/wooden>, air],
	[air, <tag:items:forge:rods/wooden>, air]]);
	
craftingTable.removeByName("rankine:flint_pickaxe");

craftingTable.addShaped("flint_pickaxe", <item:rankine:flint_pickaxe>*1, [
	[<item:minecraft:flint>, <tag:items:forge:string>, <item:minecraft:flint>],
	[air, <tag:items:forge:rods/wooden>, air],
	[air, <tag:items:forge:rods/wooden>, air]]);
	
craftingTable.removeByName("rankine:flint_axe");

craftingTable.addShaped("flint_axe", <item:rankine:flint_axe>*1,[
	[<tag:items:forge:string>, <item:minecraft:flint>],
	[<tag:items:forge:rods/wooden>]]);

craftingTable.removeByName("rankine:flint_shovel");

craftingTable.addShaped("flint_shovel", <item:rankine:flint_shovel>*1, [
	[air, <item:minecraft:flint>, air],
	[air, <tag:items:forge:string>, air],
	[air, <tag:items:forge:rods/wooden>, air]]);
	
craftingTable.removeByName("rankine:flint_spear");

craftingTable.addShaped("flint_spear", <item:rankine:flint_spear>*1, [
	[air, <item:minecraft:flint>, <item:minecraft:flint>],
	[<tag:items:forge:string>, <tag:items:forge:rods/wooden>, <item:minecraft:flint>],
	[<tag:items:forge:rods/wooden>, <tag:items:forge:string>, air]]);

craftingTable.removeByName("rankine:stone_hammer");

craftingTable.addShaped("stone_hammer", <item:rankine:stone_hammer>*1, [
	[<tag:items:forge:stone>, <tag:items:forge:string>, <tag:items:forge:stone>],
	[<tag:items:forge:stone>, <tag:items:forge:string>, <tag:items:forge:stone>],
	[air, <tag:items:forge:rods/wooden>, air]]);
	
craftingTable.removeByName("rankine:ice_skates");

craftingTable.addShaped("ice_skates", <item:rankine:ice_skates>*1, [
	[<item:minecraft:leather>, air, air],
	[<item:minecraft:leather>, <tag:items:forge:string>, <item:minecraft:leather>],
	[<tag:items:forge:nuggets>, <tag:items:forge:nuggets>, <tag:items:forge:nuggets>]]);

craftingTable.removeByName("rankine:sandals");
	
craftingTable.addShaped("sandals", <item:rankine:sandals>*1, [
	[<tag:items:forge:string>, <item:minecraft:leather>, <tag:items:forge:string>],
	[<item:minecraft:leather>, air, <item:minecraft:leather>],
	[air, <item:minecraft:leather>, air]]);
	
craftingTable.removeByName("rankine:snowshoes");
	
craftingTable.addShaped("snowshoes", <item:rankine:snowshoes>*1, [
	[<tag:items:forge:rods/wooden>, <tag:items:forge:string>, <tag:items:forge:rods/wooden>],
	[<tag:items:forge:rods/wooden>, <tag:items:forge:string>, <tag:items:forge:rods/wooden>],
	[air, <tag:items:forge:rods/wooden>, air]]);
	
craftingTable.removeByName("rankine:prospecting_stick");
	
craftingTable.addShaped("prospecting_stick", <item:rankine:prospecting_stick>*1, [
	[air, <tag:items:forge:rods/wooden>, <tag:items:forge:nuggets>],
	[air, <tag:items:forge:string>, <tag:items:forge:rods/wooden>],
	[<tag:items:forge:rods/wooden>, air, air]]);

//	Adjust Lead Recipes	
craftingTable.removeByName("rankine:lead");
craftingTable.removeByName("minecraft:lead");
	
craftingTable.addShaped("lead", <item:minecraft:lead>*2, [
	[<tag:items:forge:string>, <tag:items:forge:string>, air],
	[<tag:items:forge:string>, <tag:items:forge:slimeballs>, air],
	[air, air, <tag:items:forge:string>]]);

//Remove Rankine knives
	craftingTable.removeByName("rankine:flint_knife");
	mods.jei.JEI.hideItem(<item:rankine:flint_knife>);
	craftingTable.removeByName("rankine:metal_knife");
	mods.jei.JEI.hideItem(<item:rankine:metal_knife>);

//Changing shaped 2x2 recipe for flint_knife	
	craftingTable.removeByName("farmersdelight:flint_knife");

craftingTable.addShaped("flint_knife", <item:farmersdelight:flint_knife>*1,[
   [air, <item:minecraft:flint>],
   [<tag:items:forge:rods/wooden>, ]]);

//Remove vanilla blast furnace recipe
	craftingTable.removeRecipe(<item:minecraft:blast_furnace>);
	
//Add modified blast furnace recipe
	craftingTable.addShaped("blast_furnace", <item:minecraft:blast_furnace>*1, [
	[<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>],
	[<item:create:andesite_alloy>, <item:minecraft:furnace>, <item:create:andesite_alloy>],
	[<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]]);
	
//Remove Vanilla Smoker recipe
	craftingTable.removeRecipe(<item:minecraft:smoker>);

//Add modified smoker recipe
	craftingTable.addShaped("smoker", <item:minecraft:smoker>*1, [
	[<item:minecraft:terracotta>, <item:minecraft:terracotta>, <item:minecraft:terracotta>],
	[<item:minecraft:terracotta>, <item:minecraft:furnace>, <item:minecraft:terracotta>],
	[<item:minecraft:terracotta>, <item:minecraft:terracotta>, <item:minecraft:terracotta>]]);

//New Alloy Furnace Recipe

craftingTable.removeByName("rankine:alloy_furnace");
	
craftingTable.addShaped("alloy_furnace_andesite_alloy", <item:rankine:alloy_furnace>*1, [
	[<item:rankine:refractory_bricks>, <item:create:andesite_alloy>, <item:rankine:refractory_bricks>],
	[<item:rankine:refractory_bricks>, <item:minecraft:blast_furnace>, <item:rankine:refractory_bricks>],
	[<item:rankine:refractory_bricks>, <item:create:andesite_alloy>, <item:rankine:refractory_bricks>]]);
	
// Remove Vanilla Swords
	craftingTable.removeByName("minecraft:wooden_sword");
	mods.jei.JEI.hideItem(<item:minecraft:wooden_sword>);
	
	craftingTable.removeByName("minecraft:stone_sword");
	mods.jei.JEI.hideItem(<item:minecraft:stone_sword>);
	
	craftingTable.removeByName("minecraft:golden_sword");
	mods.jei.JEI.hideItem(<item:minecraft:golden_sword>);
	
	craftingTable.removeByName("minecraft:iron_sword");
	mods.jei.JEI.hideItem(<item:minecraft:iron_sword>);
	
	craftingTable.removeByName("minecraft:diamond_sword");
	mods.jei.JEI.hideItem(<item:minecraft:diamond_sword>);
	
	smithing.removeByName("minecraft:netherite_sword_smithing");
	mods.jei.JEI.hideItem(<item:minecraft:netherite_sword>);
	
// Remove Vanilla Pickaxes
	craftingTable.removeByName("minecraft:wooden_pickaxe");
	mods.jei.JEI.hideItem(<item:minecraft:wooden_pickaxe>);
	
	craftingTable.removeByName("minecraft:stone_pickaxe");
	mods.jei.JEI.hideItem(<item:minecraft:stone_pickaxe>);
	
	craftingTable.removeByName("minecraft:golden_pickaxe");
	mods.jei.JEI.hideItem(<item:minecraft:golden_pickaxe>);
	
	craftingTable.removeByName("minecraft:iron_pickaxe");
	mods.jei.JEI.hideItem(<item:minecraft:iron_pickaxe>);
	
	craftingTable.removeByName("minecraft:diamond_pickaxe");
	mods.jei.JEI.hideItem(<item:minecraft:diamond_pickaxe>);
	
	smithing.removeByName("minecraft:netherite_pickaxe_smithing");
	mods.jei.JEI.hideItem(<item:minecraft:netherite_pickaxe>);

// Remove Vanilla Axe
	craftingTable.removeByName("minecraft:wooden_axe");
	mods.jei.JEI.hideItem(<item:minecraft:wooden_axe>);
	
	craftingTable.removeByName("minecraft:stone_axe");
	mods.jei.JEI.hideItem(<item:minecraft:stone_axe>);
	
	craftingTable.removeByName("minecraft:golden_axe");
	mods.jei.JEI.hideItem(<item:minecraft:golden_axe>);
	
	craftingTable.removeByName("minecraft:iron_axe");
	mods.jei.JEI.hideItem(<item:minecraft:iron_axe>);
	
	craftingTable.removeByName("minecraft:diamond_axe");
	mods.jei.JEI.hideItem(<item:minecraft:diamond_axe>);
	
	smithing.removeByName("minecraft:netherite_axe_smithing");
	mods.jei.JEI.hideItem(<item:minecraft:netherite_axe>);

// Remove Vanilla Shovel
	craftingTable.removeByName("minecraft:wooden_shovel");
	mods.jei.JEI.hideItem(<item:minecraft:wooden_shovel>);
	
	craftingTable.removeByName("minecraft:stone_shovel");
	mods.jei.JEI.hideItem(<item:minecraft:stone_shovel>);
	
	craftingTable.removeByName("minecraft:golden_shovel");
	mods.jei.JEI.hideItem(<item:minecraft:golden_shovel>);
	
	craftingTable.removeByName("minecraft:iron_shovel");
	mods.jei.JEI.hideItem(<item:minecraft:iron_shovel>);
	
	craftingTable.removeByName("minecraft:diamond_shovel");
	mods.jei.JEI.hideItem(<item:minecraft:diamond_shovel>);
	
	smithing.removeByName("minecraft:netherite_shovel_smithing");
	mods.jei.JEI.hideItem(<item:minecraft:netherite_shovel>);
	
// Remove Vanilla Hoes
	craftingTable.removeByName("minecraft:wooden_hoe");
	mods.jei.JEI.hideItem(<item:minecraft:wooden_hoe>);
	
	craftingTable.removeByName("minecraft:stone_hoe");
	mods.jei.JEI.hideItem(<item:minecraft:stone_hoe>);
	
	craftingTable.removeByName("minecraft:golden_hoe");
	mods.jei.JEI.hideItem(<item:minecraft:golden_hoe>);
	
	craftingTable.removeByName("minecraft:iron_hoe");
	mods.jei.JEI.hideItem(<item:minecraft:iron_hoe>);
	
	craftingTable.removeByName("minecraft:diamond_hoe");
	mods.jei.JEI.hideItem(<item:minecraft:diamond_hoe>);
	
	smithing.removeByName("minecraft:netherite_hoe_smithing");
	mods.jei.JEI.hideItem(<item:minecraft:netherite_hoe>);

//Hide Unused Spare Parts (Sorry Zed)
	mods.jei.JEI.hideItem(<item:spareparts:scrap>);
	mods.jei.JEI.hideItem(<item:spareparts:tool_part>);
	mods.jei.JEI.hideItem(<item:spareparts:paper_fragment>);
	mods.jei.JEI.hideItem(<item:spareparts:valuable_shard>);
	mods.jei.JEI.hideItem(<item:spareparts:small_motor>);
	mods.jei.JEI.hideItem(<item:spareparts:item_00>);
	mods.jei.JEI.hideItem(<item:spareparts:item_01>);
	mods.jei.JEI.hideItem(<item:spareparts:item_02>);
	mods.jei.JEI.hideItem(<item:spareparts:item_03>);
	mods.jei.JEI.hideItem(<item:spareparts:item_04>);
	mods.jei.JEI.hideItem(<item:spareparts:item_05>);
	mods.jei.JEI.hideItem(<item:spareparts:item_06>);
	mods.jei.JEI.hideItem(<item:spareparts:item_07>);
	mods.jei.JEI.hideItem(<item:spareparts:item_08>);
	mods.jei.JEI.hideItem(<item:spareparts:item_09>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/raw_clay>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/fired_clay>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/baked_clay>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/nether>);
	mods.jei.JEI.hideItem(<item:spareparts:corinthian/corinthian_block>);
	mods.jei.JEI.hideItem(<item:spareparts:corinthian/corinthian_dust>);
	mods.jei.JEI.hideItem(<item:spareparts:corinthian/corinthian_ingot>);
	mods.jei.JEI.hideItem(<item:spareparts:corinthian/corinthian_plate>);
	mods.jei.JEI.hideItem(<item:spareparts:corinthian/corinthian_nugget>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/advanced/t45_plate>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/advanced/t51_plate>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/advanced/x01_plate>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/advanced/x02_plate>);
	mods.jei.JEI.hideItem(<item:spareparts:plates/advanced/x03_plate>);
	mods.jei.JEI.hideItem(<item:spareparts:key/ancient>);
	mods.jei.JEI.hideItem(<item:spareparts:key/copper>);
	mods.jei.JEI.hideItem(<item:spareparts:key/iron>);
	mods.jei.JEI.hideItem(<item:spareparts:key/golden>);
	mods.jei.JEI.hideItem(<item:spareparts:key/diamond>);
	mods.jei.JEI.hideItem(<item:spareparts:key/monster>);
	mods.jei.JEI.hideItem(<item:spareparts:key/stone>);
	mods.jei.JEI.hideItem(<item:spareparts:key/wooden>);
	mods.jei.JEI.hideItem(<item:spareparts:key/advanced/t45>);
	mods.jei.JEI.hideItem(<item:spareparts:key/advanced/t51>);
	mods.jei.JEI.hideItem(<item:spareparts:key/advanced/x01>);
	mods.jei.JEI.hideItem(<item:spareparts:key/advanced/x02>);
	mods.jei.JEI.hideItem(<item:spareparts:key/advanced/x03>);