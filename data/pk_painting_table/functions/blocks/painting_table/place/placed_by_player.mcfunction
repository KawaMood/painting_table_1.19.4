#> pk_painting_table:blocks/painting_table/place/placed_by_player
# Player placed a Painting Table

advancement revoke @s only pk_painting_table:interactions/placed_painting_table
tag @s add pk.temp.current
function pk_painting_table:blocks/painting_table/place/search_block/start
tag @s remove pk.temp.current