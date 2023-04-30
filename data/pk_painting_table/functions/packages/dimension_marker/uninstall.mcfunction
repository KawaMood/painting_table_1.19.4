#> pk_painting_table:packages/dimension_marker/uninstall
# Uninstall package

execute as @e[type=marker,tag=pk.dimension.marker] at @s run function pk_painting_table:packages/dimension_marker/marker_remove
scoreboard objectives remove pk.dimension.id