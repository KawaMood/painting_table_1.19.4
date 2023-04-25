#> pk_painting_table:blocks/painting_table/use/player_take_output

# Skip other checks
scoreboard players set $skip_check pk.temp 1

# Store consumable input items
data remove storage pk.common:data Temp.Inputs
data modify storage pk.common:data Temp.Inputs.Consumable set value []
data modify storage pk.common:data Temp.Inputs.Consumable append from storage pk.common:data Temp.Items[{Slot:10b}]
data modify storage pk.common:data Temp.Inputs.Consumable append from storage pk.common:data Temp.Items[{Slot:11b}]
data modify storage pk.common:data Temp.Inputs.Consumable append from storage pk.common:data Temp.Items[{Slot:12b}]
data modify storage pk.common:data Temp.Inputs.Consumable append from storage pk.common:data Temp.Items[{Slot:13b}]

# Substract all consumable inputs items count from the player's output items score 
scoreboard players set $input.count pk.temp 0
# - First input items slot
execute store result score $input.count pk.temp run data get storage pk.common:data Temp.Inputs.Consumable[{Slot:10b}].Count
scoreboard players operation $input.count pk.temp -= $player_has_output_items pk.temp
execute store result storage pk.common:data Temp.Inputs.Consumable[{Slot:10b}].Count byte 1 run scoreboard players get $input.count pk.temp
# - Second input items slot
execute store result score $input.count pk.temp run data get storage pk.common:data Temp.Inputs.Consumable[{Slot:11b}].Count
scoreboard players operation $input.count pk.temp -= $player_has_output_items pk.temp
execute store result storage pk.common:data Temp.Inputs.Consumable[{Slot:11b}].Count byte 1 run scoreboard players get $input.count pk.temp
# - Third input items slot
execute store result score $input.count pk.temp run data get storage pk.common:data Temp.Inputs.Consumable[{Slot:12b}].Count
scoreboard players operation $input.count pk.temp -= $player_has_output_items pk.temp
execute store result storage pk.common:data Temp.Inputs.Consumable[{Slot:12b}].Count byte 1 run scoreboard players get $input.count pk.temp
# - Fourth input items slot
execute store result score $input.count pk.temp run data get storage pk.common:data Temp.Inputs.Consumable[{Slot:13b}].Count
scoreboard players operation $input.count pk.temp -= $player_has_output_items pk.temp
execute store result storage pk.common:data Temp.Inputs.Consumable[{Slot:13b}].Count byte 1 run scoreboard players get $input.count pk.temp

# Update container
data modify block ~ ~ ~ Items append from storage pk.common:data Temp.Inputs.Consumable[]

# Animations
playsound block.beehive.drip block @a[distance=..30] ~ ~ ~ 1 1.8
playsound ui.cartography_table.take_result block @a[distance=..30] ~ ~ ~ 1 1.4
particle dust 0 0 1 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
particle dust 1 0 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
particle dust 1 1 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
particle dust 0 0 1 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
particle dust 1 0 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
particle dust 1 1 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current,limit=1]","color": "gray"},{"text": " get output items from Painting Table"}]