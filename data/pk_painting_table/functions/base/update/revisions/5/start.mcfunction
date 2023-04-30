#> pk_painting_table:base/update/revisions/5/start
# V.2.0.4

# Add versioning to the custom blocks
data modify storage pk.pa_ta:data Blocks.PaintingTables[{}].Version set value 5

# Change block Pos (array of double) data to x y z (int) data
data remove storage pk.common:data Temp.Array
data modify storage pk.common:data Temp.Array.Search set value []
data modify storage pk.common:data Temp.Array.New set value []
# - Append Custom Blocks
data modify storage pk.common:data Temp.Array.Search append from storage pk.pa_ta:data Blocks.PaintingTables[]
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_painting_table:base/update/revisions/5/blocks_list_update_recursive
# - Set the new array
data modify storage pk.pa_ta:data Blocks.PaintingTables set from storage pk.common:data Temp.Array.New