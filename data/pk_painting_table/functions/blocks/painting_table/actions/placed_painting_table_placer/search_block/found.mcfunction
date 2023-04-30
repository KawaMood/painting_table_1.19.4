#> pk_painting_table:blocks/painting_table/actions/placed_painting_table_placer/search_block/found
# Block has been found

scoreboard players set $found pk.temp 1

# Store the block data
data modify storage pk.common:data Temp.Block set from block ~ ~ ~

function pk_painting_table:blocks/painting_table/place/trigger