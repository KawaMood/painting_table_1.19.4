#> pk_painting_table:actions/player_placed_hopper
#@within advancement pk_painting_table:interactions/placed_hopper

# Revoke advancement
advancement revoke @s only pk_painting_table:interactions/placed_hopper

# Check if player placed hopper next to a Painting Table
execute as @e[type=marker,tag=pk.custom_block.container,distance=..11] at @s run function pk_painting_table:blocks/painting_table/environment/blocks/verify_hoppers