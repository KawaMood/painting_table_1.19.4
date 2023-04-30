#> pk_painting_table:blocks/painting_table/main/controller_tick

# Set scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# When using
execute if entity @s[tag=pk.custom_block.in_use] run function pk_painting_table:blocks/painting_table/use/controller_tick

# Watch environnement (blocks and entities)
function pk_painting_table:blocks/painting_table/environment/controller_tick