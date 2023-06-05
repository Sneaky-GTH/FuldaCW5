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

val BASIC_CIRCUIT = <item:advancedRocketry:circuitIC>;
val ADVANCED_CIRCUIT = <item:advancedRocketry:circuitIC:2>;



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
// 26 Iron
recipes.addShaped(<item:flansmod:44_Light_Tank_Turret>,
 [[null, IRON_PLATE, null],
  [<item:flansmod:44_Tank_Gun_Breach>, <item:flansmod:44_Metal_Turret>, <item:flansmod:44_Tank_Barrel>],
  [null, IRON_PLATE, null]]);

// Medium Tank Turret
// 40 Iron
recipes.addShaped(<item:flansmod:44_Medium_Tank_Turret>,
 [[null, STEEL_PLATE, null],
  [<item:flansmod:44_Tank_Gun_Breach>, <item:flansmod:44_Metal_Turret>, <item:flansmod:44_Tank_Barrel>],
  [BASIC_CIRCUIT, STEEL_PLATE, null]]);


// Heavy Tank Turret
// 36 Iron + advanced circuit
recipes.addShaped(<item:flansmod:44_Heavy_Tank_Turret>,
 [[null, <item:flansmod:44_Armor_Plate_Sheet>, null],
  [<item:flansmod:44_Tank_Gun_Breach>, <item:flansmod:44_Metal_Turret>, <item:flansmod:44_Tank_Barrel>],
  [ADVANCED_CIRCUIT, <item:flansmod:44_Armor_Plate_Sheet>, null]]);


// Tank Wheel
cuttingMachine.addRecipe([<item:flansmod:44_Tank_Wheel>], [], [IRON], [], 600, 20);

// Tank Track
// 3 Iron
recipes.addShaped(<item:flansmod:44_Tank_Track>,
 [[<item:flansmod:44_Track_Link>, <item:flansmod:44_Track_Link>, <item:flansmod:44_Track_Link>],
  [<item:flansmod:44_Track_Link>, <item:flansmod:44_Tank_Wheel>, <item:flansmod:44_Track_Link>],
  [<item:flansmod:44_Track_Link>, <item:flansmod:44_Track_Link>, <item:flansmod:44_Track_Link>]]);

// Track Link
recipes.addShaped(<item:flansmod:44_Track_Link>*64,
 [[null, IRON_ROD, null],
  [IRON_ROD, <item:AncientWarfare:component:4>, IRON_ROD],
  [null, IRON_ROD, null]]);


// Armor Plate Sheet
cuttingMachine.addRecipe([<item:flansmod:44_Armor_Plate_Sheet>], [], [IRON_BLOCK], [], 600, 20);


// Metal Rod
cuttingMachine.addRecipe([<item:flansmod:44_Metal_Rod> * 4], [], [STEEL_PLATE], [], 600, 20);


// Low Powered Engine
// 20 iron
recipes.addShaped(<item:flansmod:44_Low_Powered_Engine>,
 [[<item:minefantasy2:MF_Com_iron_strut> , IRON_ROD, <item:minefantasy2:MF_Com_iron_strut> ],
  [<item:minefantasy2:MF_Com_iron_strut> , IRON_MECH_COMP, <item:minefantasy2:MF_Com_iron_strut>],
  [<item:minefantasy2:MF_Com_iron_strut> , IRON_ROD, <item:minefantasy2:MF_Com_iron_strut> ]]);

// Medium Powered Engine
// 34 Iron
recipes.addShaped(<item:flansmod:44_Medium_Powered_Engine>,
 [[STEEL_ROD, <item:minefantasy2:MF_Com_iron_strut>, STEEL_ROD],
  [STEEL_ROD, <item:flansmod:44_Low_Powered_Engine>, STEEL_ROD],
  [STEEL_ROD, <item:minefantasy2:MF_Com_iron_strut>, STEEL_ROD]]);

// High Powered Engine
// 72 Iron
recipes.addShaped(<item:flansmod:44_High_Powered_Engine>,
 [[STEEL_PLATE, STEEL_ROD, STEEL_PLATE],
  [<item:hbm:item.ingot_dura_steel>, <item:flansmod:44_Medium_Powered_Engine>, <item:hbm:item.ingot_dura_steel>],
  [STEEL_PLATE, STEEL_ROD, STEEL_PLATE]]);


//Iron Strut
//1 Iron
lathe.addRecipe([<item:minefantasy2:MF_Com_iron_strut> * 4], [], [IRON_PLATE], [], 600, 20);


// Light Tank Chassis
// 42 Iron
recipes.addShaped(<item:flansmod:44_Light_Tank_Chassis>,
 [[null, null, null],
  [IRON_PLATE, <item:flansmod:44_Low_Powered_Engine>, IRON_BLOCK],
  [<item:flansmod:44_Tank_Track>, <item:flansmod:44_Tank_Track>, <item:flansmod:44_Tank_Track>]]);


// Medium Tank Chassis
// 56 Iron
recipes.addShaped(<item:flansmod:44_Medium_Tank_Chassis>,
 [[null, null, null],
  [IRON_PLATE, <item:flansmod:44_Medium_Powered_Engine>, <item:flansmod:44_Armor_Plate_Sheet>],
  [<item:flansmod:44_Tank_Track>, <item:flansmod:44_Tank_Track>, <item:flansmod:44_Tank_Track>]]);


// Heavy Tank Chassis
// 153 Iron
recipes.addShaped(<item:flansmod:44_Heavy_Tank_Chassis>,
 [[null, null, null],
  [<item:ImmersiveEngineering:storage:7>, <item:flansmod:44_High_Powered_Engine>, <item:ImmersiveEngineering:storage:7>],
  [<item:flansmod:44_Tank_Track>, <item:flansmod:44_Tank_Track>, <item:flansmod:44_Tank_Track>]]);
