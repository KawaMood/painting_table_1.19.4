#> pk_painting_table:blocks/painting_table/remove/trigger

# Drop a Painting Table item
summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Painting Table","italic": false,"color": "white"}',Lore:['{"text":"Painting Table","italic": false,"color": "gray"}']},HideFlags:1,pkCustomBlockPlacer:1b,pkPaintingTable:1b,SkullOwner:{Name:"%pk.custom_block.painting_table",Id:[I;16,11,3,2],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU2OTc0ODcwNGNjZjQ3MzI0YTA4NjJjNGI4YzJlNWM0OTBiZTIwNzdiMjIxMjA2NjQ4NjQ2YzVlZTlhYWYxYSJ9fX0="}]}},CustomModelData:16110031}}} 

# Kill undesirable dropped items
execute align xyz run kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Painting Table"}'}}}},dx=0,limit=1]
execute align xyz run kill @e[type=item,nbt={Item:{tag:{pkGUI:1b}}},dx=0]

# Remove stored info
function pk_painting_table:blocks/painting_table/remove/block_info/update

# Remove all id-matching components
kill @e[type=#pk_painting_table:painting_table_component,tag=pk.pa_ta.painting_table.component,predicate=pk_painting_table:scores/custom_block/component_id_matching,distance=..10]

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"text": "Painting Table has been removed"}]