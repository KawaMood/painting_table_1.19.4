#> pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/2
# Faces: Bottom - North - East
# FacesParts: bottom_br - north_bl - east_br

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.custom_block.decorative
tag @s add pk.pa_ta.painting_table
tag @s add pk.pa_ta.painting_table.component
tag @s add pk.pa_ta.painting_table.decorative
tag @s add pk.part_2

# Set data 
data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;16,11,1,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk2M2RmZmRjZWYwYjk0ZDI1NzUxM2UzN2I1MjIxZWU3NzJmMGJmMmRiYjU4NWE4YzU4ZTc3ZGViMjBiMTQzZiJ9fX0="}]}}}},transformation:{translation:[0.7505f,-0.5005f,0.2495f],scale:[1.002f,1.002f,1.002f]}}