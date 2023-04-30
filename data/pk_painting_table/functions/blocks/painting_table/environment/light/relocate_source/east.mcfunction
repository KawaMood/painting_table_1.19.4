#> pk_painting_table:blocks/painting_table/environment/light/relocate_source/east

# Set score
scoreboard players set $stop pk.temp 1

# Update light source tag
function pk_painting_table:blocks/painting_table/environment/light/controller_remove_source_tags
tag @s add pk.custom_block.light_source.east

# Find relative decorative components
tag @e[type=#pk_painting_table:custom_block/components,tag=pk.custom_block.decorative,predicate=pk_painting_table:scores/custom_block/component_id_matching,distance=..10] add pk.temp.current

# Update current decorative components
execute as @e[type=#pk_painting_table:custom_block/components,tag=pk.custom_block.decorative,tag=pk.temp.current,distance=..10] run function pk_painting_table:blocks/painting_table/environment/light/update_decorative_components/east

# Free relative decorative components
tag @e[type=#pk_painting_table:custom_block/components,tag=pk.custom_block.decorative,tag=pk.temp.current,distance=..10] remove pk.temp.current

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"text": "Painting Table at [","color": "gray"},{"nbt":"x","block":"~-1 ~ ~"},{"text": ","},{"nbt":"y","block":"~-1 ~ ~"},{"text": ","},{"nbt":"z","block":"~-1 ~ ~"},{"text": "] redefined its own light source to \"east\""}]