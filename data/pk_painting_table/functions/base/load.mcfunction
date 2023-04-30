#> pk_painting_table:base/load
# Main load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Settings:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Common:
# - $logs.load pk.value | default: (undefined) | <=0 = mask | (undefined) or >=1 = show load logs
# - $logs.tick pk.value | default: (undefined) | (undefined) or <=0 = mask | >=1 = show tick logs
# - $custom_block.light_update pk.value | default: (undefined) | <=0 = disable | (undefined) or >=1 = enable custom blocks light update

# Concerning this datapack:
# - $logs.datapack.pa_ta pk.value | default: (undefined) | (undefined) or <=0 = masks | >=1 = show Painting Table logs

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Locations:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Location -30000000 0 1611 | Used in any custom dimension by the dimension_marker helper (need to stay forceloaded)

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define storage
# - pk.common.data | Used to store installed PK Datapacks names and version and for temp data manipulation
# - pk.pa_ta:data Block | Used to store features of a specific custom block from this data pack
# - pk.pa_ta:data Blocks | Used to store the list of the placed custom block from this data pack
#declare storage pk.common:data
#declare storage pk.pa_ta:data

# Initialize PK data packs storage if needed
execute unless data storage pk.common:data Datapacks[{}] run data modify storage pk.common:data Datapacks set value []

# Add current data pack into the PK data packs storage if needed
execute unless data storage pk.common:data Datapacks[{Name:"Painting Table"}] run data modify storage pk.common:data Datapacks append value {Name:"Painting Table"}

# Initialize the storage used to store painting tables location
execute unless data storage pk.pa_ta:data Blocks.PaintingTables[{}] run data modify storage pk.pa_ta:data Blocks.PaintingTables set value []
function pk_painting_table:blocks/painting_table/helpers/gui_initialize

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define objectives that are common to each PK data pack:
# - pk.temp: only concerns temp values that can be cleared at any time without risks
# - pk.value: used for fixed values and variable settings, and won't be cleared on uninstallation until there is no PK data pack anymore
# - pk.dimension.id: used to store custom dimensions id
# - pk.custom_block.<path>: all scores objectives shared with all PK data packs custom blocks
scoreboard objectives add pk.temp dummy
scoreboard objectives add pk.value dummy
scoreboard objectives add pk.custom_block.interaction.id dummy
scoreboard objectives add pk.custom_block.component.id dummy

# Score relative to the current data pack
scoreboard objectives add pk.pa_ta.has_output_items dummy
scoreboard objectives add pk.pa_ta.has_output_items_prev dummy

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Helpers:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Dimension marker
function pk_painting_table:packages/dimension_marker/load
# RNG
function pk_painting_table:packages/random/load
# Air toggling
function pk_painting_table:packages/air_toggling/load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Updates:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $pk.pa_ta.version pk.value matches 5 run function pk_painting_table:base/update/start

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Logs:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{"text": "Loaded ","color": "yellow"},{"text": "PK Painting Table ","color": "aqua","bold": true},{"text": "(V.","color": "aqua"},{"nbt":"Datapacks[{Name:\"Painting Table\"}].Version", "storage": "pk.common:data","color": "aqua"},{"text": ")","color": "aqua"},{"text": " successfully"}]