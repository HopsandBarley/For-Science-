import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.item.IIngredient;
import stdlib.List;
import crafttweaker.api.item.MCIngredientTransformed;

var air = <item:minecraft:air>;
val cast_iron_ingot = <tag:items:forge:ingots/cast_iron> as MCTag<MCItemDefinition>;

//Water Buckets Tag
<tag:items:crafttweaker:water_buckets>.add(<item:minecraft:water_bucket>);
<tag:items:crafttweaker:water_buckets>.add(<item:woodenbuckets:wooden_water_bucket>);

<tag:items:crafttweaker:buckets>.add(<item:minecraft:bucket>);
<tag:items:crafttweaker:buckets>.add(<item:woodenbuckets:wooden_bucket>);

craftingTable.removeByName("farmersdelight:stove");

craftingTable.addShaped("farmersdelight_stove", <item:farmersdelight:stove>*1,[
   [cast_iron_ingot, cast_iron_ingot, cast_iron_ingot],
   [<item:minecraft:bricks>, air, <item:minecraft:bricks>],
   [<item:minecraft:bricks>, <item:minecraft:campfire>, <item:minecraft:bricks>]]);
   
craftingTable.removeByName("farmersdelight:cooking_pot");

craftingTable.addShaped("farmersdelight_cooking_pot", <item:farmersdelight:cooking_pot>*1, [
	[<item:minecraft:brick>, <tag:items:forge:shovels>, <item:minecraft:brick>],
	[cast_iron_ingot, <tag:items:crafttweaker:water_buckets>, cast_iron_ingot],
	[cast_iron_ingot, cast_iron_ingot, cast_iron_ingot]]);

//Farmers Delight Iron Knife
craftingTable.addShaped("farmersdeslight_ss_knife", <item:farmersdelight:iron_knife>*1, [
	[air, <tag:items:forge:ingots/stainless_steel>],
	[<tag:items:forge:rods/wooden>, air]]);
	
craftingTable.removeByName("farmersdelight:iron_knife");