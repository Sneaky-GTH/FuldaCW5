import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
import mods.advancedrocketry.AdvancedRocketryManager;
import mods.immersiveengineering.BlastFurnace;

val chemicalReactor = AdvancedRocketryManager.findMachine("TileChemicalReactor");

val CIVILIAN_GOODS = <item:Railcraft:part.gear:1>;
val WOOD = <ore:logWood>;
val IRON_ORE = <item:minecraft:iron_ore>;
val HAY = <item:minecraft:hay_block>;
val FISH = <ore:rawFish>;
FISH.add(<item:minecraft:fish>);
FISH.add(<item:minecraft:fish:1>);
val FOOD_BUNDLE = <item:AncientWarfare:component:100>;
val WOODEN_TORQUE = <item:AncientWarfare:component:6>;
val IRON_CHUNK = <item:Magneticraft:item.chunks>;
val WOODEN_GEAR = <item:AncientWarfare:component>;


// Crude Oil
chemicalReactor.addRecipe([], [<liquid:hotcrude> * 1000], [<item:hbm:tile.ore_oil>], [], 300, 20);


// Wooden Torque Shaft
// 1 Gold
recipes.remove(WOODEN_TORQUE);
recipes.addShaped(WOODEN_TORQUE,
 [[WOOD, WOOD, WOOD],
  [WOOD, null, WOOD],
  [WOOD, WOOD, WOOD]]);

// Wooden Gear
// 8 Gold
recipes.remove(WOODEN_GEAR);
recipes.addShaped(WOODEN_GEAR,
 [[WOODEN_TORQUE, WOODEN_TORQUE, WOODEN_TORQUE],
  [WOODEN_TORQUE, null, WOODEN_TORQUE],
  [WOODEN_TORQUE, WOODEN_TORQUE, WOODEN_TORQUE]]);



// Food Bundle
// 4 Fish and 5 Hay Bales, 9.25 gold
recipes.addShaped(FOOD_BUNDLE,
 [[FISH, HAY, FISH],
  [HAY, HAY, HAY],
  [FISH, HAY, FISH]]);


// Iron Chunk
// 4 Gold
recipes.addShaped(IRON_CHUNK,
 [[IRON_ORE, IRON_ORE, IRON_ORE],
  [IRON_ORE, null, IRON_ORE],
  [IRON_ORE, IRON_ORE, IRON_ORE]]);


// Basic Civilian Goods
// Base Effective Cost: 6 Gold
// Base Cost: 10 Gold
recipes.addShaped(<item:Railcraft:part.gear:1>,
 [[FISH, IRON_ORE, FISH],
  [HAY, <item:ImmersiveEngineering:metal:30>, HAY],
  [<item:minecraft:chest>, IRON_ORE, <item:minecraft:chest>]]);


<item:Railcraft:part.gear:1>.addTooltip("This is a shoe-in for a 'Basic Civilian Goods' item");
<item:Railcraft:part.gear:1>.addTooltip(" ");
<item:Railcraft:part.gear:1>.addTooltip("The individual items amount to 6 gold + an iron plate");
<item:Railcraft:part.gear:1>.addTooltip("so crafting leads to 16% more gold from the basic resources");


// Intermediate Civilian Goods
// Base Effective Cost: 23.25 Gold
// Base Cost: 59.25 Gold
recipes.addShaped(<item:Railcraft:part.gear:2>,
 [[WOODEN_TORQUE, <item:ImmersiveEngineering:metal:38>, WOODEN_TORQUE],
  [IRON_CHUNK, <item:Railcraft:part.gear:1>, FOOD_BUNDLE],
  [WOODEN_TORQUE, <item:ImmersiveEngineering:metal:38>, WOODEN_TORQUE]]);

<item:Railcraft:part.gear:2>.addTooltip("This is a shoe-in for an 'Intermediate Civilian Goods' item");
<item:Railcraft:part.gear:2>.addTooltip(" ");
<item:Railcraft:part.gear:2>.addTooltip("The individual items amount to 23.25 gold + steel and iron plates,");
<item:Railcraft:part.gear:2>.addTooltip("so crafting leads to 25% more gold from the basic resources");


// Advanced Civilian Goods
// Base Effective Cost: 73.25 Gold
// Base Cost: 127 Gold
recipes.addShaped(<item:Railcraft:part.gear>,
 [[WOODEN_GEAR, <item:hbm:item.ingot_dura_steel>, IRON_CHUNK],
  [FOOD_BUNDLE, <item:Railcraft:part.gear:2>, FOOD_BUNDLE],
  [WOODEN_GEAR, <item:hbm:item.ingot_dura_steel>, IRON_CHUNK]]);

<item:Railcraft:part.gear>.addTooltip("This is a shoe-in for an 'Advanced Civilian Goods' item");
<item:Railcraft:part.gear>.addTooltip(" ");
<item:Railcraft:part.gear>.addTooltip("The individual items amount to 73.25 gold + steel, iron and 2 titanium,");
<item:Railcraft:part.gear>.addTooltip("so crafting leads to 50% more gold from the basic resources");





