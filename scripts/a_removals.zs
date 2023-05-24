for item in game.items {
    if item.owner.matches("hbm") || item.owner.matches("mcheli") || item.owner.matches("advancedRocketry") || item.owner.matches("libVulpes") || item.owner.matches("Railcraft") || item.owner.matches("minefantasy2") || item.owner.matches("minechem") || item.owner.matches("Magneticraft") || item.owner.matches("tc") || item.owner.matches("ForgeMicroblock")|| item.owner.matches("cuchaz.ships")  {
        recipes.remove(item.defaultInstance);
    }
    if item.owner.matches("minechem") {
        if (item.defaultInstance.name.split(":")[0].contains("Bucket") || item.defaultInstance.name.split(":")[0].contains("fluid")){
            mods.nei.NEI.hide(item.defaultInstance);
        }
    }
    if item.owner.matches("hbm") {
        item.defaultInstance.resistance = 15.0;
    }
}

<ImmersiveEngineering:stoneDecoration:4>.resistance = 15.0;
<hbm:tile.concrete_smooth>.resistance = 12.5;
<advancedRocketry:tile.concrete>.resistance = 10.0;
<hbm:tile.asphalt>.resistance = 7.5;