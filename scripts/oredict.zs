import minetweaker.item.IItemStack;
import mods.nei.NEI;
import mods.immersiveengineering.Crusher;

recipes.remove(<advancedRocketry:tile.blockHandPress>);
NEI.hide(<advancedRocketry:tile.blockHandPress>);

#Steel: Using IE for every thing
var SteelI = <ore:ingotSteel>;
var arraySI = [
    <hbm:item.ingot_steel>,
    <libVulpes:libVulpesproductingot:6>
    
] as IItemStack[];
for item in arraySI {
    SteelI.remove(item);
    furnace.remove(item);
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}
var arraySI2 = [
    <tc:steel>,
    <Railcraft:ingot>
]as IItemStack[];
for item in arraySI2{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    SteelI.remove(item);
}
NEI.hide(<AncientWarfare:steel_ingot>);
var SteelN = <ore:nuggetSteel>;
var arraySN = [
    <libVulpes:libVulpesproductnugget:6>
] as IItemStack[];
for item in arraySN{
    SteelN.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    recipes.remove(item);
}
var SteelB = <ore:blockSteel>;
var arraySB = [
    <libVulpes:libVulpesmetal0:6>,
    <hbm:tile.block_steel>
] as IItemStack[];
for item in arraySB{
    SteelB.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    recipes.remove(item);
}
var SteelD = <ore:dustSteel>;
var arraySD = [
    <hbm:item.powder_steel>
] as IItemStack[];
for item in arraySD{
    SteelD.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    recipes.remove(item);
}
var SteelP = <ore:plateSteel>;
var arraySP = [
    <libVulpes:libVulpesproductplate:6>,
    <hbm:item.plate_steel>,
    <Railcraft:part.plate:1>
]as IItemStack[];
for item in arraySP{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    SteelP.remove(item);
}
recipes.addShapeless(<libVulpes:libVulpesproductdust:6>*2, [<ore:dustIron>, <ore:dustCoal>]);

#Copper IE
var CopperI = <ore:ingotCopper>;
var arrayCI = [
    <Magneticraft:item.ingotCopper>,
    <hbm:item.ingot_copper>,
    <libVulpes:libVulpesproductingot:4>
    
] as IItemStack[];
for item in arrayCI {
    CopperI.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    furnace.remove(item);
    recipes.remove(item);
}
var arrayCI2 = [
    <Railcraft:ingot:1>,
    <tc:ingotCopper>
]as IItemStack[];
for item in arrayCI2{
    recipes.remove(item);
    CopperI.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}

var CopperB = <ore:blockCopper>;
var arrayCB = [
    <Magneticraft:block_copper>,
    <hbm:tile.block_copper>,
    <libVulpes:libVulpesmetal0:4>
] as IItemStack[];
for item in arrayCB{
    CopperB.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    recipes.remove(item);
}
var CopperD = <ore:dustCopper>;
var arrayCD = [
    <libVulpes:libVulpesproductdust:4>,
    <hbm:item.powder_copper>
] as IItemStack[];
for item in arrayCD {
    CopperD.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    recipes.remove(item);
}
var CopperP = <ore:plateCopper>;
var arrayCP = [
    <hbm:item.plate_copper>,
    <libVulpes:libVulpesproductplate:4>,
    <Railcraft:part.plate:3>
]as IItemStack[];
for item in arrayCP{
    CopperP.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    recipes.remove(item);
}
furnace.addRecipe(<ImmersiveEngineering:metal>, <Magneticraft:item.dust:2>);
furnace.addRecipe(<ImmersiveEngineering:metal>, <libVulpes:libVulpesproductdust:4>);


#Aluminum

var AluminumB = <ore:blockAluminum>;
var arrayAB = [
    <libVulpes:libVulpesmetal0:9>,
    <hbm:tile.block_aluminium>
]as IItemStack[];
for item in arrayAB{
    AluminumB.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    recipes.remove(item);
}
var AluminumI = <ore:ingotAluminum>;
var arrayAI = [
    <libVulpes:libVulpesproductingot:9>,
    <hbm:item.ingot_aluminium>
] as IItemStack[];
for item in arrayAI{
    AluminumI.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    recipes.remove(item);
    furnace.remove(item);
}

var AluminumD = <ore:dustAluminum>;
var arrayAD = [
    <libVulpes:libVulpesproductdust:9>,
    <ImmersiveEngineering:metal:11>,
    <hbm:item.powder_aluminium>
]as IItemStack[];
for item in arrayAD{
    AluminumD.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}
AluminumD.add(<Magneticraft:item.dust:13>);
furnace.addRecipe(<ImmersiveEngineering:metal:1>, <Magneticraft:item.dust:13>);


var AluminumN = <ore:nuggetAluminum>;
AluminumN.remove(<libVulpes:libVulpesproductnugget:9>);
recipes.remove(<libVulpes:libVulpesproductnugget:9>);
NEI.hide(<libVulpes:libVulpesproductnugget:9>);

var AluminumP = <ore:plateAluminum>;
var arrayAP = [
    <libVulpes:libVulpesproductplate:9>,
    <hbm:item.plate_aluminium>
]as IItemStack[];
for item in arrayAP{
    recipes.remove(item);
    AluminumP.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}
#Titanium
var TitaniumD = <ore:dustTitanium>;
var arrayTD = [
    <libVulpes:libVulpesproductdust:7>,
    <hbm:item.powder_titanium>
]as IItemStack[];
for item in arrayTD{
    TitaniumD.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}
var TitaniumI = <ore:ingotTitanium>;
var arrayTI = [
    <hbm:item.ingot_titanium>
] as IItemStack[];
for item in arrayTI{
    recipes.remove(item);
    furnace.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    TitaniumI.remove(item);
}
var TitaniumB = <ore:blockTitanium>;
var arrayTB = [
    <hbm:tile.block_titanium>
]as IItemStack[];
for item in arrayTB{
    recipes.remove(item);
    TitaniumB.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}
var TitaniumP = <ore:plateTitanium>;
var arrayTP = [
    <hbm:item.plate_titanium>
]as IItemStack[];
for item in arrayTP{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    TitaniumP.remove(item);
}
#Tin
var TinI = <ore:ingotTin>;
var arrayTINI = [
    <Railcraft:ingot:2>
]as IItemStack[];
for item in arrayTINI{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    TinI.remove(item);
}
var TinB = <ore:blockTin>;
var arrayTINB = [
    <Railcraft:cube:10>
]as IItemStack[];
for item in arrayTINB{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    TinB.remove(item);
}
var TinP = <ore:plateTin>;
var arrayTINP = [
    <Railcraft:part.plate:2>
]as IItemStack[];
for item in arrayTINP{
    recipes.remove(item);
    TinP.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}

#Lead 

var LeadI = <ore:ingotLead>;
var arrayLI = [
    <hbm:item.ingot_lead>,
    <Railcraft:ingot:3>
]as IItemStack[];
for item in arrayLI{
    furnace.remove(item);
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    LeadI.remove(item);
}
var LeadB = <ore:blockLead>;
var arrayLB = [
    <hbm:tile.block_lead>,
    <Railcraft:cube:11>
]as IItemStack[];
for item in arrayLB{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    LeadB.remove(item);
}
var LeadN = <ore:nuggetLead>;
var arrayLN = [
    <hbm:item.nugget_lead>,
    <Railcraft:nugget:4>
]as IItemStack[];
for item in arrayLN{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    LeadN.remove(item);
}
var LeadD = <ore:dustLead>;
var arrayLD = [
    <hbm:item.powder_lead>
]as IItemStack[];
for item in arrayLD{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    LeadD.remove(item);
}


var LeadP = <ore:plateLead>;
var arrayLP = [
    <hbm:item.plate_lead>,
    <Railcraft:part.plate:4>
]as IItemStack[];
for item in arrayLP{
    recipes.remove(item);
    LeadP.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}
// Vanilla items that have other dusts added but no more ingots

#Gold

var GoldD = <ore:dustGold>;
var arrayGD = [
    <libVulpes:libVulpesproductdust:2>,
    <hbm:item.powder_gold>
    
] as IItemStack[];
for item in arrayGD{
    GoldD.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}
var GoldP = <ore:plateGold>;
var arrayGP = [
    <hbm:item.plate_gold>
]as IItemStack[];
for item in arrayGP{
    recipes.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
    GoldP.remove(item);
}

#Diamond

var DiamondD = <ore:dustDiamond>;
var arrayDD = [
    <hbm:item.powder_diamond>
] as IItemStack[];
for item in arrayDD{
    DiamondD.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}

#Iron 

var IronD = <ore:dustIron>;
var arrayID = [
    #GIVE ME YOUR DOCUMENTATION
    <hbm:item.powder_iron>,
    <libVulpes:libVulpesproductdust:1>
] as IItemStack[];
for item in arrayID{
    IronD.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}
var IronP = <ore:plateIron>;
var arrayIP = [
    <libVulpes:libVulpesproductplate:1>,
    <hbm:item.plate_iron>,
    <roadstuff:itemIronPart:1>,
    <Railcraft:part.plate>
] as IItemStack[];
for item in arrayIP{
    recipes.remove(item);
    IronP.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}

#Uranium

var UraniumD = <ore:dustUranium>;
var arrayUD = [
    <hbm:item.powder_uranium>
]as IItemStack[];
for item in arrayUD{
    UraniumD.remove(item);
    item.addTooltip("Item has been oredicionarified. Use another please");
    item.addTooltip("Try searching for IE or LibVulpes kind");
}

#Quartz

var QuartzD = <ore:dustQuartz>;
QuartzD.remove(<ImmersiveEngineering:metal:18>);
<ImmersiveEngineering:metal:18>.addTooltip("Dont use this haha.");

#I dont think im missing anything
#You know the drill people, if you are reading this, say "piña colada" in general. Also if im missing something please tell me or moc will kill me.

