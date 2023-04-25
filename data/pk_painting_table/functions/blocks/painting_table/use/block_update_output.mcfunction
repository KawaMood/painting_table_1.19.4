#> pk_painting_table:blocks/painting_table/use/block_update_output

# Calculate final output's count by searching for the limiting input item
scoreboard players set $output.count pk.temp 64
scoreboard players set $input.count pk.temp 0
execute store result score $input.count pk.temp run data get storage pk.common:data Temp.Items[{Slot:10b,id:"minecraft:red_dye"}].Count
scoreboard players operation $output.count pk.temp < $input.count pk.temp
execute store result score $input.count pk.temp run data get storage pk.common:data Temp.Items[{Slot:11b,id:"minecraft:yellow_dye"}].Count
scoreboard players operation $output.count pk.temp < $input.count pk.temp
execute store result score $input.count pk.temp run data get storage pk.common:data Temp.Items[{Slot:12b,id:"minecraft:blue_dye"}].Count
scoreboard players operation $output.count pk.temp < $input.count pk.temp
execute store result score $input.count pk.temp run data get storage pk.common:data Temp.Items[{Slot:13b,id:"minecraft:quartz_block"}].Count
scoreboard players operation $output.count pk.temp < $input.count pk.temp

# Set the output items
# - Default render (if the writable book has no value)
data remove storage pk.common:data Temp.Item
data modify storage pk.common:data Temp.Item set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;16,11,1,1],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTVlMmIyZWQyOThiNTNjYzg0NzgzY2Q3ODVlYzU3ZGE0OWNlYWFiZGNmZjMxYjI1ZmU1MjU2YjM0MjliNDEyIn19fQ=="}]}},pkOutput:1b},Slot:16b}
# - Store data from the writable book
data modify storage pk.common:data Temp.Item.tag.display.Name set from storage pk.common:data Temp.Items[{Slot:14b,id:"minecraft:writable_book"}].tag.display.Name
data modify storage pk.common:data Temp.Item.tag.SkullOwner.Name set from storage pk.common:data Temp.Items[{Slot:14b,id:"minecraft:writable_book"}].tag.display.Name
data modify storage pk.common:data Temp.Item.tag.SkullOwner.Properties.textures[0].Value set from storage pk.common:data Temp.Items[{Slot:14b,id:"minecraft:writable_book"}].tag.pages[0]
# - Set count
execute store result storage pk.common:data Temp.Item.Count byte 1 run scoreboard players get $output.count pk.temp
# - Place item in the container
data modify block ~ ~ ~ Items append from storage pk.common:data Temp.Item