
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.recipes.WrapperRecipe;
import stdlib.List;

println("BEGIN additional_lights.zs");

val coal = <item:minecraft:coal>;
val charcoal = <item:minecraft:charcoal>;
val minecraftCoals = <tag:items:minecraft:coals>.asIIngredient();

function recipeWidth(wrapper as WrapperRecipe) as int {
    val maxCraftingSize = 3;
    if (!(wrapper.canFit(maxCraftingSize,maxCraftingSize))) { return 0; }
    var testWidth = maxCraftingSize;
    while wrapper.canFit(testWidth,maxCraftingSize) { testWidth = testWidth - 1; }
    testWidth = testWidth + 1;
    return testWidth;
}

val suffix = "_with_tag";

var recipesToRemove = new List<string>();

for wrapper in craftingTable.getAllRecipes() {
    println(wrapper.id.commandString);
    if (!wrapper.id.path.endsWith(suffix)) {
        var transform = false;
        if (wrapper.dynamic) {
            // shapless? skip for now
        } else {
            for cell in wrapper.ingredients {
                transform = transform || (cell.commandString == "<item:minecraft:coal> | <item:minecraft:charcoal>");
            }
            if (transform) {
                val width = recipeWidth(wrapper);
                var matrixGrid = new List<IIngredient[]>();
                var matrixRow = new List<IIngredient>();
                var cellIndex = 0;
                for cell in wrapper.ingredients { // cell is IIngredient
                    if (cell.commandString == "<item:minecraft:coal> | <item:minecraft:charcoal>") {
                        matrixRow.add(minecraftCoals);
                    } else {
                        matrixRow.add(cell);
                    }
                    cellIndex = cellIndex+1;
                    if (cellIndex % width == 0) {
                        matrixGrid.add(matrixRow as IIngredient[]);
                        matrixRow = new List<IIngredient>();
                    }
                }
                craftingTable.addShapedMirrored(wrapper.id.path+suffix,wrapper.output,matrixGrid as IIngredient[][]);
                recipesToRemove.add(wrapper.id.toString());
            }
        }
    }
}

for recipeName in recipesToRemove {
    craftingTable.removeByName(recipeName);
}

println("END additional_lights.zs");
