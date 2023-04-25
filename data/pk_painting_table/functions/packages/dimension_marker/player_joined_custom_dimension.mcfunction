#> pk_painting_table:packages/dimension_marker/player_joined_custom_dimension
# Check if there is already a dimension mark entity in this custom dimension

advancement revoke @s only pk_painting_table:dimension/joined_custom_dimension

forceload add -30000000 1611
execute positioned -30000000 0 1611 unless entity @e[type=marker,tag=pk.dimension.marker,distance=..0.1] summon marker run function pk_painting_table:packages/dimension_marker/marker_initialize

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@s","color": "gray"},{"text": " entered a custom dimension"}]