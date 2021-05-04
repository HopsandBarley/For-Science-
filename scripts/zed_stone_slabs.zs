
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.data.IData;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.MCIngredientConditioned;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.tag.MCTag;
import stdlib.List;
import mods.jei.JEI;

val air = <item:minecraft:air>;
val planks = <tag:items:minecraft:planks>;
val slabs = <tag:items:minecraft:slabs>;
val hammers = <tag:items:forge:hammers> as MCTag<MCItemDefinition>;
val vert_slabs = <tag:items:quark:vertical_slab>;
val vert_slabs2 = <tag:items:rankine:vertical_stone_slabs>;

val exceptionsList = [ // just used some wood slabs as examples, add any items on the list that you don't want included
        <item:buildersaddition:quartz_vertical_slab>,
        <item:buildersaddition:smooth_quartz_vertical_slab>
    ];

var removeList = new List<string>();

// scan for blocks to slabs recipes.
for wrapper in craftingTable.getRecipesByOutput(slabs) {
    val ingredientsList = wrapper.ingredients;
    if ( (ingredientsList.length == 3) && (wrapper.output.amount == 6) && !(ingredientsList[0].items[0] in planks) && !(ingredientsList[0].items[0] in slabs) && !(wrapper.output in exceptionsList) ) {
        removeList.add(wrapper.id);
        craftingTable.addShaped("convert_"+wrapper.output.registryName.path, wrapper.output*2,
            [ [hammers.asIIngredient().anyDamage().transformDamage(), ingredientsList[0]] ]);
    }
}

for wrapper in craftingTable.getRecipesByOutput(vert_slabs) {
    val ingredientsList2 = wrapper.ingredients;
    if ( (ingredientsList2.length == 3) && (wrapper.output.amount == 6) && !(ingredientsList2[0].items[0] in planks) && !(ingredientsList2[0].items[0] in vert_slabs) && !(wrapper.output in exceptionsList) ) {
        removeList.add(wrapper.id);
        craftingTable.addShaped("convert_"+wrapper.output.registryName.path, wrapper.output*2, [
            [hammers.asIIngredient().anyDamage().transformDamage()],
			[ingredientsList2[0]] ]);
	}
}

for wrapper in craftingTable.getRecipesByOutput(vert_slabs2) {
    val ingredientsList3 = wrapper.ingredients;
    if ( (ingredientsList3.length == 3) && (wrapper.output.amount == 6) && !(ingredientsList3[0].items[0] in planks) && !(ingredientsList3[0].items[0] in vert_slabs2) && !(wrapper.output in exceptionsList) ) {
        removeList.add(wrapper.id);
        craftingTable.addShaped("convert_"+wrapper.output.registryName.path, wrapper.output*2, [
            [hammers.asIIngredient().anyDamage().transformDamage()],
			[ingredientsList3[0]] ]);
	}
}

for removeName in removeList {
    craftingTable.removeByName(removeName);
}

val mc_stones as string[] = [ "polished_blackstone", "stone"];
	//Rankine Recipe with all spaces
val rankine_stones as string[] = [ "gray_granite", "granodiorite", "hornblende_andesite", "tholeiitic_basalt", "anorthosite", "rhyolite", "peridotite", "kimberlite", "komatiite", "pumice", "scoria", "white_marble", "gneiss", "ringwoodite", "wadsleyite", "bridgmanite", "ferropericlase", "perovskite", "tufa_limestone", "carbonaceous_shale"];
	//Rankine Recipe with space missing after 'from'
val rankine_stones2 as string[] = [ "pyroxene_gabbro", "mica_schist", "slate", "breccia"];
	//Rankine Recipe without Button Recipes
val rankine_stones3 as string[] = [ "comendite", "black_dacite", "red_dacite", "red_porphyry", "purple_porphyry", "pegmatite", "troctolite", "black_marble", "phyllite", "quartzite", "mariposite", "skarn", "dolostone", "chalk", "siltstone", "quartz_sandstone", "arkose_sandstone", "mudstone"];


for mc_stone in mc_stones {
	val mc_stone_button_name = "mc_buttons_hammer_recipe_"+mc_stone;
	val mc_create_stone_button_name = "mc_buttons_create_cutting_"+mc_stone;
	val mc_stone_slabs = BracketHandlers.getItem("minecraft:"+mc_stone+"_slab");
	val mc_stone_block = BracketHandlers.getItem("minecraft:"+mc_stone);
	val mc_stone_button = BracketHandlers.getItem("minecraft:"+mc_stone+"_button");
  craftingTable.addShaped(mc_stone_button_name, mc_stone_button*4, [ 
  [ air, hammers.asIIngredient().anyDamage().transformDamage()], 
  [ air, mc_stone_slabs ]]);
  craftingTable.removeByName("minecraft:"+mc_stone+"_button");
  
 stoneCutter.addRecipe(mc_create_stone_button_name, mc_stone_button*8, mc_stone_block);

}

for rankine_stone in rankine_stones {
	val rankine_stone_button_name = "rankine_buttons_hammer_recipe_"+rankine_stone;
	val rankine_create_stone_button_name = "rankine_buttons_create_cutting_"+rankine_stone;
	val rankine_stone_slabs = BracketHandlers.getItem("rankine:"+rankine_stone+"_slab");
	val rankine_stone_block = BracketHandlers.getItem("rankine:"+rankine_stone);
	val rankine_stone_button = BracketHandlers.getItem("rankine:"+rankine_stone+"_button");
  craftingTable.addShaped(rankine_stone_button_name, rankine_stone_button*4, [ 
  [ air, hammers.asIIngredient().anyDamage().transformDamage()], 
  [ air, rankine_stone_slabs ]]);
  craftingTable.removeByName("rankine:"+rankine_stone+"_button");
  
  stoneCutter.addRecipe(rankine_create_stone_button_name, rankine_stone_button*8, rankine_stone_block);
  stoneCutter.removeByName("rankine:"+rankine_stone+"_button_from_"+rankine_stone+"_stonecutter");

}
 
for rankine_stone2 in rankine_stones2 {
	val rankine_stone2_button_name = "rankine_buttons_hammer_recipe_"+rankine_stone2;
	val rankine_create_stone2_button_name = "rankine_buttons_create_cutting_"+rankine_stone2;
	val rankine_stone2_slabs = BracketHandlers.getItem("rankine:"+rankine_stone2+"_slab");
	val rankine_stone2_block = BracketHandlers.getItem("rankine:"+rankine_stone2);
	val rankine_stone2_button = BracketHandlers.getItem("rankine:"+rankine_stone2+"_button");
		craftingTable.addShaped(rankine_stone2_button_name, rankine_stone2_button*4, [ 
			[ air, hammers.asIIngredient().anyDamage().transformDamage()], 
			[ air, rankine_stone2_slabs ]]);
	craftingTable.removeByName("rankine:"+rankine_stone2+"_button");
  
	stoneCutter.addRecipe(rankine_create_stone2_button_name, rankine_stone2_button*8, rankine_stone2_block);
	stoneCutter.removeByName("rankine:"+rankine_stone2+"_button_from"+rankine_stone2+"_stonecutter");

}

for rankine_stone3 in rankine_stones3 {
	val rankine_stone3_button_name = "rankine_buttons_hammer_recipe_"+rankine_stone3;
	val rankine_create_stone3_button_name = "rankine_buttons_create_cutting_"+rankine_stone3;
	val rankine_stone3_slabs = BracketHandlers.getItem("rankine:"+rankine_stone3+"_slab");
	val rankine_stone3_block = BracketHandlers.getItem("rankine:"+rankine_stone3);
	val rankine_stone3_button = BracketHandlers.getItem("rankine:"+rankine_stone3+"_button");
		craftingTable.addShaped(rankine_stone3_button_name, rankine_stone3_button*4, [ 
			[ air, hammers.asIIngredient().anyDamage().transformDamage()], 
			[ air, rankine_stone3_slabs ]]);
	craftingTable.removeByName("rankine:"+rankine_stone3+"_button");
  
	stoneCutter.addRecipe(rankine_create_stone3_button_name, rankine_stone3_button*8, rankine_stone3_block);
//	stoneCutter.removeByName("rankine:"+rankine_stone2+"_button_from"+rankine_stone2+"_stonecutter");

}

mods.jei.JEI.hideRegex(".*buildersaddition*"+".*reverse.*");
craftingTable.removeByRegex("buildersaddition:vertical_slab/reverse.*");
