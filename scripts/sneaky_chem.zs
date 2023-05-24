import mods.minechem.Decomposer;
import mods.minechem.Synthesiser;
import mods.minechem.Chemicals;
import mods.minechem.Fuels;
import mods.immersiveengineering.Squeezer;
import mods.advancedrocketry.AdvancedRocketryManager;
import minetweaker.item.IItemStack;

val chemReactor = AdvancedRocketryManager.findMachine("TileChemicalReactor");

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
val water = <liquid:water>;
val CO2 = <item:minechem:minechemMolecule:2>;

val NH3 = <item:minechem:minechemMolecule:84>;
val SO2 = <item:minechem:minechemMolecule:168>;
val H2SO4 = <minechem:minechemMolecule:77>;
Chemicals.addMolecule("Nitric Acid", 174, "Liquid",[H,N,O*3]);
val HNO3 = <minechem:minechemMolecule:174>;
Chemicals.addMolecule("Nitric Oxide", 175, "Liquid",[N,O]);
val NO = <minechem:minechemMolecule:175>;
Chemicals.addMolecule("Nitrocellulose", 176, "Liquid",[C*6,H*9,NO2*3,O*5]);
val Nitrocell = <minechem:minechemMolecule:176>;
Chemicals.addMolecule("Nitroglycerine", 177, "Liquid",[C*3,H*5,N*3,O*9]);
val C3H5N3O9 = <minechem:minechemMolecule:177>;
Chemicals.addMolecule("Sulfur Mustard", 178, "Gaseous",[C*4,H*8,CL*2,S]);
val C4H8CL2S = <minechem:minechemMolecule:178>;
Chemicals.addMolecule("VX", 179, "Liquid",[C*11,H*26,NO2,P,S]);
val VX = <minechem:minechemMolecule:179>;
Chemicals.addMolecule("Deuterium", 180, "Gaseous",[H*2]);
val H2 = <minechem:minechemMolecule:180>;
Chemicals.addMolecule("Tritium", 181, "Gaseous",[H*3]);
val H3 = <minechem:minechemMolecule:181>;
Chemicals.addMolecule("Heavy Water", 182, "Liquid",[H2*2, O]);
val H4O = <minechem:minechemMolecule:182>;
Chemicals.addMolecule("Centrifuged Water", 183, "Liquid", [H*2,O]);
val H2OCF = <minechem:minechemMolecule:183>;
Chemicals.addMolecule("RDX", 184, "Solid",[C*3,H*6,N*6,O*6]);
val RDX = <minechem:minechemMolecule:184>;
Chemicals.addMolecule("Hydrofluoric Acid", 185, "Liquid",[H,F]);
val HF = <minechem:minechemMolecule:185>;
Chemicals.addMolecule("Sulfur Trioxide", 186, "Gaseous",[O*3,S]);
val O3S = <minechem:minechemMolecule:186>;
Chemicals.addMolecule("Calcium Sulfate", 187, "Solid",[Ca, O*4,S]);
val CAO4S = <minechem:minechemMolecule:187>;
Chemicals.addMolecule("Glycerine", 188, "Liquid",[C*3,H*8,O*3]);
val C3H8O3 = <minechem:minechemMolecule:188>;
Chemicals.addMolecule("Sodium Carbonate", 189, "Solid",[Na, C, O*3]);
val NACO3 = <minechem:minechemMolecule:189>;
Chemicals.addMolecule("Calcium Sulfide", 190, "Solid",[Ca, S]);
val CAS = <minechem:minechemMolecule:190>;
Chemicals.addMolecule("Ammonium Nitrate", 191, "Solid",[N*2, H*4,O*3]);
val N2H4O3 = <minechem:minechemMolecule:191>;
Chemicals.addMolecule("Acetic Acid", 192, "Liquid",[C*2,H*4,O*2]);
val C2H4O2 = <minechem:minechemMolecule:192>;
Chemicals.addMolecule("Carbon Monoxide", 193, "Gaseous",[C, O]);
val CO = <minechem:minechemMolecule:193>;
Chemicals.addMolecule("Methyl Acetate", 194, "Liquid",[C*3, H*6, O*2]);
val C3H6O2 = <minechem:minechemMolecule:194>;
Chemicals.addMolecule("Acetic Anhydride", 195, "Liquid",[C*4,H*6,O*3]);
val C4H6O3 = <minechem:minechemMolecule:195>;
Chemicals.addMolecule("Methanol", 196, "Liquid",[C,H*4,O]);
val CH4O = <minechem:minechemMolecule:196>;
Chemicals.addMolecule("Formaldehyde", 197, "Liquid",[C,H*2,O]);
val CH2O = <minechem:minechemMolecule:197>;
Chemicals.addMolecule("Hexamethylenetetramine", 198, "Liquid",[C*6,H*12,N*4]);
val C6H12N4 = <minechem:minechemMolecule:198>;
Chemicals.addMolecule("Mononitrotoluene", 199, "Liquid",[C*7,H*7,NO2]);
val C7H7NO2 = <minechem:minechemMolecule:199>;
Chemicals.addMolecule("Dinitrotoluene", 200, "Liquid",[C*7,H*6,N*2, O*4]);
val C7H5N2O4 = <minechem:minechemMolecule:200>;
Chemicals.addMolecule("Nitroguanidine", 201, "Solid",[C,H*4,N*4, O*2]);
val CH4N4O2 = <minechem:minechemMolecule:201>;
Chemicals.addMolecule("Calcium cyanamide", 202, "Solid",[Ca,C,N*2]);
val CACN2 = <minechem:minechemMolecule:202>;
Chemicals.addMolecule("Calcium carbide", 203, "Solid",[Ca,C*2]);
val CAC2 = <minechem:minechemMolecule:203>;
Chemicals.addMolecule("Acetylene", 204, "Solid",[C*2, H*2]);
val C2H2 = <minechem:minechemMolecule:204>;
Chemicals.addMolecule("Calcium hydroxide", 205, "Solid",[Ca, O*2, H*2]);
val CAO2H2 = <minechem:minechemMolecule:205>;
Chemicals.addMolecule("Boron Trioxide", 206  , "Solid",[B*2, O*3]);
val B2O3 = <minechem:minechemMolecule:206>;
Chemicals.addMolecule("Boron Carbide", 207  , "Solid",[B*4, C]);
val B4C = <minechem:minechemMolecule:207>;
Chemicals.addMolecule("Ethanolamine", 208, "Liquid", [C*2, H*7,N,O]);
val C2H7NO = <minechem:minechemMolecule:208>;
Chemicals.addMolecule("Ethylene oxide", 209, "Gaseous", [C*2, H*4, O]);
val C2H4O = <minechem:minechemMolecule:209>;
Chemicals.addMolecule("Ethylene", 210, "Gaseous", [C*2, H*4]);
val C2H4 = <minechem:minechemMolecule:210>;
Chemicals.addMolecule("Ephedrine", 214, "Solid", [C*10, H*15, N, O]);
val C10H15NO = <minechem:minechemMolecule:214>;
Chemicals.addMolecule("Ammonium hydroxide", 215, "Liquid", [N, H*4, O, H]);
val NH4OH = <minechem:minechemMolecule:215>;
Chemicals.addMolecule("Uncrystalized Meth", 216, "Liquid", [N*3, H*23, O*2, H, C*10]);
val METH = <minechem:minechemMolecule:216>;
Chemicals.addMolecule("Tungstic Acid", 217, "Liquid", [H*2, W,O*4]);
val H2WO4 = <minechem:minechemMolecule:217>;
Chemicals.addMolecule("Tungsten Trioxide", 218, "Liquid", [W,O*3]);
val WO3 = <minechem:minechemMolecule:218>;

/*
recipes.addShaped(<>,
  [[null, null, null],
  [null, null, null],
  [null, null, null]]);
*/

//Propelland
recipes.addShaped(<item:hbm:item.gadget_explosive>*16,
  [[Nitrocell, Nitrocell, Nitrocell],
  [Nitrocell, null, C3H5N3O9],
  [C3H5N3O9, C3H5N3O9, C3H5N3O9]]);

//Nitrocellulose
recipes.addShaped(<minechem:minechemMolecule:176> * 16,
  [[<minechem:minechemMolecule:77>, <minechem:minechemMolecule:174>, <minechem:minechemMolecule:77>],
  [<minechem:minechemMolecule:174>, <minechem:minechemMolecule>, <minechem:minechemMolecule:174>],
  [<minechem:minechemMolecule:77>, <minechem:minechemMolecule:174>, <minechem:minechemMolecule:77>]]);

//Nitroglycerine
recipes.addShaped(<minechem:minechemMolecule:177> * 16,
  [[<minechem:minechemMolecule:77>, <minechem:minechemMolecule:174>, <minechem:minechemMolecule:77>],
  [<minechem:minechemMolecule:174>, <minechem:minechemMolecule:188>, <minechem:minechemMolecule:174>],
  [<minechem:minechemMolecule:77>, <minechem:minechemMolecule:174>, <minechem:minechemMolecule:77>]]);

//Cellulose
recipes.addShapeless(<minechem:minechemMolecule>*16, [<minechem:minechemMolecule:174>, <minecraft:log>]);

chemReactor.addRecipe([H2SO4], [], [O3S], [water * 1000], 100, 10);

chemReactor.addRecipe([HNO3], [], [H2SO4, N], [], 100, 10);

chemReactor.addRecipe([O3S], [], [SO2], [], 100, 10);

furnace.addRecipe(SO2, <item:Magneticraft:item.dustSulfur>);

val source = <ore:rawMeat>;
chemReactor.addRecipe([C3H8O3], [], [source], [], 100, 10);

chemReactor.addRecipe([N], [], [<item:minecraft:log>], [], 100, 10);

chemReactor.addRecipe([RDX], [], [HNO3*10, C6H12N4], [], 100, 10);

chemReactor.addRecipe([C6H12N4], [water * 60], [NH3, CH2O], [], 100, 10);

chemReactor.addRecipe([NH3], [], [H * 3, N], [], 100, 10);

chemReactor.addRecipe([H * 3], [], [<item:minecraft:coal:1>], [water * 100], 100, 10);

chemReactor.addRecipe([CH2O], [], [CH4O, NH3], [], 100, 10);

chemReactor.addRecipe([CH4O], [water * 50], [<item:minecraft:coal:1>, H * 3], [], 100, 10);
