import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

#packmode normal simplified
#modloaded quark rustic

// Wood

// Acacia
//	recipeQuarkChange("acacia","bark",<quark:bark:4>); 
	recipeQuarkChange("acacia","bookshelf",<quark:custom_bookshelf:3>); 
	recipeQuarkChange("acacia","chest",<quark:custom_chest:3>); 
	recipeQuarkChange("acacia","trapdoor",<quark:acacia_trapdoor:0>); 

// Birch
//	recipeQuarkChange("birch","bark",<quark:bark:2>); 
	recipeQuarkChange("birch","bookshelf",<quark:custom_bookshelf:1>); 
	recipeQuarkChange("birch","chest",<quark:custom_chest:1>); 
	recipeQuarkChange("birch","trapdoor",<quark:birch_trapdoor:0>);
	
// Dark Oak
//	recipeQuarkChange("darkoak","bark",<quark:bark:5>); 
	recipeQuarkChange("darkoak","bookshelf",<quark:custom_bookshelf:4>); 
	recipeQuarkChange("darkoak","chest",<quark:custom_chest:4>); 
	recipeQuarkChange("darkoak","trapdoor",<quark:dark_oak_trapdoor:0>); 	
	
// Jungle
//	recipeQuarkChange("jungle","bark",<quark:bark:3>); 
	recipeQuarkChange("jungle","bookshelf",<quark:custom_bookshelf:2>); 
	recipeQuarkChange("jungle","chest",<quark:custom_chest:2>); 
	recipeQuarkChange("jungle","trapdoor",<quark:jungle_trapdoor:0>); 

// Spruce
//	recipeQuarkChange("spruce","bark",<quark:bark:1>); 
	recipeQuarkChange("spruce","bookshelf",<quark:custom_bookshelf:0>); 
	recipeQuarkChange("spruce","chest",<quark:custom_chest:0>); 
	recipeQuarkChange("spruce","trapdoor",<quark:spruce_trapdoor:0>); 
	
// Oak
//	recipeQuarkChange("oak","bark",<quark:bark:0>); 
	
// Fix Bark
	recipes.removeShapeless(<minecraft:log>, [<quark:bark>], true);
	recipes.removeShapeless(<minecraft:log:1>, [<quark:bark:1>], true);
	recipes.removeShapeless(<minecraft:log:2>, [<quark:bark:2>], true);
	recipes.removeShapeless(<minecraft:log:3>, [<quark:bark:3>], true);
	recipes.removeShapeless(<minecraft:log2>, [<quark:bark:4>], true);
	recipes.removeShapeless(<minecraft:log2:1>, [<quark:bark:5>], true);

	
// Recipe Funct
	function recipeQuarkChange(
		woodKind as string, 
		itemKind as string, 
		itemOutput as IItemStack 
	) { 
		//Define "Associative Array" for plank types
		val plankTypes = {
			acacia : <minecraft:planks:4>,
			birch : <minecraft:planks:2>,
			darkoak : <minecraft:planks:5>,
			jungle : <minecraft:planks:3>,
			spruce : <minecraft:planks:1>,
			oak : <minecraft:planks:0>
		} as IItemStack[string];

		//Define "Associative Array" for Item Types
		val itemTypes = {
		//	bark : <overloaded:compressed_log:0>,
			bookshelf : <ore:bookshelf>,
			chest : <ore:chestWood>,
			trapdoor : <ore:trapdoorWood>
		} as IIngredient[string];

		//define output quantity based on type
		var outQty = 1 as byte;
		if(itemKind == "bark") { var outQty = 9; }

		//remove recipe first
		recipes.remove(itemOutput);

		//add conversion recipe
		recipes.addShapeless(itemOutput * outQty, [
			itemTypes[itemKind], plankTypes[woodKind]
			]);
}

//====== Function to convert wood ======
//
	function convertRecipe(x as IIngredient, y as IItemStack){
	//                     x = input         y = output
		
		recipes.addShapeless(y*8, [x,x,x,x,x,x,x,x,x]);
	}