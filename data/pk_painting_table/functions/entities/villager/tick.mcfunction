#> pk_painting_table:entities/villager/tick

# Store current villager data
data modify storage pk.common:data Temp.Entity set from entity @s {}
execute store result score $xp pk.temp run data get storage pk.common:data Temp.Entity.Xp
execute store result score $lvl pk.temp run data get storage pk.common:data Temp.Entity.VillagerData.level

# Monitor profession
execute if entity @s[tag=!pk.pa_ta.villager.profession.mason] run function pk_painting_table:entities/villager/check_profession

# Check if the villager is a mason that grew up to master level
execute if score $xp pk.temp matches 1.. if score $lvl pk.temp matches 5 if entity @s[tag=pk.pa_ta.villager.profession.mason] run function pk_painting_table:entities/villager/is_mason_master