import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.item.IIngredient;
import stdlib.List;

var air = <item:minecraft:air>;
var axes = <tag:items:forge:axes> as MCTag<MCItemDefinition>;

<tag:items:forge:wooden_vertical_slabs>.add(<item:buildersaddition:oak_vertical_slab>);
<tag:items:forge:wooden_vertical_slabs>.add(<item:buildersaddition:spruce_vertical_slab>);
<tag:items:forge:wooden_vertical_slabs>.add(<item:buildersaddition:birch_vertical_slab>);
<tag:items:forge:wooden_vertical_slabs>.add(<item:buildersaddition:acacia_vertical_slab>);
<tag:items:forge:wooden_vertical_slabs>.add(<item:buildersaddition:jungle_vertical_slab>);
<tag:items:forge:wooden_vertical_slabs>.add(<item:buildersaddition:dark_oak_vertical_slab>);
<tag:items:forge:wooden_vertical_slabs>.add(<item:buildersaddition:warped_vertical_slab>);
<tag:items:forge:wooden_vertical_slabs>.add(<item:buildersaddition:crimson_vertical_slab>);

//Plank and Slab Recipes
val woods as string[] = [ "oak", "birch", "spruce", "dark_oak", "acacia", "jungle" ];
val stems as string[] = [ "crimson", "warped" ];
val rankine_woods as string[] = ["cedar", "pinyon_pine", "juniper", "coconut_palm", "balsam_fir", "magnolia", "eastern_hemlock", "maple", "cinnamon"];
//val rankine_birch_woods as string[] = ["yellow_birch", "black_birch"];

for wood in woods {
  val name = "planks_axe_recipe_"+wood;
  val slab_name = "slabs_axe_recipe_"+wood;
  val vert_slab_name = "vert_slabs_axe_recipe_"+wood;
  val planks = BracketHandlers.getItem("minecraft:"+wood+"_planks");
  val log = BracketHandlers.getItem("minecraft:"+wood+"_log");
  val button_slab_name = "buttons_from_slabs_axe_recipe_"+wood;
  val button_vert_slab_name = "buttons_from_vert_slabs_axe_recipe_"+wood;
  val button = BracketHandlers.getItem("minecraft:"+wood+"_button");
  craftingTable.addShaped(name, planks*2, [ 
  [ air, axes.asIIngredient().anyDamage().transformDamage()], 
  [ air, log ]]);
	craftingTable.removeByName("minecraft:"+wood+"_planks");
	craftingTable.removeByName("buildersaddition:vertical_slab/reverse/reverse_"+wood+"_vertical_slab");
	craftingTable.removeByName("buildersaddition:vertical_slab/reverse/reverse_"+wood+"_slab");
	
	val slab = BracketHandlers.getItem("minecraft:"+wood+"_slab");
	craftingTable.addShaped(slab_name, slab*2, [
	[axes.asIIngredient().anyDamage().transformDamage(), planks]]);
		craftingTable.removeByName("minecraft:"+wood+"_slab");
		
	val vert_slab = BracketHandlers.getItem("buildersaddition:"+wood+"_vertical_slab");
	craftingTable.addShaped(vert_slab_name, vert_slab*2, [
	[axes.asIIngredient().anyDamage().transformDamage()],
	[planks]]);
		craftingTable.removeByName("buildersaddition:vertical_slab/"+wood+"_vertical_slab");
		
	craftingTable.addShaped(button_slab_name, button*4, [
	[axes.asIIngredient().anyDamage().transformDamage()],
	[slab]]);
		craftingTable.removeByName("minecraft:"+wood+"_button");
	
	craftingTable.addShaped(button_vert_slab_name, button*4, [
	[axes.asIIngredient().anyDamage().transformDamage(), vert_slab]]);
}

for rankine_wood in rankine_woods {
	val rankine_name = "planks_axe_recipe_"+rankine_wood;
	val rankine_slab_name = "slabs_axe_recipe_"+rankine_wood;
	val rankine_vert_slab_name = "vert_slabs_axe_recipe_"+rankine_wood;
	val rankine_planks = BracketHandlers.getItem("rankine:"+rankine_wood+"_planks");
	val rankine_log = BracketHandlers.getItem("rankine:"+rankine_wood+"_log");
	val rankine_button_slab_name = "buttons_from_slabs_axe_recipe_"+rankine_wood;
	val rankine_button_vert_slab_name = "buttons_from_vert_slabs_axe_recipe_"+rankine_wood;
	val rankine_button = BracketHandlers.getItem("rankine:"+rankine_wood+"_button");
	craftingTable.addShaped(rankine_name, rankine_planks*2, [ 
	[ air, axes.asIIngredient().anyDamage().transformDamage()], 
	[ air, rankine_log ]]);
	craftingTable.removeByName("rankine:"+rankine_wood+"_planks");
	
	val rankine_slab = BracketHandlers.getItem("rankine:"+rankine_wood+"_slab");
	craftingTable.addShaped(rankine_slab_name, rankine_slab*2, [
	[axes.asIIngredient().anyDamage().transformDamage(), rankine_planks]]);
		craftingTable.removeByName("rankine:"+rankine_wood+"_slab");
		
	val rankine_vert_slab = BracketHandlers.getItem("rankine:"+rankine_wood+"_vertical_slab");
	craftingTable.addShaped(rankine_vert_slab_name, rankine_vert_slab*2, [
	[axes.asIIngredient().anyDamage().transformDamage()],
	[rankine_planks]]);
		craftingTable.removeByName("rankine:"+rankine_wood+"_vertical_slab");
		
	craftingTable.addShaped(rankine_button_slab_name, rankine_button*4, [
	[axes.asIIngredient().anyDamage().transformDamage()],
	[rankine_slab]]);
		craftingTable.removeByName("rankine:"+rankine_wood+"_button");
		
	craftingTable.addShaped(rankine_button_vert_slab_name, rankine_button*4, [
	[axes.asIIngredient().anyDamage().transformDamage(), rankine_vert_slab]]);
	
}

for stem in stems {
  val stem_name = "planks_axe_recipe_"+stem;
  val stem_slab_name = "slabs_axe_recipe_"+stem;
  val stem_vert_slab_name = "vert_slabs_axe_recipe_"+stem;
  val stem_planks = BracketHandlers.getItem("minecraft:"+stem+"_planks");
  val stem_log = BracketHandlers.getItem("minecraft:"+stem+"_stem");
  val stem_slab_button_name = "buttons_from_slabs_axe_recipe_"+stem;
  val stem_vert_slab_button_name = "buttons_from_vert_slabs_axe_recipe_"+stem;
  val stem_button = BracketHandlers.getItem("minecraft:"+stem+"_button");
  
  craftingTable.addShaped(stem_name, stem_planks*2, [ 
  [ air, axes.asIIngredient().anyDamage().transformDamage()], 
  [ air, stem_log ]]);
  
  val stem_slab = BracketHandlers.getItem("minecraft:"+stem+"_slab");
	craftingTable.addShaped(stem_name, stem_slab*2, [
	[axes.asIIngredient().anyDamage().transformDamage(), stem_planks]]);
		craftingTable.removeByName("minecraft:"+stem+"_slab");
		
	val stem_vert_slab = BracketHandlers.getItem("buildersaddition:"+stem+"_vertical_slab");
	craftingTable.addShaped(stem_vert_slab_name, stem_vert_slab*2, [
	[axes.asIIngredient().anyDamage().transformDamage()],
	[stem_planks]]);
		craftingTable.removeByName("buildersaddition:vertical_slab/"+stem+"_vertical_slab");
		
	craftingTable.addShaped(stem_slab_button_name, stem_button*4, [
	[axes.asIIngredient().anyDamage().transformDamage()],
	[stem_slab]]);
		craftingTable.removeByName("minecraft:"+stem+"_button");
		
	craftingTable.addShaped(stem_vert_slab_button_name, stem_button*4, [
	[axes.asIIngredient().anyDamage().transformDamage(), stem_vert_slab]]);

}

