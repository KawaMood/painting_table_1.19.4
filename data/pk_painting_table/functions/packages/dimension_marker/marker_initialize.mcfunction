#> pk_painting_table:packages/dimension_marker/marker_initialize

# Increment dimension id
scoreboard players add $next pk.dimension.id 1
scoreboard players operation @s pk.dimension.id = $next pk.dimension.id

# Add tag
tag @s add pk.dimension.marker

# Store dimension id in data
execute store result entity @s data.Dimension.id int 1 run scoreboard players get $next pk.dimension.id