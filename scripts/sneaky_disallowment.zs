import mods.immersiveengineering.MetalPress;
import minetweaker.item.IItemStack;
import mods.nei.NEI;
import mods.magneticraft.Crusher;
import mods.magneticraft.Grinder;
import mods.magneticraft.Sifter;

mods.immersiveengineering.MetalPress.removeRecipe(<item:ImmersiveEngineering:metal:30>);
mods.immersiveengineering.MetalPress.removeRecipe(<item:ImmersiveEngineering:material:14>);
mods.immersiveengineering.MetalPress.removeRecipe(<item:libVulpes:libVulpesproductrod:4>);
mods.immersiveengineering.MetalPress.removeRecipe(<item:ImmersiveEngineering:metal:38>);
mods.immersiveengineering.MetalPress.removeRecipe(<item:advancedRocketry:advancedRocketryproductrod>);
mods.immersiveengineering.MetalPress.removeRecipe(<item:advancedRocketry:advancedRocketryproductgear>);
recipes.remove(<item:ImmersiveEngineering:material:14>);
recipes.remove(<item:ImmersiveEngineering:metal:30>);
recipes.remove(<item:libVulpes:libVulpesproductrod:4>);
furnace.remove(<item:Magneticraft:item.pebbles>);

val array = [
<item:minecraft:sticky_piston>,
<item:Railcraft:ingot:1>,
<item:minefantasy2:MF_Com_ingotCopper>,
<item:minefantasy2:MF_Com_ingotCopper:1>,
<item:libVulpes:libVulpesproductingot:4>,
<item:libVulpes:libVulpesproductrod:1>
] as IItemStack[];

for item in array {
    NEI.hide(item);
    recipes.remove(item);
}

mods.magneticraft.Crusher.removeRecipe(<item:minecraft:iron_ore>);
mods.magneticraft.Crusher.removeRecipe(<item:minecraft:gold_ore>);
mods.magneticraft.Grinder.removeRecipe(<item:minecraft:iron_ingot>);
val itemChunk = <item:Magneticraft:item.chunks>.definition;
for i in 0 to 24 {
    mods.magneticraft.Grinder.removeRecipe(itemChunk.makeStack(i));
}
val itemRubble = <item:Magneticraft:item.rubble>.definition;
for i in 0 to 24 {
    mods.magneticraft.Grinder.removeRecipe(itemRubble.makeStack(i));
}
val itemPebbles = <item:Magneticraft:item.pebbles>.definition;
for i in 0 to 24 {
    mods.magneticraft.Sifter.removeRecipe(itemPebbles.makeStack(i));
}

