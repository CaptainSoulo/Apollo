import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

#packmode normal simplified
#ignoreBracketErrors

// Black Hole Removal
	recipes.remove(<industrialforegoing:black_hole_unit>);
	recipes.remove(<industrialforegoing:black_hole_controller>);
	recipes.remove(<industrialforegoing:black_hole_controller_reworked>);
	recipes.remove(<industrialforegoing:black_hole_tank>);
	
// Bed Fix
	recipes.addShaped("dorsetbrownbed", <minecraft:bed:12>,
	[[	null, null, null 										],
	[	<animania:wool:0>, <animania:wool:0>, <animania:wool:0> ],
	[	<ore:plankWood>, <ore:plankWood>, <ore:plankWood>		]]
	);

	recipes.addShaped("friesianblackbed", <minecraft:bed:15>,
	[[	null, null, null 										],
	[	<animania:wool:1>, <animania:wool:1>, <animania:wool:1> ],
	[	<ore:plankWood>, <ore:plankWood>, <ore:plankWood>		]]
	);
	
	recipes.addShaped("friesianbrownbed", <minecraft:bed:12>,
	[[	null, null, null 										],
	[	<animania:wool:2>, <animania:wool:2>, <animania:wool:2> ],
	[	<ore:plankWood>, <ore:plankWood>, <ore:plankWood>		]]
	);

	recipes.addShaped("jacobwhitebed", <minecraft:bed:0>,
	[[	null, null, null 										],
	[	<animania:wool:3>, <animania:wool:3>, <animania:wool:3> ],
	[	<ore:plankWood>, <ore:plankWood>, <ore:plankWood>		]]
	);
	
	recipes.addShaped("merinobrownbed", <minecraft:bed:12>,
	[[	null, null, null 										],
	[	<animania:wool:4>, <animania:wool:4>, <animania:wool:4> ],
	[	<ore:plankWood>, <ore:plankWood>, <ore:plankWood>		]]
	);

	recipes.addShaped("merinowhitebed", <minecraft:bed:0>,
	[[	null, null, null 										],
	[	<animania:wool:5>, <animania:wool:5>, <animania:wool:5> ],
	[	<ore:plankWood>, <ore:plankWood>, <ore:plankWood>		]]
	);

	recipes.addShaped("suffolkbrownbed", <minecraft:bed:0>,
	[[	null, null, null 										],
	[	<animania:wool:6>, <animania:wool:6>, <animania:wool:6> ],
	[	<ore:plankWood>, <ore:plankWood>, <ore:plankWood>		]]
	);
	
// Flint And Steel
	recipes.remove(<minecraft:flint_and_steel>);
	recipes.addShaped("actualsteel", <minecraft:flint_and_steel>,
	[[	null, <thermalfoundation:material:160>	],
	[	<minecraft:flint>, null					]]
	);
	
// Furnace
	recipes.remove(<minecraft:furnace>);
	recipes.addShaped("compressed_furnace", <minecraft:furnace>,
	[[	<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone> ],
	[	<minecraft:cobblestone>, <extrautils2:compressedcobblestone>,	<minecraft:cobblestone> ],
	[	<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone> ]]
	);
	
// Ore Excavation Modifier
	recipes.remove(<oeintegration:excavatemodifier>);
	recipes.addShaped("oe_apollo_modifier", <oeintegration:excavatemodifier>,
	[[	<ore:ingotIron>, <ore:slimeball>, <ore:ingotIron> ],
	[	<ore:dustRedstone>, <tconstruct:cast>, <ore:dustRedstone> ],
	[	<ore:ingotIron>, <ore:slimeball>, <ore:ingotIron> ]]
	);
	
// Blast Bricks (Needed for Flint And Steel Mod, keeps original recipe)
	recipes.addShaped("blastbrickalt", <immersiveengineering:stone_decoration:1> * 3, 
	[[<ore:ingotBrickSeared>, <ore:ingotBrick>, <ore:ingotBrickSeared>], 
	[<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], 
	[<ore:ingotBrickSeared>, <ore:ingotBrick>, <ore:ingotBrickSeared>]]);