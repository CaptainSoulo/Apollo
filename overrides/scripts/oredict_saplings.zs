import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified

// Saplings for OreDict
	val Sapling = <ore:treeSapling>;
	var SaplingsToAdd = [
		<harvestcraft:almond_sapling:32767>,
		<harvestcraft:apple_sapling:32767>,
		<harvestcraft:apricot_sapling:32767>,
		<harvestcraft:avocado_sapling:32767>,
		<harvestcraft:banana_sapling:32767>,
		<harvestcraft:cashew_sapling:32767>,
		<harvestcraft:cherry_sapling:32767>,
		<harvestcraft:chestnut_sapling:32767>,
		<harvestcraft:cinnamon_sapling:32767>,
		<harvestcraft:coconut_sapling:32767>,
		<harvestcraft:date_sapling:32767>,
		<harvestcraft:dragonfruit_sapling:32767>,
		<harvestcraft:durian_sapling:32767>,
		<harvestcraft:fig_sapling:32767>,
		<harvestcraft:gooseberry_sapling:32767>,
		<harvestcraft:grapefruit_sapling:32767>,
		<harvestcraft:lemon_sapling:32767>,
		<harvestcraft:lime_sapling:32767>,
		<harvestcraft:mango_sapling:32767>,
		<harvestcraft:maple_sapling:32767>,
		<harvestcraft:nutmeg_sapling:32767>,
		<harvestcraft:olive_sapling:32767>,
		<harvestcraft:orange_sapling:32767>,
		<harvestcraft:papaya_sapling:32767>,
		<harvestcraft:paperbark_sapling:32767>,
		<harvestcraft:peach_sapling:32767>,
		<harvestcraft:pear_sapling:32767>,
		<harvestcraft:pecan_sapling:32767>,
		<harvestcraft:peppercorn_sapling:32767>,
		<harvestcraft:persimmon_sapling:32767>,
		<harvestcraft:pistachio_sapling:32767>,
		<harvestcraft:plum_sapling:32767>,
		<harvestcraft:pomegranate_sapling:32767>,
		<harvestcraft:starfruit_sapling:32767>,
		<harvestcraft:vanillabean_sapling:32767>,
		<harvestcraft:walnut_sapling:32767>,
		<tconstruct:slime_sapling:32767>,
		<minecraft:sapling:32767>
	] as IItemStack[];
	
	Sapling.addItems(SaplingsToAdd);