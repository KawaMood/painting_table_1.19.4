#> pk_painting_table:blocks/painting_table/actions/right_click_on_block/player_start_using_block

# Set interaction.id score
scoreboard players operation @s pk.custom_block.interaction.id = $next pk.custom_block.interaction.id

# Add the in use tag
tag @s add pk.custom_block.in_use

# Initialize GUI
data modify block ~ ~ ~ Items set from storage pk.pa_ta:data Block.PaintingTable.GUI
data modify block ~ ~ ~ Lock set value "in_use§r"

# Stop the default sound
stopsound @a[distance=..30] block block.barrel.open

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current,limit=1]","color": "gray"},{"text": " opened Painting Table at ["},{"nbt":"x","block":"~ ~ ~"},{"text": ","},{"nbt":"y","block":"~ ~ ~"},{"text": ","},{"nbt":"z","block":"~ ~ ~"},{"text": "]"}]