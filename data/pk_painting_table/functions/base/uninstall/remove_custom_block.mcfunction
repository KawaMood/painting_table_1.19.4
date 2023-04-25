#> pk_painting_table:base/uninstall/remove_custom_block

# Remove block container and all id-matching components
setblock ~ ~ ~ air
kill @e[type=#pk_painting_table:painting_table_component,tag=pk.pa_ta.painting_table.component,distance=..10]

# Unload the targeted chunk
forceload remove ~ ~

# Remove the current entity
kill @s