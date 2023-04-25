#> pk_painting_table:blocks/painting_table/use/player_replaced_gui_item

# Give item back to the player
summon item ~ ~ ~ {Tags:["pk.temp.current"],Item:{id:"minecraft:stick",Count:1b},PickupDelay:0s}
data modify entity @e[type=item,tag=pk.temp.current,distance=..0.1,limit=1] Item set from storage pk.common:data Temp.Search.Items[0]
tp @e[type=item,tag=pk.temp.current,distance=..0.1,limit=1] @a[tag=pk.temp.current,distance=..10,limit=1]
tag @e[type=item,tag=pk.temp.current,distance=..10,limit=1] remove pk.temp.current