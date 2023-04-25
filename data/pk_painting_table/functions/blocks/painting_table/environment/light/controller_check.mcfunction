#> pk_painting_table:blocks/painting_table/environment/light/controller_check

# From bottom
execute if entity @s[tag=pk.custom_block.light_source.bottom] positioned ~ ~-1 ~ if predicate pk_painting_table:location/light/0 at @s unless predicate pk_painting_table:location/light/surrounded_0 align xyz run function pk_painting_table:blocks/painting_table/environment/light/controller_relocate_source

# From top
execute if entity @s[tag=pk.custom_block.light_source.top] positioned ~ ~1 ~ if predicate pk_painting_table:location/light/0 at @s unless predicate pk_painting_table:location/light/surrounded_0 align xyz run function pk_painting_table:blocks/painting_table/environment/light/controller_relocate_source

# From west
execute if entity @s[tag=pk.custom_block.light_source.west] positioned ~-1 ~ ~ if predicate pk_painting_table:location/light/0 at @s unless predicate pk_painting_table:location/light/surrounded_0 align xyz run function pk_painting_table:blocks/painting_table/environment/light/controller_relocate_source

# From east
execute if entity @s[tag=pk.custom_block.light_source.east] positioned ~1 ~ ~ if predicate pk_painting_table:location/light/0 at @s unless predicate pk_painting_table:location/light/surrounded_0 align xyz run function pk_painting_table:blocks/painting_table/environment/light/controller_relocate_source

# From north
execute if entity @s[tag=pk.custom_block.light_source.north] positioned ~ ~ ~-1 if predicate pk_painting_table:location/light/0 at @s unless predicate pk_painting_table:location/light/surrounded_0 align xyz run function pk_painting_table:blocks/painting_table/environment/light/controller_relocate_source

# From south
execute if entity @s[tag=pk.custom_block.light_source.south] positioned ~ ~ ~1 if predicate pk_painting_table:location/light/0 at @s unless predicate pk_painting_table:location/light/surrounded_0 align xyz run function pk_painting_table:blocks/painting_table/environment/light/controller_relocate_source