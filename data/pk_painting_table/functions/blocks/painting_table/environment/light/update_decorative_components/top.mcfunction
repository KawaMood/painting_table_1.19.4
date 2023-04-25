#> pk_painting_table:blocks/painting_table/environment/light/update_decorative_components/top

# Change position
tp @s ~ ~ ~

# Change transformation.translation offsets
execute if entity @s[tag=pk.part_1] run data modify entity @s transformation.translation set value [0.2495f,-0.5005f,0.2495f]
execute if entity @s[tag=pk.part_2] run data modify entity @s transformation.translation set value [0.7505f,-0.5005f,0.2495f]
execute if entity @s[tag=pk.part_3] run data modify entity @s transformation.translation set value [0.7505f,-0.5005f,0.7505f]
execute if entity @s[tag=pk.part_4] run data modify entity @s transformation.translation set value [0.2495f,-0.5005f,0.7505f]
execute if entity @s[tag=pk.part_5] run data modify entity @s transformation.translation set value [0.2495f,0.0005f,0.2495f]
execute if entity @s[tag=pk.part_6] run data modify entity @s transformation.translation set value [0.7505f,0.0005f,0.2495f]
execute if entity @s[tag=pk.part_7] run data modify entity @s transformation.translation set value [0.7505f,0.0005f,0.7505f]
execute if entity @s[tag=pk.part_8] run data modify entity @s transformation.translation set value [0.2495f,0.0005f,0.7505f]