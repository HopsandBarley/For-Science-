
var steel_plate  = <item:rankine:alloy_plate>.withTag({nameAdd: "Steel Alloy" as string, StoredComposition: [{comp: "99Fe-1C" as string}]});
var duralumin_plate = <item:rankine:alloy_plate>.withTag({nameAdd: "Duralumin Alloy" as string, StoredComposition: [{comp: "94Al-4Cu-2Mg" as string}]});
var stainless_steel_plate = <item:rankine:alloy_plate>.withTag({nameAdd: "Stainless Steel Alloy" as string, StoredComposition: [{comp: "75Fe-18Cr-5Ni-2C" as string}]});
var cupronickel_plate = <item:rankine:alloy_plate>.withTag({nameAdd: "Cupronickel Alloy" as string, StoredComposition: [{comp: "85Cu-15Ni" as string}]});

craftingTable.removeByName("rankine:cast_iron_rod");
craftingTable.removeByName("rankine:steel_rod");
craftingTable.removeByName("rankine:graphite_electrode");
craftingTable.removeByName("rankine:hard_carbon_electrode");
craftingTable.removeByName("buildersaddition:iron_rod");
craftingTable.removeByName("rankine:yag_rod");
craftingTable.removeByName("rankine:yag_rod_nd");
craftingTable.removeByName("rankine:yag_rod_cr_nd");
craftingTable.removeByName("rankine:vulcanized_rubber");
craftingTable.removeByName("rankine:vulcanized_rubber_sodium_sulfide");
craftingTable.removeByName("rankine:tap_line");

//Remove Sheet Metal Recipes
craftingTable.removeByName("rankine:aluminum_sheetmetal");
craftingTable.removeByName("rankine:titanium_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:titanium_sheetmetal>);
craftingTable.removeByName("rankine:nickel_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:nickel_sheetmetal>);
craftingTable.removeByName("rankine:copper_sheetmetal");
craftingTable.removeByName("rankine:silver_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:silver_sheetmetal>);
craftingTable.removeByName("rankine:tin_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:tin_sheetmetal>);
craftingTable.removeByName("rankine:tungsten_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:tungsten_sheetmetal>);
craftingTable.removeByName("rankine:platinum_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:platinum_sheetmetal>);
craftingTable.removeByName("rankine:gold_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:gold_sheetmetal>);
craftingTable.removeByName("rankine:lead_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:lead_sheetmetal>);
craftingTable.removeByName("rankine:bismuth_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:bismuth_sheetmetal>);
craftingTable.removeByName("rankine:bronze_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:bronze_sheetmetal>);
craftingTable.removeByName("rankine:brass_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:brass_sheetmetal>);
craftingTable.removeByName("rankine:invar_sheetmetal");
mods.jei.JEI.hideItem(<item:rankine:invar_sheetmetal>);
craftingTable.removeByName("rankine:cupronickel_sheetmetal");
craftingTable.removeByName("rankine:steel_sheetmetal");
craftingTable.removeByName("rankine:stainless_steel_sheetmetal");

//Remove Sheet Metal Vertical Slab Recipes
craftingTable.removeByName("rankine:aluminum_sheetmetal_vertical_slab");
craftingTable.removeByName("rankine:titanium_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:titanium_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:nickel_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:nickel_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:copper_sheetmetal_vertical_slab");
craftingTable.removeByName("rankine:silver_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:silver_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:tin_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:tin_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:tungsten_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:tungsten_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:platinum_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:platinum_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:gold_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:gold_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:lead_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:lead_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:bismuth_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:bismuth_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:bronze_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:bronze_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:brass_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:brass_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:invar_sheetmetal_vertical_slab");
mods.jei.JEI.hideItem(<item:rankine:invar_sheetmetal_vertical_slab>);
craftingTable.removeByName("rankine:cupronickel_sheetmetal_vertical_slab");
craftingTable.removeByName("rankine:steel_sheetmetal_vertical_slab");
craftingTable.removeByName("rankine:stainless_steel_sheetmetal_vertical_slab");

//Sheetmetal In Press with Basin
<recipetype:create:compacting>.addRecipe("aluminum_sheetmetal", "heated", <item:rankine:aluminum_sheetmetal>, [duralumin_plate, duralumin_plate, duralumin_plate, duralumin_plate], [], 200);
<recipetype:create:compacting>.addRecipe("copper_sheetmetal", "heated", <item:rankine:copper_sheetmetal>, [<tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>], [], 200);
<recipetype:create:compacting>.addRecipe("steel_sheetmetal", "heated", <item:rankine:steel_sheetmetal>, [steel_plate, steel_plate, steel_plate, steel_plate], [], 200);
<recipetype:create:compacting>.addRecipe("stainless_steel_sheetmetal", "heated", <item:rankine:stainless_steel_sheetmetal>, [stainless_steel_plate, stainless_steel_plate, stainless_steel_plate, stainless_steel_plate], [], 200);
<recipetype:create:compacting>.addRecipe("cupronickel_sheetmetal", "heated", <item:rankine:cupronickel_sheetmetal>, [cupronickel_plate, cupronickel_plate, cupronickel_plate, cupronickel_plate], [], 200);

//Carbon Nuggets from Coke
<recipetype:create:compacting>.addRecipe("carbon_nugget_from_coke", "none", <item:rankine:carbon_nugget>, [<item:rankine:coke>], [], 200);
craftingTable.removeByName("rankine:carbon_from_coke");

//Sheetmetal Vertical Slab Cutting Recipes
<recipetype:create:cutting>.addRecipe("aluminum_sheetmetal_vertical_slab_cutting", <item:rankine:aluminum_sheetmetal_vertical_slab>*2, <item:rankine:aluminum_sheetmetal>);
<recipetype:create:cutting>.addRecipe("copper_sheetmetal_vertical_slab_cutting", <item:rankine:copper_sheetmetal_vertical_slab>*2, <item:rankine:copper_sheetmetal>);
<recipetype:create:cutting>.addRecipe("steel_sheetmetal_vertical_slab_cutting", <item:rankine:steel_sheetmetal_vertical_slab>*2, <item:rankine:steel_sheetmetal>);
<recipetype:create:cutting>.addRecipe("stainless_steel_sheetmetal_vertical_slab_cutting", <item:rankine:stainless_steel_sheetmetal_vertical_slab>*2, <item:rankine:stainless_steel_sheetmetal>);
<recipetype:create:cutting>.addRecipe("cupronickel_sheetmetal_vertical_slab_cutting", <item:rankine:cupronickel_sheetmetal_vertical_slab>*2, <item:rankine:cupronickel_sheetmetal>);

//Bark to Sawdust in Mill
<recipetype:create:milling>.addRecipe("milling_bark_to_sawdust", [<item:rankine:sawdust>, <item:rankine:sawdust> % 50], <item:farmersdelight:tree_bark>);