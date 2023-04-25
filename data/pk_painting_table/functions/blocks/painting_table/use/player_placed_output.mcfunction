#> pk_painting_table:blocks/painting_table/use/player_placed_output

# Skip other checks
scoreboard players set $skip_check pk.temp 1

# Give item back to player
summon item ~ ~ ~ {Tags:["pk.temp.current"],Item:{id:"minecraft:stick",Count:1b},PickupDelay:0s}
data modify entity @e[type=item,tag=pk.temp.current,distance=..0.1,limit=1] Item set from storage pk.common:data Temp.Items[{Slot:16b}]
tp @e[type=item,tag=pk.temp.current,distance=..0.1,limit=1] @a[tag=pk.temp.current,distance=..10,limit=1]
tag @e[type=item,tag=pk.temp.current,distance=..10,limit=1] remove pk.temp.current

# Remove the item from the container
data remove block ~ ~ ~ Items[{Slot:16b}]

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current,limit=1]","color": "gray"},{"text": " placed items in Painting Table output slot"}]