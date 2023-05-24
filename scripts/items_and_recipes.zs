import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

/**

===================================

            CURRENCIES

    Soft Currency: 

    3 bread: 1 currency
    2 steak: 1 currency
    6 chicken: 1 currency

    12 wood_logs: 1 currency

    6 of any ore: 2 currency

    //Maybe different rates per rater ores but w/e
    //Something like 

    //Iron Ore, Bauxite, Copper Ore, Oil Ore, maybe salt, fluorite, gold and silver, we'll see, depending on demand.

    6 of any ore: 2 currency
    8 coal: 2 currency

===================================

*/
 
/*  =================================================================

                            INGOTS

Contains the ingots we 100% know that we want to use.
Ingots NOT on this block should be deleted through an oredict.zs file or similar.
The player should only have access to ONE kind of ingot.


================================================================= */


/*  =================================================================

                            PLATES

Contains the metal plates. Like above, plates not here should be removed.


================================================================= */

val IRON_PLATE = <item:ImmersiveEngineering:metal:30>;
val ALUMINIUM_PLATE = <item:ImmersiveEngineering:metal:32>;
val STEEL_PLATE = <item:ImmersiveEngineering:metal:38>;

/*  =================================================================

                            RODS

Contains the metal rods. Like above, rods not here should be removed.


================================================================= */

val IRON_ROD = <item:ImmersiveEngineering:material:14>;
val STEEL_ROD = <item:ImmersiveEngineering:material:15>;
val ALUMINIUM_ROD = <item:ImmersiveEngineering:material:16>;

/*  =================================================================

                            FLUID_REPLATED

Contains fluid containers, pumps and pipes.


================================================================= */

val FLUID_PUMP = <item:ImmersiveEngineering:metalDevice2:6>;
val METAL_BARREL = <item:ImmersiveEngineering:metalDevice2:7>;


/*  =================================================================

                            MULTIBLOCK_COMPONENTS

Contains the blocks used in the process of forming multiblocks.


================================================================= */

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

//TODO FIGURE OUT STEEL MAKING


/*  =================================================================

                            COILS_AND_MOTORS

Contains the blocks used in the process of forming multiblocks.


================================================================= */

val COPPER_COIL = <item:ImmersiveEngineering:storage:8>;
val MAGNET = <item:Magneticraft:item.magnet>;
val COPPER_HEAT_COIL = <item:Magneticraft:item.heatcoil_copper>; //TODO Check if these three have a spot or should be deleted
val IRON_HEAT_COIL = <item:Magneticraft:item.heatcoil_iron>;  //As they might be too niche to be reused across multiple recipes.
val TUNGSTEN_HEAT_COIL = <item:Magneticraft:item.heatcoil_tungsten>; //IDK, thinking about it.
val ELECTRIC_MOTOR = <item:Magneticraft:item.motor>;
val COPPER_COIL_MGC = <item:Magneticraft:item.copper_coil>;


/*  =================================================================

                        METALIC ITEMS

Contains the blocks used in the process of forming multiblocks.

================================================================= */

val IRON_TORQUE_SHAFT = <item:AncientWarfare:component:7>;
val STEEL_TORQUE_SHAFT = <item:AncientWarfare:component:8>;
val IRON_GEAR_SET = <item:AncientWarfare:component:1>;
val STEEL_GEAR_SET = <item:AncientWarfare:component:2>;


val IRON_MECH_COMP = <item:ImmersiveEngineering:material:11>;
val STEEL_MECH_COMP = <item:ImmersiveEngineering:material:12>;




val TREATED_WOOD = <item:ImmersiveEngineering:woodenDecoration:4>;
val RUBBER = <item:Magneticraft:item.rubber>;
val FABRIC = <item:Magneticraft:item.string_fabric>;