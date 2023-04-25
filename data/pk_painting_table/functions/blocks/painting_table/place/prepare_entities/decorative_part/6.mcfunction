#> pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/6
# Faces: Top - North - East
# FacesParts: top_tr - north_tl - east_tr

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.custom_block.decorative
tag @s add pk.pa_ta.painting_table
tag @s add pk.pa_ta.painting_table.component
tag @s add pk.pa_ta.painting_table.decorative
tag @s add pk.part_6

# Set data 
data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;16,11,1,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjY2MzY3MjI2MmUxN2UyMjU2NGFiNmI1YmRjOGJkZDM2Y2RhMDA1MGUwOTZkMWVmZmFkM2UxZGI3OGUyNmEzNiJ9fX0="}]}}}},transformation:{translation:[0.7505f,0.0005f,0.2495f],scale:[1.002f,1.002f,1.002f]}}