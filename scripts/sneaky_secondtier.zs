import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
import mods.magneticraft.Crusher;
import mods.magneticraft.Grinder;
import mods.magneticraft.Sifter;
import mods.immersiveengineering.BlastFurnace;

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

// Titanium Block
recipes.addShaped(TITANIUM_BLOCK,
 [[TITANIUM, TITANIUM, TITANIUM],
  [TITANIUM, TITANIUM, TITANIUM],
  [TITANIUM, TITANIUM, TITANIUM]]);

// Multiblock Chassis - 1 iron or 3 coins per block
recipes.addShaped(<item:Magneticraft:chasis>*10,
 [[null, IRON_PLATE, null],
  [IRON_PLATE, IRON_MECH_COMP, IRON_PLATE],
  [null, IRON_PLATE, null]]);

// Multiblock I/O - 7 iron or 21 coins per block
recipes.addShaped(<item:Magneticraft:multi_io>,
 [[IRON_PLATE, <item:minecraft:chest>, IRON_PLATE],
  [IRON_PLATE, <item:Magneticraft:chasis>, IRON_PLATE],
  [IRON_PLATE, <item:minecraft:chest>, IRON_PLATE]]);

// Multiblock RF Input - 17 iron or 51 coins per block
recipes.addShaped(<item:Magneticraft:MB_EnergyIO>,
 [[COPPER_ROD, <item:ImmersiveEngineering:coil>, COPPER_ROD],
  [<item:ImmersiveEngineering:coil>, <item:Magneticraft:chasis>, <item:ImmersiveEngineering:coil>],
  [COPPER_ROD, <item:ImmersiveEngineering:coil>, COPPER_ROD]]);

// Crusher Control - 36 iron or 108 coins per block
recipes.addShaped(<item:Magneticraft:crusher_control>,
 [[<item:Magneticraft:chasis>, IRON_BLOCK, <item:Magneticraft:chasis>],
  [IRON_MECH_COMP, TITANIUM_BLOCK, IRON_MECH_COMP],
  [<item:Magneticraft:chasis>, IRON_BLOCK, <item:Magneticraft:chasis>]]);

// Crusher Heat Coils
// Copper Coil - 8 iron or 24 coins
// Iron Coil - 4 iron or 12 coins
mods.magneticraft.Crusher.addRecipe(COPPER_ROD * 4, COPPER_HEAT_COIL, null, 0, null, 0);
mods.magneticraft.Crusher.addRecipe(IRON_ROD * 4, IRON_HEAT_COIL, null, 0, null, 0);

recipes.addShaped(<item:Magneticraft:item.copper_coil>,
 [[COPPER_HEAT_COIL, COPPER_ROD, COPPER_HEAT_COIL],
  [COPPER_HEAT_COIL, null, COPPER_HEAT_COIL],
  [COPPER_HEAT_COIL, COPPER_ROD, COPPER_HEAT_COIL]]);


// Grinder Control - 38 iron or 114 coins per block
recipes.addShaped(<item:Magneticraft:grinder_control>,
 [[<item:Magneticraft:chasis>, IRON_BLOCK, <item:Magneticraft:chasis>],
  [COPPER_HEAT_COIL, TITANIUM_BLOCK, COPPER_HEAT_COIL],
  [<item:Magneticraft:chasis>, IRON_BLOCK, <item:Magneticraft:chasis>]]);

// Iron Dust, used to make steel
mods.magneticraft.Grinder.addRecipe(IRON * 4, <item:Magneticraft:item.dust>, null, 0, null, 0);
mods.magneticraft.Grinder.addRecipe(TITANIUM, <item:advancedRocketry:advancedRocketryproductdust>, null, 0, null, 0);


// Sifter Control - 30 iron or 90 coins per block
recipes.addShaped(<item:Magneticraft:sifter_control>,
 [[<item:Magneticraft:chasis>, IRON_BLOCK, <item:Magneticraft:chasis>],
  [IRON_HEAT_COIL, TITANIUM_BLOCK, IRON_HEAT_COIL],
  [<item:Magneticraft:chasis>, IRON_BLOCK, <item:Magneticraft:chasis>]]);

// Coal Flux, used to make steel
mods.magneticraft.Sifter.addRecipe(<item:minecraft:coal:1>, <item:minefantasy2:MF_Com_coal_flux>, null, 0);

//Steel Dust
recipes.addShapeless(<item:libVulpes:libVulpesproductdust:6>,[<item:minefantasy2:MF_Com_coal_flux>, <item:Magneticraft:item.dust>]);

// Multiblock Component - 3.5 iron or 10.5 coins per block
recipes.addShaped(<item:Magneticraft:refinery_gap>*4,
 [[IRON_PLATE, IRON_ROD, IRON_PLATE],
  [IRON_HEAT_COIL, null, IRON_HEAT_COIL],
  [IRON_PLATE, IRON_ROD, IRON_PLATE]]);

// Multiblock Control - 20 iron or 60 coins per block
recipes.addShaped(<item:Magneticraft:mb_controls>,
 [[<item:Magneticraft:chasis>, <item:ImmersiveEngineering:coil>, <item:Magneticraft:chasis>],
  [<item:ImmersiveEngineering:coil>, COPPER_HEAT_COIL, <item:ImmersiveEngineering:coil>],
  [<item:Magneticraft:chasis>, <item:ImmersiveEngineering:coil>, <item:Magneticraft:chasis>]]);


// Refinery Control
recipes.addShaped(<item:Magneticraft:refinery_control>,
 [[IRON_MECH_COMP, TITANIUM_BLOCK, IRON_MECH_COMP],
  [IRON_MECH_COMP, TITANIUM_BLOCK, IRON_MECH_COMP],
  [<item:Magneticraft:chasis>, IRON_BLOCK, <item:Magneticraft:chasis>]]);


// Polymerizer Control
recipes.addShaped(<item:Magneticraft:polimerizer_control>,
 [[IRON_PLATE, TITANIUM_BLOCK, IRON_PLATE],
  [IRON_MECH_COMP, IRON_HEAT_COIL, IRON_MECH_COMP],
  [<item:Magneticraft:chasis>, TITANIUM_BLOCK, <item:Magneticraft:chasis>]]);


// Heater
recipes.addShaped(<item:Magneticraft:heater>,
 [[COPPER_HEAT_COIL, IRON_ROD, COPPER_HEAT_COIL],
  [COPPER_HEAT_COIL, <item:Magneticraft:chasis>, COPPER_HEAT_COIL],
  [COPPER_HEAT_COIL, IRON_ROD, COPPER_HEAT_COIL]]);


// Fluid Tank
recipes.addShaped(<item:Magneticraft:mg_tank>,
 [[COPPER_ROD, <item:minecraft:glass>, COPPER_ROD],
  [<item:minecraft:glass>, null, <item:minecraft:glass>],
  [COPPER_ROD, <item:minecraft:glass>, COPPER_ROD]]);


// Steel! Worth 4 iron
mods.immersiveengineering.BlastFurnace.removeRecipe(<item:ImmersiveEngineering:metal:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<item:ImmersiveEngineering:metal:7>, <item:libVulpes:libVulpesproductdust:6>, 300);

// Dirt to clay for bricks
furnace.addRecipe(<item:minecraft:brick>, <item:minecraft:dirt>);

// Blast furnace
recipes.remove(<item:ImmersiveEngineering:stoneDecoration:2>);
recipes.addShaped(<item:ImmersiveEngineering:stoneDecoration:2>,
 [[<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>],
  [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]]);

recipes.remove(<item:ImmersiveEngineering:metal:38>);
recipes.remove(<item:libVulpes:libVulpesproductrod:6>);
recipes.remove(STEEL_MECH_COMP);

// 18 iron or 54 coins
recipes.addShaped(STEEL_MECH_COMP,
 [[STEEL, null, STEEL],
  [null, COPPER_ROD, null],
  [STEEL, null, STEEL]]);

recipes.remove(STEEL_ROD);

//Chemical Reactor
recipes.addShaped(<item:advancedRocketry:tile.chemreactor>,
 [[IRON_PLATE, TITANIUM, IRON_PLATE],
  [IRON_MECH_COMP, <item:libVulpes:blockStructureBlock>, IRON_MECH_COMP],
  [IRON_PLATE, TITANIUM, IRON_PLATE]]);
