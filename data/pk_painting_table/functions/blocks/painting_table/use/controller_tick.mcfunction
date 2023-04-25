#> pk_painting_table:blocks/painting_table/use/controller_tick

# Set score
scoreboard players operation $temp pk.custom_block.interaction.id = @s pk.custom_block.interaction.id
scoreboard players set $stop pk.temp 0

# Retrieve user
tag @a[predicate=pk_painting_table:scores/custom_block/interaction_id_matching,limit=1] add pk.temp.current

# Check content
function pk_painting_table:blocks/painting_table/use/controller_check_content

# Kill GUI items that can be dropped with the drop key from the container
kill @e[type=item,nbt={Item:{tag:{pkOutput:1b}}},distance=..10]

# If the container is closed: stop the process
execute if block ~ ~ ~ barrel[open=false] run function pk_painting_table:blocks/painting_table/use/stop

# If no player close anymore but block_state open blocked on true (potential issue on some external-tool based services)
execute if score $stop pk.temp matches 0 unless entity @a[tag=pk.temp.current,distance=..10,limit=1] if block ~ ~ ~ barrel[open=true] run function pk_painting_table:blocks/painting_table/use/stop

# Free user
tag @a[tag=pk.temp.current,limit=1] remove pk.temp.current