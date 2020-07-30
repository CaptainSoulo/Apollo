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
	recipes.remove(<actuallyadditions:block_misc:5>);    // conflicts with <chisel:block_charcoal2:1>
	recipes.remove(<mekanism:basicblock:3>);    // conflicts with <chisel:block_charcoal2:1>
	
// Portal Ignitor Fix
	recipes.remove(<aroma1997sdimension:miningmultitool>);
	recipes.addShaped(<aroma1997sdimension:miningmultitool>, 
		[[	<ore:bricksStone>, 		<minecraft:diamond_pickaxe>, 		<ore:bricksStone>],
		[	<ore:ingotDraconium>, 	<minecraft:flint_and_steel>,<ore:ingotDraconium>],
		[	null, 					<ore:stickWood>, 				null		 ]]
	);
	
val ringChicksEntry = <ore:ringChicks>;
ringChicksEntry.add([
	<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:chicken"}, No_Place: 1 as byte}),

	<extrautils2:goldenlasso>.withTag({Animal: {id: "animania:chick_leghorn"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:chick_orpington"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:chick_plymouth_rock"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:chick_rhode_island_red"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:chick_wyandotte"}, No_Place: 1 as byte}),

    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:hen_leghorn"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:hen_orpington"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:hen_plymouth_rock"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:hen_rhode_island_red"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:hen_wyandotte"}, No_Place: 1 as byte}),

    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:rooster_leghorn"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:rooster_orpington"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:rooster_plymouth_rock"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:rooster_rhode_island_red"}, No_Place: 1 as byte}),
    <extrautils2:goldenlasso>.withTag({Animal: {id: "animania:rooster_wyandotte"}, No_Place: 1 as byte})
]);
recipes.removeShaped(<extrautils2:chickenring>);
recipes.addShaped(<extrautils2:chickenring>, 
[[<ore:feather>, <ore:ingotIron>, <ore:feather>], 
[<ore:ingotIron>, ringChicksEntry, <ore:ingotIron>], 
[<extrautils2:ingredients>, <ore:ingotIron>, <extrautils2:ingredients>]]);
	
// Quarry Shape Card Fix
	recipes.remove(<rftools:shape_card:2>);
	recipes.addShaped(<rftools:shape_card:2>,
		[[	<minecraft:redstone>,	<thermalfoundation:material:26>,	<minecraft:redstone>],
		[	<minecraft:iron_ingot>,	<rftools:shape_card>,	<minecraft:iron_ingot>			],
		[	<minecraft:redstone>,	null,	<minecraft:redstone>							]]
	);
	