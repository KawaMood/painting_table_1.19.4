#> pk_painting_table:blocks/painting_table/environment/controller_tick
# Monitor adjacent/current block(s) and near entities
# Adjacent hoppers are checked when a player place one within:
#@advancement pk_painting_table:interactions/placed_hopper

# Set scores
scoreboard players set $stop pk.temp 0

# Check if the block has been destroyed
execute unless block ~ ~ ~ barrel run function pk_painting_table:blocks/painting_table/remove/trigger

# Remove dangerous hopper minecart
execute if score $stop pk.temp matches 0 positioned ~-0.5 ~-2.01 ~-0.5 as @e[type=hopper_minecart,dy=1.01] at @s run function pk_painting_table:blocks/painting_table/environment/entities/hopper_minecart_remove

# Update light source position if needed (can be disabled with the relative score setting for perf saving)
execute unless score $custom_block.light_update pk.value matches ..0 run function pk_painting_table:blocks/painting_table/environment/light/controller_check