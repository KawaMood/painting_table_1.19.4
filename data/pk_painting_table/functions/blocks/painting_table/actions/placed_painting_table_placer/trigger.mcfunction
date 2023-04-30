#> pk_painting_table:blocks/painting_table/actions/placed_painting_table_placer/trigger
# Player placed a Painting Table placer

advancement revoke @s only pk_painting_table:interactions/placed_painting_table

tag @s add pk.temp.current
function pk_painting_table:blocks/painting_table/actions/placed_painting_table_placer/search_block/start
tag @s remove pk.temp.current