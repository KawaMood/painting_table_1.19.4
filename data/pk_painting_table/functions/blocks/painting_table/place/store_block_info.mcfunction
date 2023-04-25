#> pk_painting_table:blocks/painting_table/place/store_block_info
# Store the Painting Table info from the controller

data remove storage pk.common:data Temp

# Set position
data modify storage pk.common:data Temp.PaintingTable.Pos set from entity @s Pos

# Set component id score
execute store result storage pk.common:data Temp.PaintingTable.id int 1 run scoreboard players get @s pk.custom_block.component.id

# Set placer
data modify storage pk.common:data Temp.PaintingTable.Placer.UUID set from entity @a[tag=pk.temp.current,distance=..10,limit=1] UUID

# Set dimension
scoreboard players set $temp pk.dimension.id -99
# - If placed in a vanilla dimension
execute if predicate pk_painting_table:location/dimension/0 run scoreboard players set $temp pk.dimension.id 0
execute if predicate pk_painting_table:location/dimension/-1 run scoreboard players set $temp pk.dimension.id -1
execute if predicate pk_painting_table:location/dimension/1 run scoreboard players set $temp pk.dimension.id 1
# - If placed in a custom dimension
execute if score $temp pk.dimension.id matches -99 run forceload add -30000000 1611
execute if score $temp pk.dimension.id matches -99 positioned -30000000 0 1611 run scoreboard players operation $temp pk.dimension.id = @e[type=marker,tag=pk.dimension.marker,distance=..0.1,limit=1] pk.dimension.id
# - Set the dimension id
execute store result storage pk.common:data Temp.PaintingTable.Dimension int 1 run scoreboard players get $temp pk.dimension.id

# Store current block's info into the list
data modify storage pk.pa_ta:data Blocks.PaintingTables append from storage pk.common:data Temp.PaintingTable