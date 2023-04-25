#> pk_painting_table:blocks/painting_table/environment/blocks/verify_hoppers

# Change adjacent hoppers facing state
execute if block ~-1 ~ ~ hopper[facing=east] run setblock ~-1 ~ ~ hopper[facing=down]
execute if block ~1 ~ ~ hopper[facing=west] run setblock ~1 ~ ~ hopper[facing=down]
execute if block ~ ~ ~-1 hopper[facing=south] run setblock ~ ~ ~-1 hopper[facing=down]
execute if block ~ ~ ~1 hopper[facing=north] run setblock ~ ~ ~1 hopper[facing=down]
execute if block ~ ~1 ~ hopper[facing=down] run setblock ~ ~1 ~ hopper[facing=south]

# Remove hopper placed below the block
execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy