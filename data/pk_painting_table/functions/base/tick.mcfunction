#> pk_painting_table:base/tick
# Main tick

# Painting Table
execute as @e[type=marker,tag=pk.pa_ta.painting_table.controller] at @s run function pk_painting_table:blocks/painting_table/controller_tick

# Monitor villagers who can still grow as master masons (and aren't custom villagers from another PK data pack)
execute as @e[type=villager,tag=!pk.pa_ta.villager.ignore,tag=!pk.custom_entity] at @s run function pk_painting_table:entities/villager/tick