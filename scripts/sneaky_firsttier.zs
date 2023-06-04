import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
import mods.advancedrocketry.AdvancedRocketryManager;
import mods.immersiveengineering.BlastFurnace;

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

// TBD currency variable

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
val ALUMINIUM = <item:ImmersiveEngineering:metal:1>;
val IRON_BUSHING_SET = <item:AncientWarfare:component:4>;

// from what I understood we'll probably be using admin shops for these but I wanted to add these simply as a way for preliminary balance

recipes.addShaped(COIN*3,
 [[BREAD, BREAD, BREAD],
  [BREAD, BREAD, BREAD],
  [BREAD, BREAD, BREAD]]);

recipes.addShaped(COIN*12,
 [[STEAK, STEAK, STEAK],
  [STEAK, STEAK, STEAK],
  [STEAK, STEAK, STEAK]]);

recipes.addShaped(COIN*9,
 [[CHICKEN, CHICKEN, CHICKEN],
  [CHICKEN, CHICKEN, CHICKEN],
  [CHICKEN, CHICKEN, CHICKEN]]);

recipes.addShaped(COIN*18,
 [[IRON_ORE, IRON_ORE, IRON_ORE],
  [IRON_ORE, IRON_ORE, IRON_ORE],
  [IRON_ORE, IRON_ORE, IRON_ORE]]);


// 81 coins for 27 iron, or 3 coins for 1 iron essentially. This means:
// 9 bread into 1 iron
// 2.25 steak into 1 iron
// 3 chicken into 1 iron
// 1.5 iron ore into 1 iron

recipes.addShaped(IRON*27,
 [[COINBLOCK, COINBLOCK, COINBLOCK],
  [COINBLOCK, COINBLOCK, COINBLOCK],
  [COINBLOCK, COINBLOCK, COINBLOCK]]);

recipes.addShaped(TITANIUM_GEAR,
 [[null, TITANIUM, null],
  [TITANIUM, TITANIUM, TITANIUM],
  [null, TITANIUM, null]]);


recipes.remove(IRON_BUSHING_SET);
recipes.remove(IRON_GEAR_SET);

recipes.addShaped(IRON_BUSHING_SET,
 [[null, null, null],
  [IRON, null, IRON],
  [IRON, IRON_BLOCK, IRON]]);

recipes.addShaped(IRON_GEAR_SET,
 [[null, IRON_TORQUE_SHAFT, null],
  [IRON_TORQUE_SHAFT, IRON_BLOCK, IRON_TORQUE_SHAFT],
  [null, IRON_TORQUE_SHAFT, null]]);

// simple AR machines and stuff

// Rolling Machine - 93 iron
recipes.addShaped(<item:advancedRocketry:tile.rollingMachine>,
 [[IRON_GEAR_SET, IRON_ROD, IRON_GEAR_SET],
  [IRON_ROD, <item:libVulpes:blockStructureBlock>, IRON_ROD],
  [IRON_GEAR_SET, IRON_ROD, IRON_GEAR_SET]]);

// Machine Structure - 5 iron
recipes.addShaped(<item:libVulpes:blockStructureBlock>*5,
 [[null, IRON, null],
  [IRON, IRON_GEAR_SET, IRON],
  [null, IRON, null]]);

// Input Block - 11 iron
recipes.remove(<item:libVulpes:blockHatch>);
recipes.addShaped(<item:libVulpes:blockHatch>,
 [[null, <item:minecraft:chest>, null],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [IRON, IRON, IRON]]);

// Fluid Input Block - 14 iron
recipes.remove(<item:libVulpes:blockHatch:2>);
recipes.addShaped(<item:libVulpes:blockHatch:2>,
 [[null, <item:minecraft:bucket>, null],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [IRON, IRON, IRON]]);

// Output Block - 11 iron
recipes.remove(<item:libVulpes:blockHatch:1>);
recipes.addShaped(<item:libVulpes:blockHatch:1>,
 [[IRON, IRON, IRON],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [null, <item:minecraft:chest>, null]]);

// Fluid Output Block - 14 iron
recipes.remove(<item:libVulpes:blockHatch:3>);
recipes.addShaped(<item:libVulpes:blockHatch:3>,
 [[IRON, IRON, IRON],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [null, <item:minecraft:bucket>, null]]);

// assuming 1 copper = 2 iron
// RF Input Block - 21 iron
recipes.addShaped(<item:libVulpes:rfBattery>,
 [[<item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>],
  [<item:ImmersiveEngineering:coil>, <item:libVulpes:blockStructureBlock>, <item:ImmersiveEngineering:coil>],
  [<item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>]]);

// Motor - 26 iron
recipes.addShaped(<item:libVulpes:tile.motor>,
 [[<item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>],
  [IRON_TORQUE_SHAFT, IRON_TORQUE_SHAFT, IRON_TORQUE_SHAFT],
  [IRON, IRON_BLOCK, IRON]]);

//Total for a rolling machine:
// 1 Motor, 2 Coils, 1 Power Input, 2 Input, 1 Fluid Input, 2 Output, 6 Machine Structure
// 225 iron

rollingMachine.addRecipe([IRON_PLATE], [], [IRON * 4], [], 600, 20);

// Lathe
// 89 iron
recipes.addShaped(<item:advancedRocketry:tile.lathe>,
 [[IRON_GEAR_SET, IRON, IRON_GEAR_SET],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [IRON_GEAR_SET, IRON, IRON_GEAR_SET]]);

// 1 Motor, 1 Power Input, 1 Input, 1 Output, 2 Machine Structures
//Total: 205 iron

//Iron Rods (requires Lathe)
lathe.addRecipe([IRON_ROD], [], [IRON], [], 600, 20);

//Cutting Machine
// 103 iron
recipes.addShaped(<item:advancedRocketry:cuttingMachine>,
 [[IRON_GEAR_SET, IRON_PLATE, IRON_GEAR_SET],
  [IRON_TORQUE_SHAFT, <item:libVulpes:blockStructureBlock>, IRON_TORQUE_SHAFT],
  [IRON_GEAR_SET, IRON_PLATE, IRON_GEAR_SET]]);

// 8 iron
recipes.addShaped(<item:advancedRocketry:sawBlade>,
 [[null, IRON, null],
  [IRON, IRON_PLATE, IRON],
  [null, IRON, null]]);

// 33 iron
recipes.addShaped(<item:advancedRocketry:tile.sawBlade>,
 [[null, null, null],
  [IRON_ROD, <item:advancedRocketry:sawBlade>, IRON_ROD],
  [IRON_BLOCK, <item:libVulpes:blockStructureBlock>, IRON_BLOCK]]);

// Cutting Machine total:
// 1 Motor, 1 Saw Blade Assembly, 1 Power Input, 1 Input, 1 Output
// 56 iron

//Copper Rods (requires Cutting Machine)
cuttingMachine.addRecipe([COPPER_ROD], [], [COPPER * 4], [], 600, 20);

//Titanium rods
cuttingMachine.addRecipe([TITANIUM_ROD], [], [TITANIUM_BLOCK * 2], [], 600, 20);

//Iron Frame (generic expensive early equipment component), worth 46 iron, requires a Rolling Machine
recipes.addShaped(<item:minefantasy2:MF_Com_iron_frame>,
 [[IRON_BLOCK, IRON_ROD, IRON_BLOCK],
  [IRON_PLATE, null, IRON_PLATE],
  [IRON_BLOCK, IRON_ROD, IRON_BLOCK]]);


// Iron Mechanical Component (generic cheap early equipment component), worth 12, requires a Cutting Machine
recipes.remove(IRON_MECH_COMP);
recipes.addShaped(IRON_MECH_COMP,
 [[IRON, null, IRON],
  [null, COPPER_ROD, null],
  [IRON, null, IRON]]);

//Basic circuit
recipes.addShaped(<item:advancedRocketry:circuitIC>,
 [[COPPER, COPPER_ROD, COPPER],
  [<item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>],
  [COPPER, COPPER_ROD, COPPER]]);



//Aluminium stuff in-case we need really expensive materials
// 1 Aluminium ~ 16 iron

recipes.remove(ALUMINIUM_PLATE);
rollingMachine.addRecipe([ALUMINIUM_PLATE], [], [ALUMINIUM*4], [], 600, 20);

//Titanium rods
recipes.remove(ALUMINIUM_ROD);
cuttingMachine.addRecipe([ALUMINIUM_ROD], [], [ALUMINIUM*2], [], 600, 20);

//Steel Plate
rollingMachine.addRecipe([STEEL_PLATE], [], [STEEL], [], 600, 20);
