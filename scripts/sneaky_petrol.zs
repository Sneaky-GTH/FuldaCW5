import mods.magneticraft.Refinery;
import mods.magneticraft.Polymerizer;
import mods.immersiveengineering.Refinery as IERefinery;
import mods.advancedrocketry.AdvancedRocketryManager;

val pAssembler = AdvancedRocketryManager.findMachine("TilePrecisionAssembler");

mods.magneticraft.Refinery.addRecipe(<liquid:hotcrude> * 100, <liquid:heavyoil> * 100, <liquid:lightoil> * 35, <liquid:sulphurized_naturalgas> * 50);

mods.magneticraft.Refinery.addRecipe(<liquid:heavyoil> * 60, <liquid:diesel> * 10, <liquid:diesel> * 10, <liquid:diesel> * 10);

mods.magneticraft.Refinery.addRecipe(<liquid:lightoil> * 60, <liquid:gasoline> * 10, <liquid:gasoline> * 10, <liquid:gasoline> * 10);

IERefinery.addRecipe(<liquid:lightoil> * 50, <liquid:heavyoil> * 100, <liquid:water> * 200);

IERefinery.addRecipe(<liquid:kerosene> * 50, <liquid:lightoil> * 100, <liquid:water> * 200);

Polymerizer.removeRecipe(<minecraft:coal>);
Polymerizer.removeRecipe(<Magneticraft:item.dustSulfur>);

Polymerizer.addRecipe(<liquid:naturalgas> * 1000, <item:minecraft:coal:1>, <item:Magneticraft:item.plastic>, 1000);

Polymerizer.addRecipe(<liquid:naturalgas> * 5000, <item:Magneticraft:item.dustSulfur> * 16, <item:Magneticraft:item.rubber>, 1000);

//Advanced Circuit
pAssembler.addRecipe([<item:advancedRocketry:circuitIC:2>], [], [<item:Magneticraft:item.plastic>*4, <item:ImmersiveEngineering:coil>*8, <item:advancedRocketry:advancedRocketryproductdust>], [], 600, 100);
