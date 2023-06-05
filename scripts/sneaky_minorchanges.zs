import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
import mods.nei.NEI;

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


// RF Alternator
recipes.addShaped(<item:Magneticraft:rf_alternator>,
 [[COPPER_HEAT_COIL, <item:ImmersiveEngineering:coil>, COPPER_HEAT_COIL],
  [<item:ImmersiveEngineering:coil>, IRON_PLATE, <item:ImmersiveEngineering:coil>],
  [COPPER_HEAT_COIL, <item:ImmersiveEngineering:coil>, COPPER_HEAT_COIL]]);


//removing tanks that can keep storage
recipes.remove(<item:ImmersiveEngineering:woodenDevice:6>);
NEI.hide(<item:ImmersiveEngineering:woodenDevice:6>);
recipes.remove(<item:ImmersiveEngineering:metalDevice2:7>);
NEI.hide(<item:ImmersiveEngineering:metalDevice2:7>);
recipes.remove(<item:ImmersiveEngineering:woodenDevice:4>);
NEI.hide(<item:ImmersiveEngineering:woodenDevice:4>);


// MGC pipes
recipes.addShaped(<item:Magneticraft:item.iron_pipe>*8,
 [[IRON_PLATE, IRON_ROD, IRON_PLATE],
  [IRON_ROD, null, IRON_ROD],
  [IRON_PLATE, IRON_ROD, IRON_PLATE]]);

recipes.addShaped(<item:Magneticraft:item.copper_pipe>*24,
 [[COPPER, COPPER_ROD, COPPER],
  [COPPER_ROD, null, COPPER_ROD],
  [COPPER, COPPER_ROD, COPPER]]);


//Stuff for automation
recipes.addShaped(<item:Magneticraft:conveyor_low>*24,
 [[null, null, null],
  [IRON_PLATE, null, IRON_PLATE],
  [IRON, IRON_MECH_COMP, IRON]]);

recipes.addShaped(<item:Magneticraft:inserter>*4,
 [[null, IRON_ROD, IRON],
  [null, IRON_ROD, null],
  [IRON_PLATE, IRON_MECH_COMP, IRON_PLATE]]);

