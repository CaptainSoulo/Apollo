import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

#packmode normal simplified
#ignoreBracketErrors

// Variables
	val Chest = <ore:chest>;
	val ChestWood = <ore:chestWood>;
	val ChestTrapped = <ore:chestTrapped>;
	val Trapdoor = <ore:trapdoorWood>;
	val Door = <ore:doorWood>;
	val Bed = <ore:bed>;
	val Log = <ore:logWood>;
	val Plank = <ore:plankWood>;
	val WoodSlab = <ore:slabWood>;
	val WoodStair = <ore:stairWood>;
	val WoodButton = <ore:buttonWood>;
	val Stick = <ore:stickWood>;
	val Fence = <ore:fenceWood>;
	val Gate = <ore:fenceGateWood>;
	val Sapling = <ore:treeSapling>;
	val Seed = <ore:seed>;
	val FishRaw = <ore:listAllfishraw>;
	val FishCooked = <ore:listAllfishcooked>;

	// ====== Template:
/*


//======Add to YYYYYY======
//
	var XXXXX = [
		<>
	] as IItemStack[];
	YYYYYY.addItems(XXXXXX);
*/


//======Add to Log======
//
	var LogsToAdd = [
		<harvestcraft:pamcinnamon:*>,
		<harvestcraft:pammaple:*>,
		<minecraft:log:*>,
		<minecraft:log2:*>,
//		<rustic:log:*>,
		<natura:overworld_logs:*>,
		<natura:overworld_logs2:*>,
		<natura:redwood_logs:*>,
		<natura:nether_logs:*>,
		<natura:nether_logs2:*>,
		<thaumcraft:log_greatwood:*>,
		<thaumcraft:log_silverwood:*>,
		<thaumcraft:taint_log:*>,
	] as IItemStack[];
	Log.addItems(LogsToAdd);
	
	// Rubber logs misc
	<ore:rubberWood>.addAll(<ore:logRubber>);


//====== Planks ======
//
	var PlanksToAdd = [
		<chisel:planks-acacia:*>,
		<chisel:planks-birch:*>,
		<chisel:planks-dark-oak:*>,
		<chisel:planks-jungle:*>,
		<chisel:planks-oak:*>,
		<chisel:planks-spruce:*>,
		<minecraft:planks:*>,
		<quark:stained_planks:*>,
		<quark:vertical_planks:*>,
		<quark:vertical_stained_planks:*>,
	] as IItemStack[];
	Plank.addItems(PlanksToAdd);


//====== Crafting Tables ======
//
	var TablesToAdd = [
		<actuallyadditions:item_crafter_on_a_stick>,
		<minecraft:crafting_table>
	] as IItemStack[];
	<ore:craftingTableWood>.addItems(TablesToAdd);
	<ore:crafterWood>.addItems(TablesToAdd);
	<ore:craftingTableWood>.addAll(<ore:crafterWood>);
	<ore:crafterWood>.addAll(<ore:craftingTableWood>);


//======Add to chest======
//
	var ChestsToAdd = [
		<minecraft:chest:*>,
		<minecraft:ender_chest:*>,
		<minecraft:trapped_chest:*>,
		<actuallyadditions:block_treasure_chest:*>,
		<bibliocraft:framedchest:0>,
		<bibliocraft:framedchest:1>,
		<bibliocraft:framedchest:2>,
		<bibliocraft:framedchest:3>,
		<bibliocraft:framedchest:4>,
		<bibliocraft:framedchest:5>,
		<bibliocraft:framedchest:6>,
		<appliedenergistics2:sky_stone_chest>,
		<appliedenergistics2:smooth_sky_stone_chest>,
		<quark:custom_chest:*>,
		<quark:custom_chest_trap:*>,
	] as IItemStack[];
	Chest.addItems(ChestsToAdd);


//======Add to chestWood======
//
	var WoodChestToAdd = [
		<minecraft:chest:*>,
		<minecraft:trapped_chest:*>,
		<bibliocraft:framedchest:0>,
		<bibliocraft:framedchest:1>,
		<bibliocraft:framedchest:2>,
		<bibliocraft:framedchest:3>,
		<bibliocraft:framedchest:4>,
		<bibliocraft:framedchest:5>,
		<bibliocraft:framedchest:6>,
		<quark:custom_chest:*>,
		<quark:custom_chest_trap:*>,
	] as IItemStack[];
	ChestWood.addItems(WoodChestToAdd);


//======Add to chestTrapped======
//
	var TrappedChestToAdd = [
		<minecraft:trapped_chest:*>,
		<quark:custom_chest_trap:*>
	] as IItemStack[];
	ChestTrapped.addItems(TrappedChestToAdd);


//======Add to ore:bed======
//
	var BedToAdd = [
		<minecraft:bed:*>,
		<cyclicmagic:sleeping_mat:*>
	] as IItemStack[];
	Bed.addItems(BedToAdd);


//======Add to ore:buttonWood======
//
	var ButtonsToAdd = [
		<natura:darkwood_button>,
		<natura:sakura_button>,
		<natura:hopseed_button>,
		<natura:eucalyptus_button>,
		<natura:willow_button>,
		<natura:tiger_button>,
		<natura:amaranth_button>,
		<natura:silverbell_button>,
		<natura:maple_button>,
		<natura:nether_button>,
		<minecraft:wooden_button>,
		<natura:darkwood_button>,
		<natura:fusewood_button>,
		<natura:bloodwood_button>,
		<natura:ghostwood_button>,
		<natura:redwood_button>
	] as IItemStack[];
	WoodButton.addItems(ButtonsToAdd);


//======Add to Trapdoor======
//
	var TrapdoorToAdd = [
		<minecraft:trapdoor:*>,
		<quark:dark_oak_trapdoor>,
		<quark:spruce_trapdoor>,
		<quark:birch_trapdoor>,
		<quark:jungle_trapdoor>,
		<quark:acacia_trapdoor>
	] as IItemStack[];
	Trapdoor.addItems(TrapdoorToAdd);


//======Add to Door======
	var DoorToAdd = [
		<minecraft:wooden_door:*>,
		<minecraft:acacia_door:*>,
		<minecraft:jungle_door:*>,
		<minecraft:birch_door:*>,
		<minecraft:spruce_door:*>,
		<minecraft:dark_oak_door:*>
	] as IItemStack[];
	Door.addItems(DoorToAdd);


//======Add to Seeds======
//
	var SeedsToAdd= [
		<actuallyadditions:item_canola_seed:*>,
		<actuallyadditions:item_coffee_seed:*>,
		<actuallyadditions:item_flax_seed:*>,
		<actuallyadditions:item_misc:23>,
		<actuallyadditions:item_misc:24>,
		<actuallyadditions:item_rice_seed:*>,
		<cyclicmagic:sprout_seed:*>,
		<harvestcraft:artichokeseeditem:*>,
		<harvestcraft:asparagusseeditem:*>,
		<harvestcraft:bambooshootseeditem:*>,
		<harvestcraft:barleyseeditem:*>,
		<harvestcraft:beanseeditem:*>,
		<harvestcraft:beetseeditem:*>,
		<harvestcraft:bellpepperseeditem:*>,
		<harvestcraft:blackberryseeditem:*>,
		<harvestcraft:blueberryseeditem:*>,
		<harvestcraft:broccoliseeditem:*>,
		<harvestcraft:brusselsproutseeditem:*>,
		<harvestcraft:cabbageseeditem:*>,
		<harvestcraft:cactusfruitseeditem:*>,
		<harvestcraft:candleberryseeditem:*>,
		<harvestcraft:cantaloupeseeditem:*>,
		<harvestcraft:cauliflowerseeditem:*>,
		<harvestcraft:celeryseeditem:*>,
		<harvestcraft:chilipepperseeditem:*>,
		<harvestcraft:coffeeseeditem:*>,
		<harvestcraft:cornseeditem:*>,
		<harvestcraft:cottonseeditem:*>,
		<harvestcraft:cranberryseeditem:*>,
		<harvestcraft:cucumberseeditem:*>,
		<harvestcraft:curryleafseeditem:*>,
		<harvestcraft:eggplantseeditem:*>,
		<harvestcraft:garlicseeditem:*>,
		<harvestcraft:gingerseeditem:*>,
		<harvestcraft:grapeseeditem:*>,
		<harvestcraft:kiwiseeditem:*>,
		<harvestcraft:leekseeditem:*>,
		<harvestcraft:lettuceseeditem:*>,
		<harvestcraft:mustardseeditem:*>,
		<harvestcraft:mustardseedsitem:*>,
		<harvestcraft:oatsseeditem:*>,
		<harvestcraft:okraseeditem:*>,
		<harvestcraft:onionseeditem:*>,
		<harvestcraft:parsnipseeditem:*>,
		<harvestcraft:peanutseeditem:*>,
		<harvestcraft:peasseeditem:*>,
		<harvestcraft:pineappleseeditem:*>,
		<harvestcraft:radishseeditem:*>,
		<harvestcraft:raspberryseeditem:*>,
		<harvestcraft:rhubarbseeditem:*>,
		<harvestcraft:riceseeditem:*>,
		<harvestcraft:roastedpumpkinseedsitem:*>,
		<harvestcraft:rutabagaseeditem:*>,
		<harvestcraft:ryeseeditem:*>,
		<harvestcraft:saltedsunflowerseedsitem:*>,
		<harvestcraft:scallionseeditem:*>,
		<harvestcraft:seaweedseeditem:*>,
		<harvestcraft:seedsoupitem:*>,
		<harvestcraft:sesameseedsitem:*>,
		<harvestcraft:sesameseedsseeditem:*>,
		<harvestcraft:soybeanseeditem:*>,
		<harvestcraft:spiceleafseeditem:*>,
		<harvestcraft:spinachseeditem:*>,
		<harvestcraft:strawberryseeditem:*>,
		<harvestcraft:sunflowerseedsitem:*>,
		<harvestcraft:sweetpotatoseeditem:*>,
		<harvestcraft:teaseeditem:*>,
		<harvestcraft:toastedsesameseedsitem:*>,
		<harvestcraft:tomatoseeditem:*>,
		<harvestcraft:turnipseeditem:*>,
		<harvestcraft:waterchestnutseeditem:*>,
		<harvestcraft:whitemushroomseeditem:*>,
		<harvestcraft:wintersquashseeditem:*>,
		<harvestcraft:zucchiniseeditem:*>,
		<immersiveengineering:seed:*>,
		<minecraft:beetroot_seeds:*>,
		<minecraft:melon_seeds:*>,
		<minecraft:pumpkin_seeds:*>,
		<minecraft:wheat_seeds:*>,
	] as IItemStack[];
	<ore:listAllSeed>.addItems(SeedsToAdd);
	<ore:listAllSeed>.addAll(Seed);


//======Add to FishRaw======
//
	var RawFishToAdd = [
		<harvestcraft:catfishrawitem:*>,
		<harvestcraft:crayfishrawitem:*>,
		<harvestcraft:greenheartfishitem:*>,
		<harvestcraft:jellyfishrawitem:*>,
		<harvestcraft:mudfishrawitem:*>,
		<harvestcraft:rawtofishitem:*>,
		<harvestcraft:calamarirawitem:*>,
		<harvestcraft:anchovyrawitem:*>,
		<harvestcraft:bassrawitem:*>,
		<harvestcraft:carprawitem:*>,
		<harvestcraft:charrrawitem:*>,
		<harvestcraft:clamrawitem:*>,
		<harvestcraft:crabrawitem:*>,
		<harvestcraft:eelrawitem:*>,
		<harvestcraft:frograwitem:*>,
		<harvestcraft:grouperrawitem:*>,
		<harvestcraft:herringrawitem:*>,
		<harvestcraft:octopusrawitem:*>,
		<harvestcraft:perchrawitem:*>,
		<harvestcraft:scalloprawitem:*>,
		<harvestcraft:shrimprawitem:*>,
		<harvestcraft:snailrawitem:*>,
		<harvestcraft:snapperrawitem:*>,
		<harvestcraft:tilapiarawitem:*>,
		<harvestcraft:troutrawitem:*>,
		<harvestcraft:tunarawitem:*>,
		<harvestcraft:turtlerawitem:*>,
		<harvestcraft:walleyerawitem:*>,
		<harvestcraft:sardinerawitem:*>,
		<harvestcraft:musselrawitem:*>,
		<minecraft:fish:*>
	] as IItemStack[];
	FishRaw.addItems(RawFishToAdd);
	<ore:fish>.addAll(FishRaw);


//======Add to FishCooked======
//
	var cookedFishMinecraft = [null] as IItemStack[];
	if(loadedMods in "minecraft"){
		cookedFishMinecraft = [
			<minecraft:cooked_fish:*>
		];
	}
	var cookedFishHarvestcraft = [null] as IItemStack[];
	if(loadedMods in "harvestcraft"){
		cookedFishHarvestcraft = [
			<harvestcraft:cookedtofishitem:*>,
			<harvestcraft:crayfishcookeditem:*>,
			<harvestcraft:fishandchipsitem:*>,
			<harvestcraft:fishdinneritem:*>,
			<harvestcraft:fishlettucewrapitem:*>,
			<harvestcraft:fishsandwichitem:*>,
			<harvestcraft:fishsticksitem:*>,
			<harvestcraft:fishtacoitem:*>,
			<harvestcraft:leafyfishsandwichitem:*>,
			<harvestcraft:calamaricookeditem:*>,
			<harvestcraft:clamcookeditem:*>,
			<harvestcraft:crabcookeditem:*>,
			<harvestcraft:frogcookeditem:*>,
			<harvestcraft:octopuscookeditem:*>,
			<harvestcraft:scallopcookeditem:*>,
			<harvestcraft:shrimpcookeditem:*>,
			<harvestcraft:snailcookeditem:*>,
			<harvestcraft:salmonpattiesitem:*>,
			<harvestcraft:coconutshrimpitem:*>,
			<harvestcraft:shrimpokrahushpuppiesitem:*>,
			<harvestcraft:turtlecookeditem:*>
		];
	}
	var cookedFishTinkers = [null] as IItemStack[];
	if(loadedMods in "tconstruct"){
		cookedFishTinkers = [
			<tconstruct:edible:20>,
			<tconstruct:edible:22>
		];
	}
	FishCooked.addItems(cookedFishMinecraft);
	FishCooked.addItems(cookedFishHarvestcraft);
	FishCooked.addItems(cookedFishTinkers);
	<ore:fish>.addAll(FishCooked);


//====== Wood Dust/Pulp ======
//
	<ore:dustWood>.addItems([
		<mekanism:sawdust>,
		<thermalfoundation:material:800>
		]);
	<ore:dustSawDust>.addAll(<ore:dustWood>);
	<ore:pulpWood>.addAll(<ore:dustWood>);


//======Conversion Recipes======
	recipes.addShapeless("trapdoororedict1", <minecraft:trapdoor>, [Trapdoor]);
	recipes.addShapeless("trappedchestoredict1", <minecraft:trapped_chest>, [ChestTrapped]);
	recipes.addShapeless("chestoredict1", <minecraft:chest>, [Chest]);
	recipes.addShapeless("bedoredict1", <minecraft:bed>, [<ore:bed>]);
	recipes.addShapeless("wooddoororedict1", <minecraft:wooden_door>, [Door]);