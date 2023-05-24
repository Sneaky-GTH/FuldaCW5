import mods.advancedrocketry.AdvancedRocketryManager;
import minetweaker.item.IItemStack;

//AdvancedRocketryManager.removeAll();

val lathe = AdvancedRocketryManager.findMachine("TileLathe");
val chemReactor = AdvancedRocketryManager.findMachine("TileChemicalReactor");

//lathe.addRecipe([<minecraft:tnt>], [], [<ore:dustIron>], [], 100, 20);
//ARMachine.addRecipe(outputItems as IItemStack[], outputFluids as IFluidStack[], inputItems as IIngredient[], inputFluids as IFluidStack[],
//ticks as int, rfPerTick as int);

val steam = <liquid:steam>;
val water = <liquid:water>;
val methane = <liquid:methane>;
val ethanol = <liquid:ethanol>;
val bitumen = <liquid:bitumen>;
val diesel = <liquid:diesel>;
val ethylene = <liquid:ethylene>;
val benzene = <liquid:benzene>;
val butane = <liquid:butane>;

val hydrogen = <minechem:minechemElement:1>;
val nitrogen = <minechem:minechemElement:7>;
val oxygen = <minechem:minechemElement:8>;
val chlorine = <minechem:minechemElement:17>;
val carbon = <minechem:minechemElement:6>;

val carbonDioxide = <minechem:minechemMolecule:2>;
val nitrogenDioxide = <minechem:minechemMolecule:3>;
val sulfuricAcid = <minechem:minechemMolecule:77>;
val ammonia = <minechem:minechemMolecule:84>;
val hydrogenChloride = <minechem:minechemMolecule:99>;
val lye = <minechem:minechemMolecule:149>; //NaOH - sodium hydroxide
val sulfurDioxide = <minechem:minechemMolecule:168>;
val nitricAcid = <minechem:minechemMolecule:174>;
val rdx = <minechem:minechemMolecule:184>;
val hydrofluoricAcid = <minechem:minechemMolecule:185>;
val sulfurTrioxide = <minechem:minechemMolecule:186>;
val ammoniumNitrate = <minechem:minechemMolecule:191>;
val aceticAcid = <minechem:minechemMolecule:192>;
val carbonMonoxide = <minechem:minechemMolecule:193>;
val methylAcetate = <minechem:minechemMolecule:194>;
val aceticAnhydride = <minechem:minechemMolecule:195>;
val methanol = <minechem:minechemMolecule:196>;
val formaldehyde = <minechem:minechemMolecule:197>;
val hexaMethyleneTetramine = <minechem:minechemMolecule:198>;
val phosphoricAcid = <minechem:minechemMolecule:211>;
val chlorometane = <minechem:minechemMolecule:212>;
val phosphorTrichloride = <minechem:minechemMolecule:213>;
val dyethylPhosphite = <minechem:minechemMolecule:214>;
val dyethylMethylPhosphite = <minechem:minechemMolecule:215>;

val tungsticacid = <minechem:minechemMolecule:217>;
val tungstentrioxide = <minechem:minechemMolecule:218>;

val polyethylene = <minechem:minechemMolecule:220>;
val polypropylene = <minechem:minechemMolecule:221>;
val ethylbenzene = <minechem:minechemMolecule:223>;
val styrene = <minechem:minechemMolecule:224>;
val butadiene = <minechem:minechemMolecule:225>;
val nylon = <minechem:minechemMolecule:226>;
val adiponitrile = <minechem:minechemMolecule:227>;
val adipicAcid = <minechem:minechemMolecule:228>;
val hexaMethyleneDiamine = <minechem:minechemMolecule:230>;

val coke = <ImmersiveEngineering:material:6>;
val tungstendust = <ore:dustTungsten>;


//Coke + steam -> Nitrogen + Carbon Monoxide
chemReactor.addRecipe([nitrogen, carbonMonoxide],[],[coke], [steam * 1000], 100, 10);

//water + sulfur trioxide -> sulfuric acid
chemReactor.addRecipe([sulfuricAcid], [], [sulfurTrioxide], [water * 1000], 100, 10);

//sulfuric acid + nitrogen = nitric acid
chemReactor.addRecipe([nitricAcid], [], [sulfuricAcid, nitrogen], [], 100, 10);

//N + H3 -> NH3
chemReactor.addRecipe([ammonia], [], [nitrogen, hydrogen * 3], [], 100, 10);

chemReactor.addRecipe([phosphoricAcid], [], [<hbm:item.powder_fire>, sulfuricAcid], [], 100, 10);

chemReactor.addRecipe([<hbm:item.ingot_phosphorus>], [], [coke, phosphoricAcid, <minecraft:sand>], [], 100, 10);

chemReactor.addRecipe([hydrofluoricAcid], [], [<hbm:item.fluorite>, sulfuricAcid], [], 100, 10);

//maybe in electro but idfk. salt + water -> h2, cl2, NaOH
chemReactor.addRecipe([hydrogen, chlorine, lye], [], [<ore:dustSalt>], [water*1000], 100, 10);

chemReactor.addRecipe([hydrogenChloride], [], [hydrogen, chlorine],[], 100, 10);

chemReactor.addRecipe([methanol], [], [hydrogen, carbonMonoxide],[], 100, 10);

chemReactor.addRecipe([chlorometane], [], [methanol, hydrogenChloride],[], 100, 10);

chemReactor.addRecipe([dyethylPhosphite], [], [phosphorTrichloride],[ethanol * 1000], 100, 10);


chemReactor.addRecipe([dyethylMethylPhosphite], [], [dyethylPhosphite, chlorometane],[], 100, 10);


//I believe this is for RDX n shits
chemReactor.addRecipe([rdx, nitrogenDioxide * 2, sulfurTrioxide, sulfurDioxide * 3], [], [ammoniumNitrate, hexaMethyleneTetramine, aceticAcid, aceticAnhydride], [], 100, 20);

chemReactor.addRecipe([formaldehyde * 2], [water * 2000], [oxygen, methanol * 2], [], 100, 20);

chemReactor.addRecipe([hexaMethyleneTetramine], [water * 6000], [ammonia * 6, formaldehyde * 4], [], 100, 20);

chemReactor.addRecipe([ammoniumNitrate], [], [ammonia, nitricAcid], [], 100, 20);

chemReactor.addRecipe([methylAcetate, aceticAcid], [], [methanol, carbonMonoxide], [], 100, 20);

chemReactor.addRecipe([aceticAnhydride], [], [methylAcetate, carbonMonoxide], [], 100, 20);

//hydro cracking
chemReactor.addRecipe([hydrogen * 4], [], [], [steam * 1000, methane * 1000], 100, 20);

//Couple of cool fuel recipes
chemReactor.addRecipe([coke], [diesel * 800], [], [bitumen * 1000], 1200, 100);

//Plastic
chemReactor.addRecipe([<Magneticraft:item.plastic>], [], [polyethylene, polypropylene], [], 100, 20);

//Late game plastics
chemReactor.addRecipe([ethylbenzene], [], [], [ethylene * 1000, benzene * 1000], 100, 20);
chemReactor.addRecipe([styrene], [], [ethylbenzene], [steam * 1000], 100, 20);
chemReactor.addRecipe([butadiene], [], [oxygen], [butane * 1000], 100, 20);
chemReactor.addRecipe([<Magneticraft:item.rubber>], [], [butadiene, styrene], [], 100, 20);

chemReactor.addRecipe([hexaMethyleneDiamine], [], [adiponitrile, hydrogen], [], 100, 20);

chemReactor.addRecipe([adipicAcid], [], [carbonMonoxide], [water * 1000], 100, 20);

chemReactor.addRecipe([nylon], [], [adipicAcid, hexaMethyleneDiamine], [], 100, 20);

furnace.remove(<ore:ingotTungsten>);

chemReactor.addRecipe([tungsticacid], [], [hydrogenChloride * 2, tungstendust],[], 100, 10);
chemReactor.addRecipe([tungstentrioxide], [], [tungsticacid],[], 100, 10);

print("Why are you NOT WORKING");
print("Maybe I shouldn't include a patch mod that shuts up Advanced Rocketry's recipe logger...");

chemReactor.addRecipe([<hbm:item.ingot_tungsten>], [<liquid:water> * 3000], [tungstentrioxide, hydrogen * 3],[], 100, 10);
chemReactor.addRecipe([<hbm:item.ingot_tungsten>, carbonDioxide*3], [], [tungstentrioxide, carbon * 3],[], 100, 10);
