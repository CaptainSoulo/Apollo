import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

#packmode normal simplified
#ignoreBracketErrors

// Miscellaneous Conflict Fixes

	recipes.remove(<thermalfoundation:tool.sword_bronze:0>);
	recipes.remove(<thermalfoundation:tool.shovel_bronze:0>);
	recipes.remove(<thermalfoundation:tool.hoe_bronze:0>);
	recipes.remove(<thermalfoundation:tool.axe_bronze:0>);
	recipes.remove(<thermalfoundation:tool.pickaxe_bronze:0>);
	recipes.remove(<thermalfoundation:armor.legs_bronze:0>);
	recipes.remove(<thermalfoundation:armor.plate_bronze:0>);
	recipes.remove(<thermalfoundation:armor.helmet_bronze:0>);
	recipes.remove(<thermalfoundation:armor.boots_bronze:0>);
	recipes.remove(<actuallyadditions:item_pickaxe_emerald:0>);
	recipes.remove(<actuallyadditions:item_chest_emerald:0>);
	recipes.remove(<actuallyadditions:item_pants_emerald:0>);
	recipes.remove(<actuallyadditions:block_misc:5>);    // conflicts with <chisel:block_charcoal2:1>
	recipes.remove(<mekanism:basicblock:3>);    // conflicts with <chisel:block_charcoal2:1>
	
// Portal Ignitor Fix
	recipes.remove(<aroma1997sdimension:miningmultitool>);
	recipes.addShaped(<aroma1997sdimension:miningmultitool>, 
		[[	<ore:bricksStone>, 		<minecraft:diamond_pickaxe>, 		<ore:bricksStone>],
		[	<ore:ingotDraconium>, 	<minecraft:flint_and_steel>,<ore:ingotDraconium>],
		[	null, 					<ore:stickWood>, 				null		 ]]
	);
	
// Chicken Ring Fix
	recipes.remove(<extrautils2:chickenring>);
	recipes.addShaped(<extrautils2:chickenring>, 
		[[<ore:feather>, <ore:ingotIron>, <ore:feather>], 
		[<ore:ingotIron>, <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:rooster_leghorn"}, Animal_Metadata: {Health: 6.0 as float, MaxHealth: 6.0 as float}, No_Place: 1 as byte}), <ore:ingotIron>], 
		[<extrautils2:ingredients>, <ore:ingotIron>, <extrautils2:ingredients>]]
	);
	
// Quarry Shape Card Fix
	recipes.remove(<rftools:shape_card:2>);
	recipes.addShaped(<rftools:shape_card:2>,
		[[	<minecraft:redstone>,	<thermalfoundation:material:26>,	<minecraft:redstone>],
		[	<minecraft:iron_ingot>,	<rftools:shape_card>,	<minecraft:iron_ingot>			],
		[	<minecraft:redstone>,	null,	<minecraft:redstone>							]]
	);