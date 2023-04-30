#> pk_painting_table:packages/air_toggling/context_search
# Using a scheduled function avoid to uncessary tick entities
# It is not important if the entity that is supposed to be air toggled become unloaded, since the process is only used to force client render update

execute as @e[type=#pk_painting_table:air_toggling,tag=pk.pa_ta.air_toggling] run function pk_painting_table:packages/air_toggling/context_trigger