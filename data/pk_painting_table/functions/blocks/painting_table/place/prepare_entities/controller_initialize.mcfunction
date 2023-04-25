#> pk_painting_table:blocks/painting_table/place/prepare_entities/controller_initialize

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Set tags
tag @s add pk.custom_block
tag @s add pk.custom_block.container
tag @s add pk.custom_block.component
tag @s add pk.custom_block.controller
tag @s add pk.custom_block.light_source.top
tag @s add pk.pa_ta.painting_table
tag @s add pk.pa_ta.painting_table.component
tag @s add pk.pa_ta.painting_table.controller

# Check if there is potential dangerous hoppers around
function pk_painting_table:blocks/painting_table/environment/blocks/verify_hoppers

# Store Painting Block info
function pk_painting_table:blocks/painting_table/place/store_block_info

# Store information to the controller
data modify entity @s data.PaintingTable set from storage pk.common:data Temp.PaintingTable

# Set the marker in the middle of the block
tp @s ~0.5 ~0.5 ~0.5