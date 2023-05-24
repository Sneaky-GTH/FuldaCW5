import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
import mods.magneticraft.Crusher;
import mods.magneticraft.Grinder;
import mods.magneticraft.Sifter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher as IECRusher;
import mods.advancedrocketry.AdvancedRocketryManager;

val pAssembler = AdvancedRocketryManager.findMachine("TilePrecisionAssembler");

/*
All the initial variables from items_and_recipes.zs (not sure if there was a way to import variables from another .zs file)
*/

val IRON_PLATE = <item:ImmersiveEngineering:metal:30>;
val ALUMINIUM_PLATE = <item:ImmersiveEngineering:metal:32>;
val STEEL_PLATE = <item:ImmersiveEngineering:metal:38>;
val IRON_ROD = <item:ImmersiveEngineering:material:14>;
val STEEL_ROD = <item:ImmersiveEngineering:material:15>;
val ALUMINIUM_ROD = <item:ImmersiveEngineering:material:16>;
val IRON_SHEETMETAL = <item:ImmersiveEngineering:metalDecoration:10>;
val WROUGHT_IRON_SCAFFOLDING =  <item:ImmersiveEngineering:metalDecoration2:3>;
val RADIATOR_BLOCK = <item:ImmersiveEngineering:metalDecoration:4>;
val STEEL_SCAFFOLDING = <item:ImmersiveEngineering:metalDecoration:1>;
val HEAVY_ENG_BLOCK = <item:ImmersiveEngineering:metalDecoration:5>;
val GENERATOR_BLOCK = <item:ImmersiveEngineering:metalDecoration:6>;
val LIGHT_ENGINEERING_BLOCK = <item:ImmersiveEngineering:metalDecoration:7>;
val ALUMINIUM_SCAFFOLDING = <item:ImmersiveEngineering:metalDecoration:13>;
val STEEL_SHEETMETAL = <item:ImmersiveEngineering:metalDecoration2:2>;
val ALUMINIUM_SHEETMETAL = <item:ImmersiveEngineering:metalDecoration2>;
val COPPER_COIL = <item:ImmersiveEngineering:storage:8>;
val MAGNET = <item:Magneticraft:item.magnet>;
val COPPER_HEAT_COIL = <item:Magneticraft:item.heatcoil_copper>; //TODO Check if these three have a spot or should be deleted
val IRON_HEAT_COIL = <item:Magneticraft:item.heatcoil_iron>;  //As they might be too niche to be reused across multiple recipes.
val TUNGSTEN_HEAT_COIL = <item:Magneticraft:item.heatcoil_tungsten>; //IDK, thinking about it.
val ELECTRIC_MOTOR = <item:Magneticraft:item.motor>;
val COPPER_COIL_MGC = <item:Magneticraft:item.copper_coil>;
val IRON_TORQUE_SHAFT = <item:AncientWarfare:component:7>;
val STEEL_TORQUE_SHAFT = <item:AncientWarfare:component:8>;
val IRON_GEAR_SET = <item:AncientWarfare:component:1>;
val STEEL_GEAR_SET = <item:AncientWarfare:component:2>;
val IRON_MECH_COMP = <item:ImmersiveEngineering:material:11>;
val STEEL_MECH_COMP = <item:ImmersiveEngineering:material:12>;
val TREATED_WOOD = <item:ImmersiveEngineering:woodenDecoration:4>;
val RUBBER = <item:Magneticraft:item.rubber>;
val FABRIC = <item:Magneticraft:item.string_fabric>;
val TUNGSTEN = <item:hbm:item.ingot_tungsten>;



var COIN = <item:minecraft:gold_ingot>; // soft currency
var COINBLOCK = <item:minecraft:gold_block>; // convenient way to store 9 'soft currency'
var HARDCOIN = <item:advancedRocketry:advancedRocketryproductingot>; // hard currency
var IRON = <item:minecraft:iron_ingot>; // main building block for stuff
val BREAD = <item:minecraft:bread>;
val STEAK = <item:minecraft:cooked_beef>;
val CHICKEN = <item:minecraft:cooked_chicken>;
val IRON_ORE = <item:minecraft:iron_ore>;
val IRON_BLOCK = <item:minecraft:iron_block>;
val COPPER_ROD = <item:libVulpes:libVulpesproductrod:4>;
val COPPER = <item:ImmersiveEngineering:metal>;
val IRON_FRAME = <item:minefantasy2:MF_Com_iron_frame>;
val TITANIUM = <item:advancedRocketry:advancedRocketryproductingot>;
val TITANIUM_BLOCK = <item:advancedRocketry:advancedRocketrymetal0>;
val TITANIUM_ROD = <item:advancedRocketry:advancedRocketryproductrod>;
val TITANIUM_GEAR = <item:advancedRocketry:advancedRocketryproductgear>;
val STEEL = <item:ImmersiveEngineering:metal:7>;

recipes.remove(<item:ImmersiveEngineering:metalDecoration:5>);
recipes.remove(<item:ImmersiveEngineering:metalDecoration:7>);

//Heavy Engineering Block
recipes.addShaped(<item:ImmersiveEngineering:metalDecoration:5>,
 [[STEEL_PLATE, TITANIUM_ROD, STEEL_PLATE],
  [TITANIUM_ROD, STEEL_MECH_COMP, TITANIUM_ROD],
  [STEEL_PLATE, TITANIUM_ROD, STEEL_PLATE]]);


//Light Engineering Block
recipes.addShaped(<item:ImmersiveEngineering:metalDecoration:7>,
 [[IRON_PLATE, IRON_ROD, IRON_PLATE],
  [IRON_ROD,IRON_MECH_COMP, IRON_ROD],
  [IRON_PLATE, IRON_ROD, IRON_PLATE]]);

//Precision Assembler
recipes.addShaped(<item:advancedRocketry:precisionassemblingmachine>,
 [[TITANIUM_GEAR, STEEL_MECH_COMP, TITANIUM_GEAR],
  [<item:hbm:item.ingot_dura_steel>, <item:libVulpes:blockStructureBlock>, <item:hbm:item.ingot_dura_steel>],
  [TITANIUM_BLOCK, TITANIUM_BLOCK, TITANIUM_BLOCK]]);

//HSS Bolt
pAssembler.addRecipe([<item:hbm:item.bolt_dura_steel>], [], [<item:hbm:item.ingot_dura_steel>*4], [], 600, 100);

//Arc Furnace HSS
mods.immersiveengineering.ArcFurnace.removeRecipe(<item:hbm:item.ingot_dura_steel>);
furnace.remove(<item:hbm:item.ingot_dura_steel>);
mods.immersiveengineering.ArcFurnace.addRecipe(<item:hbm:item.ingot_dura_steel>, <item:hbm:item.powder_dura_steel>, <item:ImmersiveEngineering:material:13>, 1200, 120, [<item:advancedRocketry:advancedRocketryproductdust>]);


//HSS Dust
IECRusher.addRecipe(<item:Magneticraft:item.pebbles>, <item:minecraft:iron_block>, 40);
recipes.addShaped(<item:hbm:item.powder_dura_steel>,
 [[<item:minefantasy2:MF_Com_coal_flux>, <item:minefantasy2:MF_Com_coal_flux>, <item:minefantasy2:MF_Com_coal_flux>],
  [<item:minefantasy2:MF_Com_coal_flux>, <item:Magneticraft:item.pebbles>, <item:minefantasy2:MF_Com_coal_flux>],
  [<item:minefantasy2:MF_Com_coal_flux>, <item:minefantasy2:MF_Com_coal_flux>, <item:minefantasy2:MF_Com_coal_flux>]]);


//Industrial Squeezer
recipes.remove(<item:ImmersiveEngineering:metalMultiblock:2>);

recipes.addShaped(<item:ImmersiveEngineering:metalMultiblock:2>*2,
 [[IRON_PLATE, STEEL_PLATE, IRON_PLATE],
  [TITANIUM_ROD, <item:ImmersiveEngineering:metalDecoration:7>, TITANIUM_ROD],
  [IRON_PLATE, STEEL_PLATE, IRON_PLATE]]);

