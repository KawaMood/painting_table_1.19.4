#> pk_painting_table:blocks/painting_table/use/player_split_output

# Skip other checks
scoreboard players set $skip_check pk.temp 1

# Clear output item from user
clear @a[tag=pk.temp.current,limit=1] player_head{pkOutput:1b}

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current,limit=1]","color": "gray"},{"text": " split output items from Painting Table"}]