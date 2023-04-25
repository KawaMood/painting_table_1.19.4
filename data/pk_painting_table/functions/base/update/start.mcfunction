#> pk_painting_table:base/update/start
# Update the current data pack if needed

# Update depending on the current version 
# - Changes from V.2.0.2
execute if score $pk.pa_ta.version pk.value matches ..2 run function pk_painting_table:base/update/revisions/3

# Set the data pack current version score
scoreboard players set $pk.pa_ta.version pk.value 5
data modify storage pk.common:data Datapacks[{Name:"Painting Table"}].Version set value "2.0.4"