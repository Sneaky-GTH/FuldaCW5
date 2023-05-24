import mods.minechem.Decomposer;
import mods.minechem.Synthesiser;
import mods.minechem.Chemicals;
import mods.minechem.Fuels;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.ArcFurnace;

recipes.remove(<minechem:tile.chemicalDecomposer>);
recipes.remove(<minechem:tile.chemicalSynthesizer>);
recipes.remove(<minechem:tile.opticalMicroscope>);

val H = <minechem:minechemElement:1>;
val N = <minechem:minechemElement:7>;
val O = <minechem:minechemElement:8>;
val C = <minechem:minechemElement:6>;
val P = <minechem:minechemElement:15>;
val NO2 = <minechem:minechemMolecule:3>;
val CL = <minechem:minechemElement:17>;
val S = <minechem:minechemElement:16>;
val F = <minechem:minechemElement:9>;
val Ca = <minechem:minechemElement:20>;
val Na = <minechem:minechemElement:11>;
val NO3 = <minechem:minechemElement:14>;
val H2O = <minechem:minechemMolecule:1>;
val B = <minechem:minechemElement:5>;
val W = <minechem:minechemElement:74>;

Chemicals.addMolecule("Nitric Acid", 174, "Liquid",[H,N,O*3]);
Chemicals.addMolecule("Nitric Oxide", 175, "Liquid",[N,O]);
Chemicals.addMolecule("Nitrocellulose", 176, "Liquid",[C*6,H*9,NO2*3,O*5]);
Chemicals.addMolecule("Nitroglycerine", 177, "Liquid",[C*3,H*5,N*3,O*9]);
Chemicals.addMolecule("Sulfur Mustard", 178, "Gaseous",[C*4,H*8,CL*2,S]);
Chemicals.addMolecule("VX", 179, "Liquid",[C*11,H*26,NO2,P,S]);
Chemicals.addMolecule("Deuterium", 180, "Gaseous",[H*2]);
val H2 = <minechem:minechemMolecule:180>;
Chemicals.addMolecule("Tritium", 181, "Gaseous",[H*3]);
Chemicals.addMolecule("Heavy Water", 182, "Liquid",[H2*2, O]);
Chemicals.addMolecule("Centrifuged Water", 183, "Liquid", [H*2,O]);
Chemicals.addMolecule("RDX", 184, "Solid",[C*3,H*6,N*6,O*6]);
Chemicals.addMolecule("Hydrofluoric Acid", 185, "Liquid",[H,F]);
Chemicals.addMolecule("Sulfur Trioxide", 186, "Gaseous",[O*3,S]);
Chemicals.addMolecule("Calcium Sulfate", 187, "Solid",[Ca, O*4,S]);
Chemicals.addMolecule("Glycerine", 188, "Liquid",[C*3,H*8,O*3]);
Chemicals.addMolecule("Sodium Carbonate", 189, "Solid",[Na, C, O*3]);
Chemicals.addMolecule("Calcium Sulfide", 190, "Solid",[Ca, S]);
Chemicals.addMolecule("Ammonium Nitrate", 191, "Solid",[N*2, H*4,O*3]);
Chemicals.addMolecule("Acetic Acid", 192, "Liquid",[C*2,H*4,O*2]);
Chemicals.addMolecule("Carbon Monoxide", 193, "Gaseous",[C, O]);
Chemicals.addMolecule("Methyl Acetate", 194, "Liquid",[C*3, H*6, O*2]);
Chemicals.addMolecule("Acetic Anhydride", 195, "Liquid",[C*4,H*6,O*3]);
Chemicals.addMolecule("Methanol", 196, "Liquid",[C,H*4,O]);
Chemicals.addMolecule("Formaldehyde", 197, "Liquid",[C,H*2,O]);
Chemicals.addMolecule("Hexamethylenetetramine", 198, "Liquid",[C*6,H*12,N*4]);
Chemicals.addMolecule("Mononitrotoluene", 199, "Liquid",[C*7,H*7,NO2]);
Chemicals.addMolecule("Dinitrotoluene", 200, "Liquid",[C*7,H*6,N*2, O*4]);
Chemicals.addMolecule("Nitroguanidine", 201, "Solid",[C,H*4,N*4, O*2]);
Chemicals.addMolecule("Calcium cyanamide", 202, "Solid",[Ca,C,N*2]);
Chemicals.addMolecule("Calcium carbide", 203, "Solid",[Ca,C*2]);
Chemicals.addMolecule("Acetylene", 204, "Solid",[C*2, H*2]);
Chemicals.addMolecule("Calcium hydroxide", 205, "Solid",[Ca, O*2, H*2]);
Chemicals.addMolecule("Boron Trioxide", 206  , "Solid",[B*2, O*3]);
Chemicals.addMolecule("Boron Carbide", 207  , "Solid",[B*4, C]);
Chemicals.addMolecule("Ethanolamine", 208, "Liquid", [C*2, H*7,N,O]);
Chemicals.addMolecule("Ethylene oxide", 209, "Gaseous", [C*2, H*4, O]);
Chemicals.addMolecule("Ethylene", 210, "Gaseous", [C*2, H*4]);
Chemicals.addMolecule("Ephedrine", 214, "Solid", [C*10, H*15, N, O]);
Chemicals.addMolecule("Ammonium hydroxide", 215, "Liquid", [N, H*4, O, H]);
Chemicals.addMolecule("Uncrystalized Meth", 216, "Liquid", [N*3, H*23, O*2, H, C*10]);
Chemicals.addMolecule("Tungstic Acid", 217, "Liquid", [H*2, W,O*4]);
Chemicals.addMolecule("Tungsten Trioxide", 218, "Liquid", [W,O*3]);

/*
recipes.addShaped(<>,
  [[null, null, null],
  [null, null, null],
  [null, null, null]]);
*/

Squeezer.addRecipe(<minechem:minechemElement:7> * 4, <liquid:oxygen>, <minecraft:paper>, 200);
Squeezer.addRecipe(<minechem:minechemMolecule:214>, <liquid:water>*10, <minecraft:deadbush>*10, 200);
Squeezer.addRecipe(<minechem:minechemElement:3>*4, <liquid:water>*10, <libVulpes:battery>, 200);
furnace.addRecipe(<minechem:minechemMolecule:168>, <Magneticraft:item.dustSulfur>);


recipes.addShapeless(<minechem:minechemMolecule>*16, [<minechem:minechemMolecule:174>, <minecraft:log>]);
recipes.addShapeless(<minechem:minechemElement:6>, [<minecraft:coal>]);

recipes.addShapeless(<minechem:minechemMolecule:3>, [<minechem:minechemMolecule:175>]);


recipes.addShaped(<minechem:minechemMolecule:176> * 16,
  [[<minechem:minechemMolecule:77>, <minechem:minechemMolecule:174>, <minechem:minechemMolecule:77>],
  [<minechem:minechemMolecule:174>, <minechem:minechemMolecule>, <minechem:minechemMolecule:174>],
  [<minechem:minechemMolecule:77>, <minechem:minechemMolecule:174>, <minechem:minechemMolecule:77>]]);

recipes.addShaped(<minechem:minechemMolecule:177> * 16,
  [[<minechem:minechemMolecule:77>, <minechem:minechemMolecule:174>, <minechem:minechemMolecule:77>],
  [<minechem:minechemMolecule:174>, <minechem:minechemMolecule:188>, <minechem:minechemMolecule:174>],
  [<minechem:minechemMolecule:77>, <minechem:minechemMolecule:174>, <minechem:minechemMolecule:77>]]);

/* Will be re added once flans is readded.
recipes.addShaped(<flansmod:44_Dynamite>, 
  [[null, <minechem:minechemMolecule:177>, null],
  [<minechem:minechemMolecule:177>, <minecraft:clay_ball>, <minechem:minechemMolecule:177>],
  [null, <minechem:minechemMolecule:189>, null]]);
*/
recipes.addShaped(<minechem:minechemMolecule:189>,
  [[null, <chisel:limestone>.giveBack(<minechem:minechemMolecule:190>), null],
  [null, <minechem:minechemMolecule:171>, null],
  [null, <minecraft:coal>, null]]);

recipes.addShaped(<hbm:tile.brick_compound>, [
  [null, <ImmersiveEngineering:material:12>, null],
  [<ImmersiveEngineering:material:12>, null, <ImmersiveEngineering:material:12>],
  [null, <ImmersiveEngineering:material:12>, null]
]);

ArcFurnace.addRecipe(<minechem:minechemMolecule:202>, <minechem:minechemMolecule:203>, null, 600, 1200, [<minechem:minechemElement:7>]);
ArcFurnace.addRecipe(<minechem:minechemMolecule:203>, <chisel:limestone>, null, 600, 1200, [<ImmersiveEngineering:material:6>]);
ArcFurnace.addRecipe(<minechem:minechemMolecule:206>, <chisel:limestone>, null, 600, 1200, [<minechem:minechemMolecule:77>]);
ArcFurnace.addRecipe(<minechem:minechemMolecule:207>, <minechem:minechemMolecule:206>, <minechem:minechemMolecule:193> * 6, 600, 1200, [<minechem:minechemElement:6> * 7]);
recipes.addShapeless(<minechem:minechemMolecule:149>, [<chisel:limestone>, <Magneticraft:item.dustSalt>]);

ArcFurnace.addRecipe(<hbm:item.ingot_fiberglass>, <minecraft:sand>, null, 600, 1200, [<minefantasy2:MF_Com_flux>, <minefantasy2:MF_Com_kaolinite>]);


val source = <ore:listAllmeatraw>;
//source.add(<harvestcraft:cottonItem>);
recipes.addShapeless(<minechem:minechemMolecule:188>, [source, <minechem:minechemMolecule:149>]);
recipes.remove(<minecraft:gunpowder>);
recipes.addShapeless(<minecraft:gunpowder>*16, [<minecraft:coal:1>*1, <Magneticraft:item.dustSulfur>*2, <ore:dustNiter>]);
mods.magneticraft.CrushingTable.addRecipe(<ImmersiveEngineering:material:13>, <minechem:minechemMolecule:197>);
<minechem:minechemMolecule:197>.addTooltip("Hammer some Slag in a Crushing Table to get this");

var oilsource = <ore:oreOil>;
oilsource.add(<hbm:tile.ore_oil>);
var rubber = <Magneticraft:item.rubber>;
recipes.addShaped(<hbm:item.solid_fuel>, [
  [rubber,O,rubber],
  [O,rubber,O],
  [rubber,O,rubber],
]);
