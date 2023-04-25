#> pk_painting_table:actions/player_placed_dropper

# Revoke advancement
advancement revoke @s only pk_painting_table:interactions/placed_dropper

# Check if player placed dropper  next to a Waystone (middle)
execute as @e[type=marker,tag=pk.pa_ta.painting_table.controller,distance=..11] at @s run function pk_painting_table:blocks/painting_table/environment/blocks/verify_droppers