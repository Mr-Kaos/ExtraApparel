# Adds trades to the wandering trader.
# Executed via tick.mcfunction

# Roll a random number between 0 and 3 (Currently 25% chance that no item will be rolled)
execute store result score @s kaos.trader_rng run random value 0..3

execute at @e[type=wandering_trader,tag=!has_trade] run execute if score @s kaos.trader_rng matches 0 run data modify entity @e[type=wandering_trader,limit=1] Offers.Recipes prepend value {rewardExp:0b,maxUses:2,buy:{id:"emerald",count:16},sell:{id:"leather_helmet",count:1,components:{"equippable":{"slot":"head"},"item_name":[{"translate":"apparel.head.traffic_cone"}],"lore":[{"translate":"apparel.head.traffic_cone.lore"}],"item_model":"kaos:traffic_cone"}}}
execute at @e[type=wandering_trader,tag=!has_trade] run execute if score @s kaos.trader_rng matches 1 run data modify entity @e[type=wandering_trader,limit=1] Offers.Recipes prepend value {rewardExp:0b,maxUses:2,buy:{id:"emerald",count:16},sell:{id:"leather_helmet",count:1,components:{"equippable":{"slot":"head"},"item_name":[{"translate":"apparel.head.disguise"}],"lore":[{"translate":"apparel.head.disguise.lore"}],"item_model":"kaos:disguise"}}}
execute at @e[type=wandering_trader,tag=!has_trade] run execute if score @s kaos.trader_rng matches 2 run data modify entity @e[type=wandering_trader,limit=1] Offers.Recipes prepend value {rewardExp:0b,maxUses:2,buy:{id:"emerald",count:16},sell:{id:"leather_helmet",count:1,components:{"equippable":{"slot":"head"},"item_name":[{"translate":"apparel.head.glasses"}],"lore":[{"translate":"apparel.head.glasses.lore"}],"item_model":"kaos:glasses"}}}

tag @e[type=wandering_trader] add has_trade