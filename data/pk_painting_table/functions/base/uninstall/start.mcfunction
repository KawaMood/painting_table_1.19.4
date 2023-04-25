#> pk_painting_table:base/uninstall/start
# Uninstall the data pack and remove the common feature if there is no PK data pack installed anymore

# Remove all placed painting tables
# Will need to be searched within all dimensions
data remove storage pk.common:data Temp
data modify storage pk.common:data Temp.Array.Search set value []
# - Append Painting Tables
data modify storage pk.common:data Temp.Array.Search append from storage pk.pa_ta:data Blocks.PaintingTables[]
# - Forceload chunks where custom blocks are, then wait 1 second for the chunk to be fully loaded
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_painting_table:base/uninstall/forceload_custom_blocks_chunks

# 1 second after
schedule function pk_painting_table:base/uninstall/after_1s 1s