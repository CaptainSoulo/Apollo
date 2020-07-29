import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified
#modloaded quark rustic tconstruct mekanism thermalexpansion actuallyadditions


print(" =================== General Tweaks / Fixes =================== ");
print(" ============================================================== ");

// Variables 
//
	var planks = <ore:plankWood>;
	val logs = <ore:logWood>;
	var ingot_cast = <tconstruct:cast_custom:0>;

//====== Cyclic Remove Item ======
//
	//remove corrupted chorus fruit to balance flight
	recipes.remove(<cyclicmagic:corrupted_chorus>);
	
//====== Natura Ghostwood Sticks (for Fletching) ======
//
	recipes.addShaped(<natura:sticks:9>*6, [[<natura:nether_planks>],[<natura:nether_planks>],[<natura:nether_planks>]]);


//====== Blaze Rod Burn Times ======
//
	//Buff blaze rods to 16 "items" smelt time (up from 12)
	furnace.setFuel(<minecraft:blaze_rod>, 3200);
	//Add burn time for blaze lantern - 64 items
	furnace.setFuel(<quark:blaze_lantern>, 12800);



//====== Bag of holding warning ======
//
	<extrautils2:bagofholding>.addTooltip(
		format.underline(format.red(
		"WARNING! Contents may be lost when switching to/from creative or OP"
		))
	);

//====== Paxels use oredict ======
//
	//Steel
	var steelAxes = [
		<thermalfoundation:tool.axe_steel>,
		<tconstruct:axe_head>.withTag({Material: "steel"}),
		<tconstruct:broad_axe_head>.withTag({Material: "steel"})
	] as IItemStack[];
	<ore:steelAxe>.addItems(steelAxes);
	var steelPickaxes = [
		<thermalfoundation:tool.pickaxe_steel>,
		<tconstruct:pick_head>.withTag({Material: "steel"})
	] as IItemStack[];
	<ore:steelPickaxe>.addItems(steelPickaxes);
	var steelShovels = [
		<tconstruct:shovel_head>.withTag({Material: "steel"}),
		<thermalfoundation:tool.shovel_steel>,
		<tconstruct:excavator_head>.withTag({Material: "steel"})
	] as IItemStack[];
	<ore:steelShovel>.addItems(steelShovels);
	//Bronze
	var bronzeAxes = [
		<thermalfoundation:tool.axe_bronze>,
		<tconstruct:axe_head>.withTag({Material: "bronze"}),
		<tconstruct:broad_axe_head>.withTag({Material: "bronze"})
	] as IItemStack[];
	<ore:bronzeAxe>.addItems(bronzeAxes);
	var bronzePickaxes = [
		<thermalfoundation:tool.pickaxe_bronze>,
		<tconstruct:pick_head>.withTag({Material: "bronze"}),
	] as IItemStack[];
	<ore:bronzePickaxe>.addItems(bronzePickaxes);
	var bronzeShovels = [
		<thermalfoundation:tool.shovel_bronze>,
		<tconstruct:shovel_head>.withTag({Material: "bronze"}),
		<tconstruct:excavator_head>.withTag({Material: "bronze"})
	] as IItemStack[];
	<ore:bronzeShovel>.addItems(bronzeShovels);


//====== Bread ======
//
	recipes.addShaped(<minecraft:bread>, [[<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]]);


//====== Quartz Grindstone ======
//
	recipes.remove(<appliedenergistics2:grindstone>);
	recipes.addShaped(<appliedenergistics2:grindstone>, [
		[<minecraft:stone>, <ore:gearAluminum>, <minecraft:stone>],
		[<appliedenergistics2:material>, <minecraft:stone>, <appliedenergistics2:material>],
		[<minecraft:cobblestone>, <appliedenergistics2:material>, <minecraft:cobblestone>]]);


//====== Aluminum Dust ======
// Unify any possible type to base type (TE)
//
	recipes.addShapeless(<thermalfoundation:material:68>, [<ore:dustAluminum>]);


//====== Slag Convert ======
// able to cycle between different types if specific one needed
//
	recipes.addShapeless(<thermalfoundation:material:864>, [<immersiveengineering:material:7>]);
	<ore:itemSlag>.add(<immersiveengineering:material:7>);
	<ore:itemSlag>.add(<thermalfoundation:material:864>);
	<ore:crystalSlag>.addAll(<ore:itemSlag>);

	

//====== Black Quartz Block ======
//
	recipes.addShapeless(<actuallyadditions:item_misc:5> * 4, [<actuallyadditions:block_misc:2>]);


//====== AE2 Press Recipes
//
	var pressCalc = <appliedenergistics2:material:13>;
	var pressEngi = <appliedenergistics2:material:14>;
	var pressLogi = <appliedenergistics2:material:15>;
	var pressSili = <appliedenergistics2:material:19>;
	var blockSkyS = <appliedenergistics2:sky_stone_block>;
	var dustSkySt = <appliedenergistics2:material:45>;
	var crystalCertusPure = <appliedenergistics2:material:10>;
	var siliconAE = <appliedenergistics2:material:5>;
	var siliconRS = <refinedstorage:silicon>;
	var siliconEIO = <enderio:item_material:5>;
	
	//Mek Infuser recipes
	mods.mekanism.infuser.addRecipe("CARBON",   80, dustSkySt, pressSili);
	mods.mekanism.infuser.addRecipe("REDSTONE", 80, dustSkySt, pressLogi);
	mods.mekanism.infuser.addRecipe("DIAMOND",  80, dustSkySt, pressEngi);
	mods.mekanism.infuser.addRecipe("TIN",      80, dustSkySt, pressCalc);
	
	//Convert from one to another
	recipes.addShapeless(pressSili, [pressLogi, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressLogi, [pressEngi, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressEngi, [pressCalc, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressCalc, [pressSili, dustSkySt, dustSkySt]);
	recipes.addShapeless(siliconAE, [siliconRS]);
	recipes.addShapeless(siliconRS, [siliconEIO]);
	recipes.addShapeless(siliconEIO, [siliconAE]);


//====== Jazz-up Quark Elytra dupe so it shows in JEI ======
//
	recipes.remove(<minecraft:elytra>.withTag({"quark:elytraDye": 0}));
	recipes.addShapeless(<minecraft:elytra>.withTag({"quark:elytraDye": 0}), [
		<minecraft:elytra>.giveBack(), <quark:enderdragon_scale>
		]);
	<quark:enderdragon_scale>.addTooltip(
					format.underline(format.aqua(
					"Can be used to DUPLICATE an Elytra"
					)));
	mods.jei.JEI.addDescription(<quark:enderdragon_scale>, "By crafting an Elytra and a Dragon Scale together, the Dragon Scale will take the form of the Elytra","",
															"","This does not consume nor damage the original Elytra");

//====== Vanilla-ish Cookie recipe ======
//
	recipes.addShaped(<minecraft:cookie>, [[<minecraft:wheat>, <minecraft:dye:3>, <minecraft:wheat>]]);


//====== Natura Flamestring ======
//
	<ore:fieryItem>.addAll(<ore:slimecrystalMagma>);
	<ore:fieryItem>.add(<mysticalagriculture:fire_essence>);
	<ore:fieryBlock>.add(<tconstruct:firewood:1>);
	<ore:fieryBlock>.addAll(<ore:blockBlaze>);
	recipes.addShaped(<natura:materials:7>*3, [
		[<ore:string>, <ore:string>, <ore:string>],
		[<ore:string>, <ore:string>, <ore:string>],
		[<ore:fieryItem>, <ore:fieryBlock>, <ore:fieryItem>]
		]);


//====== Enderman Skull ======
//
    var enderEssence = <mysticalagriculture:enderman_essence>;
    var blankSkull = <mysticalagriculture:crafting:15>;
    recipes.addShaped(<enderio:block_enderman_skull>, [
        [enderEssence, enderEssence, enderEssence],
        [enderEssence, blankSkull,   enderEssence], 
        [enderEssence, enderEssence, enderEssence]
        ]);

	recipes.remove(<minecraft:chest>);
	recipes.addShaped(<minecraft:chest>, [
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<ore:plankWood>, null, <ore:plankWood>],
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]);

	recipes.addShaped(<minecraft:chest>*4, [
		[<ore:logWood>, <ore:logWood>, <ore:logWood>],
		[<ore:logWood>, null, <ore:logWood>], 
		[<ore:logWood>, <ore:logWood>, <ore:logWood>]
		]);


//====== Removing Wrong Blocks ======
//	
	recipes.remove(<mekanism:basicblock:1>);
	recipes.remove(<mekanism:basicblock:3>);
	recipes.remove(<mekanism:basicblock:5>);
	recipes.remove(<mekanism:basicblock:12>);
	recipes.remove(<mekanism:basicblock:13>);
	recipes.remove(<actuallyadditions:block_misc:5>);
	recipes.remove(<chisel:block_charcoal2:1>);

	
//====== Add Xnet Description ======
//	
		<xnet:controller>.addTooltip(
					format.underline(format.aqua(
					"Does not need any power to operate or work."
					)));
	mods.jei.JEI.addDescription(<xnet:controller>, "Xnet controller has been configured to not use any power at all",
											 "However it has 100k of internal capacity for RF power, which you can ignore, it does not need to be charged");

											
											 