#> pk_painting_table:blocks/painting_table/place/trigger

# Increment the component id score
scoreboard players add $next pk.custom_block.component.id 1

# Set block
setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"italic":false,"text":"Painting Table"}',Items:[{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{pkCustomBlock:1b,pkGUI:1b,pkPaintingTable:1b,pkInUse:0b},Slot:0b}]}

# Set controller
execute summon marker run function pk_painting_table:blocks/painting_table/place/prepare_entities/controller_initialize

# Set decorative entities
execute positioned ~ ~1 ~ summon item_display run function pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/1
execute positioned ~ ~1 ~ summon item_display run function pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/2
execute positioned ~ ~1 ~ summon item_display run function pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/3
execute positioned ~ ~1 ~ summon item_display run function pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/4
execute positioned ~ ~1 ~ summon item_display run function pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/5
execute positioned ~ ~1 ~ summon item_display run function pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/6
execute positioned ~ ~1 ~ summon item_display run function pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/7
execute positioned ~ ~1 ~ summon item_display run function pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/8

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current,limit=1]","color": "gray"},{"text": " placed Painting Table"}]