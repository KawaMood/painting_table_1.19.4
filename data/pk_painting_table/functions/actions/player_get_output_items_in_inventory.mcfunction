#> pk_painting_table:actions/player_get_output_items_in_inventory

# Revoke advancement
advancement revoke @s only pk_painting_table:interactions/get_output_items_in_inventory

# Completly remove the pkOutput data from the output items stack
summon armor_stand ~ ~ ~ {Marker:1b,Tags:["pk.holder"],HandItems:[{},{}]}
data modify entity @e[type=armor_stand,tag=pk.holder,distance=..0.1,limit=1] HandItems[0] set from entity @s Inventory[{tag:{pkOutput:1b}}]
data remove entity @e[type=armor_stand,tag=pk.holder,distance=..0.1,limit=1] HandItems[0].tag.pkOutput

# Replace items in the right slot (armor slots check not required)
item replace entity @s[nbt={Inventory:[{Slot:-106b,tag:{pkOutput:1b}}]}] weapon.offhand from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:0b,tag:{pkOutput:1b}}]}] hotbar.0 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:1b,tag:{pkOutput:1b}}]}] hotbar.1 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:2b,tag:{pkOutput:1b}}]}] hotbar.2 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:3b,tag:{pkOutput:1b}}]}] hotbar.3 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:4b,tag:{pkOutput:1b}}]}] hotbar.4 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:5b,tag:{pkOutput:1b}}]}] hotbar.5 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:6b,tag:{pkOutput:1b}}]}] hotbar.6 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:7b,tag:{pkOutput:1b}}]}] hotbar.7 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:8b,tag:{pkOutput:1b}}]}] hotbar.8 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:9b,tag:{pkOutput:1b}}]}] inventory.0 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:10b,tag:{pkOutput:1b}}]}] inventory.1 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:11b,tag:{pkOutput:1b}}]}] inventory.2 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:12b,tag:{pkOutput:1b}}]}] inventory.3 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:13b,tag:{pkOutput:1b}}]}] inventory.4 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:14b,tag:{pkOutput:1b}}]}] inventory.5 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:15b,tag:{pkOutput:1b}}]}] inventory.6 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:16b,tag:{pkOutput:1b}}]}] inventory.7 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:17b,tag:{pkOutput:1b}}]}] inventory.8 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:18b,tag:{pkOutput:1b}}]}] inventory.9 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:19b,tag:{pkOutput:1b}}]}] inventory.10 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:20b,tag:{pkOutput:1b}}]}] inventory.11 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:21b,tag:{pkOutput:1b}}]}] inventory.12 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:22b,tag:{pkOutput:1b}}]}] inventory.13 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:23b,tag:{pkOutput:1b}}]}] inventory.14 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:24b,tag:{pkOutput:1b}}]}] inventory.15 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:25b,tag:{pkOutput:1b}}]}] inventory.16 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:26b,tag:{pkOutput:1b}}]}] inventory.17 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:27b,tag:{pkOutput:1b}}]}] inventory.18 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:28b,tag:{pkOutput:1b}}]}] inventory.19 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:29b,tag:{pkOutput:1b}}]}] inventory.20 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:30b,tag:{pkOutput:1b}}]}] inventory.21 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:31b,tag:{pkOutput:1b}}]}] inventory.22 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:32b,tag:{pkOutput:1b}}]}] inventory.23 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:33b,tag:{pkOutput:1b}}]}] inventory.24 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:34b,tag:{pkOutput:1b}}]}] inventory.25 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand
item replace entity @s[nbt={Inventory:[{Slot:35b,tag:{pkOutput:1b}}]}] inventory.26 from entity @e[type=armor_stand,tag=pk.holder,distance=..1,limit=1] weapon.mainhand

# Remove the armor stand
kill @e[type=armor_stand,tag=pk.holder,distance=..0.1]

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@s","color": "gray"},{"text": " get output items in inventory"}]