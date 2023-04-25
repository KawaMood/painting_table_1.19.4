#> pk_painting_table:blocks/painting_table/use/block_drop_input_items_recursive

# Drop item with a PickupDelay of 0
summon item ~ ~ ~ {Tags:["pk.temp.current"],Item:{id:"minecraft:stick",Count:1b},PickupDelay:0s}
data modify entity @e[type=item,tag=pk.temp.current,distance=..0.1,limit=1] Item set from storage pk.common:data Temp.Inputs[-1]
tag @e[type=item,tag=pk.temp.current,distance=..0.1,limit=1] remove pk.temp.current

# Recursive call
data remove storage pk.common:data Temp.Inputs[-1]
execute if data storage pk.common:data Temp.Inputs[{}] run function pk_painting_table:blocks/painting_table/use/block_drop_input_items_recursive