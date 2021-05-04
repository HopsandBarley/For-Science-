import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.item.IIngredient;
import stdlib.List;
import crafttweaker.api.item.MCIngredientTransformed;

var air = <item:minecraft:air>;
var hammers = <tag:items:forge:hammers> as MCTag<MCItemDefinition>;
var steel_ingots = <tag:items:forge:ingots/steel>;
var cast_iron_ingots = <tag:items:forge:ingots/cast_iron>;
var stainless_steel_ingots = <tag:items:forge:ingots/stainless_steel>;
var graphite = <tag:items:forge:graphite>;
var carbon_ingots = <tag:items:forge:ingots/carbon>;

//CreateMod Modified Press Recipe
craftingTable.removeRecipe(<item:create:mechanical_press>);

craftingTable.addShaped("mechanical_press_white_marble", <item:create:mechanical_press>*1, [
	[air, <item:create:andesite_alloy>, air],
	[<item:create:cogwheel>, <item:create:andesite_casing>, <item:create:cogwheel>],
	[air, <item:rankine:polished_white_marble_slab>, air]]);
	
craftingTable.addShaped("mechanical_press_black_marble", <item:create:mechanical_press>*1, [
	[air, <item:create:andesite_alloy>, air],
	[<item:create:cogwheel>, <item:create:andesite_casing>, <item:create:cogwheel>],
	[air, <item:rankine:polished_black_marble_slab>, air]]);
	
//Mechanical Saw Recipe
craftingTable.removeByName("create:crafting/kinetics/mechanical_saw");

craftingTable.addShaped("mechanical_saw_gear", <item:create:mechanical_saw>, [
[<item:rankine:alloy_gear>.withTag({nameAdd: "Steel Alloy" as string, StoredComposition: [{comp: "99Fe-1C" as string}]}) ],
[<item:create:andesite_casing>]]);

//Stonecutter Recipe
craftingTable.removeByName("minecraft:stonecutter");

craftingTable.addShaped("stonecutter_gear", <item:minecraft:stonecutter>, [
[air, <item:rankine:alloy_gear>.withTag({nameAdd: "Steel Alloy" as string, StoredComposition: [{comp: "99Fe-1C" as string}]}), air ],
[<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy> ]]);

craftingTable.addShaped("mechanical_saw_gear", <item:create:mechanical_saw>, [
[<item:rankine:alloy_gear>.withTag({nameAdd: "Steel Alloy" as string, StoredComposition: [{comp: "99Fe-1C" as string}]}) ],
[<item:create:andesite_casing>]]);
	
//Andesite Alloy from Aluminum
craftingTable.addShaped("andesite_alloy_from_aluminum", <item:create:andesite_alloy>*1, [
	[<item:rankine:aluminum_nugget>, <item:minecraft:andesite>],
	[<item:minecraft:andesite>, <item:rankine:aluminum_nugget>]]);

//Andesite Alloy from Hornblende Andesite
craftingTable.addShaped("andesite_alloy_from_hb_iron", <item:create:andesite_alloy>*1, [
	[<item:rankine:hornblende_andesite>, <item:minecraft:iron_nugget>, <item:rankine:hornblende_andesite>],
	[<item:minecraft:iron_nugget>, <item:rankine:hornblende_andesite>, <item:minecraft:iron_nugget>],
	[<item:rankine:hornblende_andesite>, <item:minecraft:iron_nugget>, <item:rankine:hornblende_andesite>]]);
	
craftingTable.addShaped("andesite_alloy_from_hb_zinc", <item:create:andesite_alloy>*1, [
	[<item:rankine:hornblende_andesite>, <item:rankine:zinc_nugget>, <item:rankine:hornblende_andesite>],
	[<item:rankine:zinc_nugget>, <item:rankine:hornblende_andesite>, <item:rankine:zinc_nugget>],
	[<item:rankine:hornblende_andesite>, <item:rankine:zinc_nugget>, <item:rankine:hornblende_andesite>]]);
	
craftingTable.addShaped("andesite_alloy_from_hb_aluminum", <item:create:andesite_alloy>*1, [
	[<item:rankine:hornblende_andesite>, <item:rankine:aluminum_nugget>, <item:rankine:hornblende_andesite>],
	[<item:rankine:aluminum_nugget>, <item:rankine:hornblende_andesite>, <item:rankine:aluminum_nugget>],
	[<item:rankine:hornblende_andesite>, <item:rankine:aluminum_nugget>, <item:rankine:hornblende_andesite>]]);

//Rankine Plates in Mechanical Press
<recipetype:create:pressing>.addRecipe("pressed_cast_iron_plate", [<item:rankine:alloy_plate>.withTag({nameAdd: "Cast Iron Alloy" as string, StoredComposition: [{comp: "96Fe-4C" as string}]})], cast_iron_ingots);
<recipetype:create:pressing>.addRecipe("pressed_steel_plate", [<item:rankine:alloy_plate>.withTag({nameAdd: "Steel Alloy" as string, StoredComposition: [{comp: "99Fe-1C" as string}]})], steel_ingots);
<recipetype:create:pressing>.addRecipe("pressed_stainless_steel_plate", [<item:rankine:alloy_plate>.withTag({nameAdd: "Stainless Steel Alloy" as string, StoredComposition: [{comp: "75Fe-18Cr-5Ni-2C" as string}]})], stainless_steel_ingots);
<recipetype:create:pressing>.addRecipe("pressed_copper_solder_plate", [<item:rankine:alloy_plate>.withTag({nameAdd: "Copper Solder Alloy" as string, StoredComposition: [{comp: "80Cu-20Pb" as string}]})], <item:rankine:alloy_ingot>.withTag({nameAdd: "Alloy" as string, StoredComposition: [{comp: "80Cu-20Pb" as string}]}));
<recipetype:create:pressing>.addRecipe("pressed_cupronickel_solder_plate", [<item:rankine:alloy_plate>.withTag({nameAdd: "Cupronickel Solder Alloy" as string, StoredComposition: [{comp: "60Cu-20Ni-20Pb" as string}]})], <item:rankine:alloy_ingot>.withTag({nameAdd: "Alloy" as string, StoredComposition: [{comp: "60Cu-20Ni-20Pb" as string}]}));
<recipetype:create:pressing>.addRecipe("pressed_duralumin_plate", [<item:rankine:alloy_plate>.withTag({nameAdd: "Duralumin Alloy" as string, StoredComposition: [{comp: "94Al-4Cu-2Mg" as string}]})], <tag:items:forge:ingots/duralumin>);
<recipetype:create:pressing>.addRecipe("pressed_cupronickel_plate", [<item:rankine:alloy_plate>.withTag({nameAdd: "Cupronickel Alloy" as string, StoredComposition: [{comp: "85Cu-15Ni" as string}]})], <tag:items:forge:ingots/cupronickel>);
<recipetype:create:pressing>.addRecipe("belt_from_vulcanized_rubber", [<item:create:belt_connector>], <item:rankine:vulcanized_rubber>);


//<item:rankine:solder_alloy>.withTag({StoredComposition: [{comp: "60Sn-40Pb" as string}]})

//Change Cogwheel Recipes
craftingTable.removeRecipe(<item:create:cogwheel>);
craftingTable.removeRecipe(<item:create:large_cogwheel>);

craftingTable.addShaped("cogwheel_w_shaft", <item:create:cogwheel>*1, [
	[<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:wooden_buttons>],
	[<tag:items:minecraft:wooden_buttons>, <item:create:shaft>, <tag:items:minecraft:wooden_buttons>],
	[<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:wooden_buttons>]]);
	
craftingTable.addShaped("large_cogwheel_w_shaft", <item:create:large_cogwheel>*1, [
	[<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:planks>, <tag:items:minecraft:wooden_buttons>],
	[<tag:items:minecraft:planks>, <item:create:shaft>, <tag:items:minecraft:planks>],
	[<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:planks>, <tag:items:minecraft:wooden_buttons>]]);
	
//Change Shaft Recipe
craftingTable.removeRecipe(<item:create:shaft>);

craftingTable.addShaped("shaft_with_hammer", <item:create:shaft>*2, [
	[hammers.asIIngredient().anyDamage().transformDamage(), <item:create:andesite_alloy>],
	[<item:create:andesite_alloy>, air]]);
	
<recipetype:create:cutting>.removeRecipe(<item:create:shaft>);

//Vulcanized rubber in heated mixer
<recipetype:create:mixing>.addRecipe("vulcanized_rubber_mixer", "heated", <item:rankine:vulcanized_rubber>, [<item:minecraft:bone_meal>, <item:rankine:dry_rubber>, <item:rankine:sulfur_nugget>, <item:rankine:carbon_nugget>]);
<recipetype:create:mixing>.addRecipe("vulcanized_rubber2_mixer", "heated", <item:rankine:vulcanized_rubber>*2, [<item:minecraft:bone_meal>, <item:rankine:dry_rubber>, <item:rankine:sodium_sulfide>, <item:rankine:carbon_nugget>]);
	
//Steel Gear Pressed in Basin
<recipetype:create:compacting>.addRecipe("steel_gear", "none", <item:rankine:alloy_gear>.withTag({nameAdd: "Steel Alloy" as string, StoredComposition: [{comp: "99Fe-1C" as string}]}), [<item:create:cogwheel>, steel_ingots, steel_ingots, steel_ingots, steel_ingots], [], 200);


//AddedMillRecipes
// <recipetype:create:milling>.addRecipe(String name, MCWeightedItemStack[] output, IIngredient input, @Optional(100) int duration)

//Remove Create Crushed Ore Recipes from Millstone
<recipetype:create:milling>.removeRecipe(<item:create:crushed_tin_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_iron_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_gold_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_copper_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_aluminum_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_zinc_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_nickel_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_uranium_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_osmium_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_lead_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_silver_ore>);

//Remove Create Crushed Ore Recipes from Crusher
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_tin_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_iron_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_gold_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_copper_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_aluminum_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_zinc_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_nickel_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_uranium_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_osmium_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_lead_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_silver_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_lead_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_brass>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_lead_ore>);
<recipetype:create:crushing>.removeRecipe(<item:minecraft:coal>);

//Remove Create Crushed Brass Recipe from Mixer
<recipetype:create:mixing>.removeRecipe(<item:create:crushed_brass>);

//Remove Create Stones from JEI/Crafting
mods.jei.JEI.hideRegex(".*create*"+".*granite.*");
craftingTable.removeByRegex("create:.*granite");
mods.jei.JEI.hideRegex(".*create*"+".*diorite.*");
mods.jei.JEI.hideRegex(".*create*"+".*dolomite.*");
mods.jei.JEI.hideRegex(".*create*"+".*limestone.*");
mods.jei.JEI.hideRegex(".*create*"+".*gabbro.*");
mods.jei.JEI.hideRegex(".*create*"+".*scoria.*");
mods.jei.JEI.hideRegex(".*create*"+".*andesite_cobblestone.*");
mods.jei.JEI.hideRegex(".*create*"+".*andesite_bricks.*");
mods.jei.JEI.hideRegex(".*create*"+".*paved_andesite.*");

stoneCutter.removeByRegex("create:.*stonecutting");

craftingTable.removeRecipe(<item:create:andesite_pillar>);
mods.jei.JEI.hideItem(<item:create:andesite_pillar>);

craftingTable.removeRecipe(<item:create:layered_andesite>);
mods.jei.JEI.hideItem(<item:create:layered_andesite>);

craftingTable.removeRecipe(<item:create:mossy_andesite>);
mods.jei.JEI.hideItem(<item:create:mossy_andesite>);

craftingTable.removeRecipe(<item:create:overgrown_andesite>);
mods.jei.JEI.hideItem(<item:create:overgrown_andesite>);

<recipetype:create:crushing>.removeRecipe(<item:create:limesand>);
<recipetype:create:milling>.removeRecipe(<item:create:limesand>);
<recipetype:minecraft:smelting>.removeRecipe(<item:create:limestone>);
mods.jei.JEI.hideItem(<item:create:limesand>);

//Remove Crushed Ore Recipes
mods.jei.JEI.hideRegex(".*create*"+".*crushed.*");

//Remove Fluid Pipe Recipe
craftingTable.removeRecipe(<item:create:fluid_pipe>);

//Remove Wire Rolling Recipes
<recipetype:createaddition:rolling>.removeRecipe(<item:createaddition:copper_wire>);
mods.jei.JEI.hideItem(<item:createaddition:copper_wire>);
<recipetype:createaddition:rolling>.removeRecipe(<item:createaddition:iron_wire>);
mods.jei.JEI.hideItem(<item:createaddition:iron_wire>);
<recipetype:createaddition:rolling>.removeRecipe(<item:createaddition:gold_wire>);
mods.jei.JEI.hideItem(<item:createaddition:gold_wire>);
<recipetype:createaddition:rolling>.removeRecipe(<item:createaddition:brass_rod>);
mods.jei.JEI.hideItem(<item:createaddition:brass_rod>);
<recipetype:createaddition:rolling>.removeRecipe(<item:createaddition:gold_rod>);
mods.jei.JEI.hideItem(<item:createaddition:gold_rod>);
<recipetype:createaddition:rolling>.removeRecipe(<item:createaddition:copper_rod>);
mods.jei.JEI.hideItem(<item:createaddition:copper_rod>);
<recipetype:createaddition:rolling>.removeRecipe(<item:buildersaddition:iron_rod>);
mods.jei.JEI.hideItem(<item:buildersaddition:iron_rod>);

//Remove CreateAdditions Power Items
<recipetype:create:pressing>.removeRecipe(<item:createaddition:zinc_sheet>);
mods.jei.JEI.hideItem(<item:createaddition:zinc_sheet>);

craftingTable.removeRecipe(<item:createaddition:spool>);
mods.jei.JEI.hideItem(<item:createaddition:spool>);

craftingTable.removeRecipe(<item:createaddition:copper_spool>);
mods.jei.JEI.hideItem(<item:createaddition:copper_spool>);

craftingTable.removeRecipe(<item:createaddition:gold_spool>);
mods.jei.JEI.hideItem(<item:createaddition:gold_spool>);

craftingTable.removeRecipe(<item:createaddition:multimeter>);
mods.jei.JEI.hideItem(<item:createaddition:multimeter>);

craftingTable.removeRecipe(<item:createaddition:capacitor>);
mods.jei.JEI.hideItem(<item:createaddition:capacitor>);

craftingTable.removeRecipe(<item:createaddition:heater>);
mods.jei.JEI.hideItem(<item:createaddition:heater>);

craftingTable.removeRecipe(<item:createaddition:connector>);
mods.jei.JEI.hideItem(<item:createaddition:connector>);


<recipetype:create:mechanical_crafting>.removeRecipe(<item:createaddition:electric_motor>);
mods.jei.JEI.hideItem(<item:createaddition:electric_motor>);

<recipetype:create:mechanical_crafting>.removeRecipe(<item:createaddition:accumulator>);
mods.jei.JEI.hideItem(<item:createaddition:accumulator>);

<recipetype:create:mechanical_crafting>.removeRecipe(<item:createaddition:alternator>);
mods.jei.JEI.hideItem(<item:createaddition:alternator>);

mods.jei.JEI.hideItem(<item:createaddition:creative_energy>);

