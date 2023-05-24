import mods.magneticraft.Refinery;
import mods.magneticraft.Polymerizer;

//Remove unbased refinery recipe to add sulphurized natgas and change ratios
Refinery.removeRecipe(<liquid:hotcrude>);

//Hotcrude --> heavy, light, natgas
Refinery.addRecipe(<liquid:hotcrude> * 100, <liquid:heavyoil> * 40, <liquid:lightoil> * 35, <liquid:sulphurized_naturalgas>*30);
//Light oil --> naptha, naptha, kero
Refinery.addRecipe(<liquid:lightoil> * 10, <liquid:sulphurized_naptha> * 3, <liquid:sulphurized_naptha> * 3, <liquid:sulphurized_kerosene> * 4);
//Heavy oil --> bitumen, gasoil, diesel
Refinery.addRecipe(<liquid:heavyoil> * 100, <liquid:bitumen> * 40, <liquid:gasoil> * 35, <liquid:sulphurized_diesel>*30);

//Steam Cracking
mods.immersiveengineering.Refinery.addRecipe(<liquid:cracked_naturalgas> * 50, <liquid:naturalgas> * 50, <liquid:steam> * 4000);
mods.immersiveengineering.Refinery.addRecipe(<liquid:cracked_diesel> * 50, <liquid:diesel> * 50, <liquid:steam> * 4000);
mods.immersiveengineering.Refinery.addRecipe(<liquid:cracked_kerosene> * 50, <liquid:kerosene> * 50, <liquid:steam> * 4000);
mods.immersiveengineering.Refinery.addRecipe(<liquid:cracked_naptha> * 50, <liquid:naptha> * 50, <liquid:steam> * 4000);
//Cracked natgas --> demathinzed cracked gas, methane
Refinery.addRecipe(<liquid:cracked_naturalgas> * 100, <liquid:demethanized_cracked_gas> * 40, <liquid:methane> * 10, <liquid:methane>*10);
//Cracked naptha --> demathinzed cracked gas, methane
Refinery.addRecipe(<liquid:cracked_naptha> * 100, <liquid:demethanized_cracked_gas> * 80, <liquid:methane> * 10, <liquid:methane>*10);
//Demethanized cracked gas --> ethylene, ethane, deethanized cracked gas
Refinery.addRecipe(<liquid:demethanized_cracked_gas> * 100, <liquid:deethanized_cracked_gas> * 60, <liquid:ethane> * 30, <liquid:ethylene>*10);
//Deethanized cracked gas --> propylene, propane, c4 gas
Refinery.addRecipe(<liquid:deethanized_cracked_gas> * 100, <liquid:c4_gas> * 30, <liquid:propane> * 60, <liquid:propylene>*10);
//C4 Gas --> butane, benzene, toluene
Refinery.addRecipe(<liquid:c4_gas> * 100, <liquid:butane> * 33, <liquid:benzene> * 33, <liquid:molecule.toluene>*33);

Polymerizer.addRecipe(<liquid:ethylene> * 1000, <minechem:minechemElement:78>, <minechem:minechemMolecule:220>, 1000);
Polymerizer.addRecipe(<liquid:propylene> * 1000, <minechem:minechemElement:78>, <minechem:minechemMolecule:221>, 1000);

Polymerizer.removeRecipe(<minecraft:coal>);
Polymerizer.removeRecipe(<Magneticraft:item.dustSulfur>);

//TODO - Cracked kero, cracked diesel, bitumen
//TODO desulpherization
//TODO isomerization of gasoline?

val aggreggate = <ore:aggreggate>;
aggreggate.add(<minecraft:sand>);
aggreggate.add(<minecraft:gravel>);
aggreggate.add(<ImmersiveEngineering:material:13>);

/*
recipes.addShaped(<chisel:concrete:10>*16,
  [[<ore:aggreggate>, <ore:aggreggate>, <ore:aggreggate>],
  [<ore:aggreggate>, <minefantasy2:fluid.bitumen_bucket>, <ore:aggreggate>],
  [<ore:aggreggate>, <ore:aggreggate>, <ore:aggreggate>]]);
  */
