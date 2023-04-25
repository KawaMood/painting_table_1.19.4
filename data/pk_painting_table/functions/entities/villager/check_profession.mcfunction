#> pk_painting_table:entities/villager/check_profession

# If the villager has experience points and is not a mason : stop to watch
execute if predicate pk_painting_table:scores/villager/xp_or_level_set unless data storage pk.common:data Temp.Entity.VillagerData{profession:"minecraft:mason"} run tag @s add pk.pa_ta.villager.ignore

# If the villager has experience points and is mason : mark it has a mason
execute if predicate pk_painting_table:scores/villager/xp_or_level_set if data storage pk.common:data Temp.Entity.VillagerData{profession:"minecraft:mason"} run tag @s add pk.pa_ta.villager.profession.mason