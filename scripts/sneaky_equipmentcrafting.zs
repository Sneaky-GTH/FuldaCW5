import minetweaker.item.IItemStack;
import mods.nei.NEI;
import mods.advancedrocketry.AdvancedRocketryManager;

val lathe = AdvancedRocketryManager.findMachine("TileLathe");
val cuttingMachine = AdvancedRocketryManager.findMachine("TileCuttingMachine");
val rollingMachine = AdvancedRocketryManager.findMachine("TileRollingMachine");

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

// Steel Sets
recipes.remove(<item:AncientWarfare:component:8>);
recipes.remove(<item:AncientWarfare:component:5>);
recipes.remove(<item:AncientWarfare:component:2>);

recipes.addShaped(<item:AncientWarfare:component:2>,
 [[STEEL, null, STEEL],
  [null, STEEL, null],
  [STEEL, null, STEEL]]);

recipes.addShaped(<item:AncientWarfare:component:5>,
 [[null, STEEL, null],
  [STEEL, null, STEEL],
  [null, STEEL, null]]);

recipes.addShaped(<item:AncientWarfare:component:8>,
 [[null, STEEL, null],
  [null, STEEL, null],
  [null, STEEL, null]]);



// Tank Gun Breach
recipes.addShaped(<item:flansmod:44_Tank_Gun_Breach>,
 [[IRON_PLATE, IRON_PLATE, null],
  [IRON_PLATE, null, null],
  [IRON_PLATE, IRON_PLATE, null]]);

// Tank Gun Barrel
lathe.addRecipe([<item:flansmod:44_Tank_Barrel>], [], [IRON_ROD * 4], [], 600, 20);

// Metal Turret
rollingMachine.addRecipe([<item:flansmod:44_Metal_Turret>], [], [IRON_BLOCK], [], 600, 20);

// Light Tank Turret
recipes.addShaped(<item:flansmod:44_Light_Tank_Turret>,
 [[null, null, null],
  [<item:flansmod:44_Tank_Gun_Breach>, <item:flansmod:44_Metal_Turret>, <item:flansmod:44_Tank_Barrel>],
  [null, null, null]]);

// Tank Wheel
cuttingMachine.addRecipe([<item:flansmod:44_Tank_Wheel>], [], [IRON], [], 600, 20);

// Tank Track
recipes.addShaped(<item:flansmod:44_Tank_Track>,
 [[<item:flansmod:44_Track_Link>, <item:flansmod:44_Track_Link>, <item:flansmod:44_Track_Link>],
  [<item:flansmod:44_Track_Link>, <item:flansmod:44_Tank_Wheel>, <item:flansmod:44_Track_Link>],
  [<item:flansmod:44_Track_Link>, <item:flansmod:44_Track_Link>, <item:flansmod:44_Track_Link>]]);

// Track Link
recipes.addShaped(<item:flansmod:44_Track_Link>*64,
 [[null, IRON_ROD, null],
  [IRON_ROD, <item:AncientWarfare:component:4>, IRON_ROD],
  [null, IRON_ROD, null]]);

// Light Tank Chassis
recipes.addShaped(<item:flansmod:44_Light_Tank_Chassis>,
 [[null, null, null],
  [IRON_BLOCK, IRON_PLATE, IRON_BLOCK],
  [<item:flansmod:44_Tank_Track>, <item:flansmod:44_Tank_Track>, <item:flansmod:44_Tank_Track>]]);

