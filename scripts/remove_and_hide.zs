import minetweaker.item.IItemStack;
import mods.nei.NEI;

val array = [
<item:minecraft:sticky_piston>,
<item:minecraft:piston>,
<item:minecraft:tnt>,
<item:minecraft:enchanting_table>,
<item:minecraft:ender_chest>,
<item:minecraft:beacon>,
<item:minecraft:bow>,
<item:minecraft:wooden_sword>,
<item:minecraft:anvil>,
<item:minecraft:diamond_sword>,
<item:minecraft:stone_sword>,
<item:minecraft:golden_sword>,
<item:minecraft:leather_helmet>,
<item:minecraft:leather_chestplate>,
<item:minecraft:leather_leggings>,
<item:minecraft:leather_boots>,
<item:minecraft:chainmail_helmet>,
<item:minecraft:chainmail_chestplate>,
<item:minecraft:chainmail_leggings>,
<item:minecraft:chainmail_boots>,
<item:minecraft:iron_helmet>,
<item:minecraft:iron_chestplate>,
<item:minecraft:iron_leggings>,
<item:minecraft:iron_boots>,
<item:minecraft:diamond_helmet>,
<item:minecraft:diamond_chestplate>,
<item:minecraft:diamond_leggings>,
<item:minecraft:diamond_boots>,
<item:minecraft:golden_helmet>,
<item:minecraft:golden_chestplate>,
<item:minecraft:golden_leggings>,
<item:minecraft:golden_boots>,
<item:minecraft:golden_apple:1>,
<item:minecraft:golden_apple>,
<item:minecraft:iron_sword>,
<item:minecraft:end_portal>,
<item:minecraft:end_portal_frame>,
<item:minecraft:dragon_egg>,
<item:minecraft:potion>,
<item:minecraft:ender_eye>,
<item:minecraft:experience_bottle>,
<item:minecraft:golden_carrot>,
<item:minecraft:skull>,
<item:minecraft:skull>,
<item:minecraft:skull:1>,
<item:minecraft:skull:2>,
<item:minecraft:skull:3>,
<item:minecraft:skull:4>,
<item:minecraft:nether_star>,
<item:minecraft:tnt_minecart>,
<item:minecraft:iron_horse_armor>,
<item:minecraft:golden_horse_armor>,
<item:minecraft:diamond_horse_armor>,
<item:AncientWarfareNpc:npc_spawner>,
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.bard"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.cavalry"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.leader.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.trader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.soldier.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.trader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.civilian.male"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.civilian.female"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.trader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.trader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.priest"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.soldier"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.leader.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.mounted_archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.leader.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.soldier.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.soldier"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.leader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.leader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.civilian.male"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.cavalry"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.civilian.female"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.civilian.male"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.leader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.bard"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.archer.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.soldier.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.bard"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.leader.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.trader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.cavalry"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.archer.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.leader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.cavalry"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.archer.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.bard"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.civilian.female"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.civilian.male"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.bard"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.priest"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.civilian.female"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.mounted_archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.soldier.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.leader.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.civilian.male"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.bard"}),
//<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.trader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.leader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.leader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.leader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.civilian.male"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.priest"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.priest"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.mounted_archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.bard"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.priest"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.leader.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.cavalry"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.soldier"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.mounted_archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.archer.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.soldier.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.trader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.priest"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.archer.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.civilian.female"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.archer.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.soldier"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.mounted_archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.civilian.female"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.soldier.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.priest"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.leader.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.leader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.mounted_archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.soldier"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.cavalry"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.soldier"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.soldier.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.leader.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.archer.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.civilian.female"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "viking.civilian.female"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.civilian.male"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "desert.civilian.male"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.soldier.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "native.mounted_archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.trader"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_2.soldier"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_1.cavalry"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "custom_3.mounted_archer"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.archer.elite"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.bard"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.priest"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bandit.soldier"}),
<item:AncientWarfareNpc:npc_spawner>.withTag({npcSubtype: "", npcType: "pirate.cavalry"})
] as IItemStack[];

for item in array {
    NEI.hide(item);
    recipes.remove(item);
}

val potionDef = <item:minecraft:potion>.definition;
recipes.remove(<item:minecraft:brewing_stand>);

for i in 0 to 462 {
    //new ItemStack(item, 1, meta)
    val newItem = potionDef.makeStack(i);
    NEI.hide(newItem);
    recipes.remove(newItem);
}

val spawnEggDef = <item:minecraft:spawn_egg>.definition;

for i in 50 to 99 {
    val newItem = spawnEggDef.makeStack(i);
    NEI.hide(newItem);
}

val laggyWorkbenchs = <item:flansmod:flansWorkbench>.definition;

for i in 0 to 16 {
    val newItem = laggyWorkbenchs.makeStack(i);
    recipes.remove(newItem);
    NEI.hide(newItem);
}

val mobSpawners = <item:minecraft:mob_spawner>.definition;

for i in 0 to 121 {
    val newItem = mobSpawners.makeStack(i);
    NEI.hide(newItem);
}

NEI.hide(<item:minecraft:potion:*>);
