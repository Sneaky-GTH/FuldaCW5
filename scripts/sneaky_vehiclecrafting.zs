import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

val LT_TURRET = <item:flansmod:44_Light_Tank_Turret>;
val LT_CHASSIS = <item:flansmod:44_Light_Tank_Chassis>;
val MT_TURRET = <item:flansmod:44_Medium_Tank_Turret>;
val MT_CHASSIS = <item:flansmod:44_Medium_Tank_Chassis>;
val HT_TURRET = <item:flansmod:44_Heavy_Tank_Turret>;
val HT_CHASSIS = <item:flansmod:44_Heavy_Tank_Chassis>;

<item:mcheli:m26>.addTooltip("Pretend that this is a Tier 1 vehicle");
recipes.addShaped(<item:mcheli:m26>,
 [[null, null, null],
  [null, LT_TURRET, null],
  [null, LT_CHASSIS, null]]);


<item:mcheli:t55>.addTooltip("Pretend that this is a Tier 2 vehicle");
recipes.addShaped(<item:mcheli:t55>,
 [[null, null, null],
  [null, MT_TURRET, null],
  [null, MT_CHASSIS, null]]);


<item:mcheli:chieftan>.addTooltip("Pretend that this is a Tier 3 vehicle");
<item:mcheli:chieftan>.addTooltip("Not available in the weapon shop, can only be crafted");
recipes.addShaped(<item:mcheli:chieftan>,
 [[null, null, null],
  [null, HT_TURRET, null],
  [null, HT_CHASSIS, null]]);
