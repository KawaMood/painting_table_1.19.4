#> pk_painting_table:base/update/revisions/5/blocks_list_update_recursive

# Update Pos data format
data modify storage pk.common:data Temp.Current.Item set from storage pk.common:data Temp.Array.Search[-1]
execute store result storage pk.common:data Temp.Current.Item.x int 1 run data get storage pk.common:data Temp.Current.Item.Pos[0]
execute store result storage pk.common:data Temp.Current.Item.y int 1 run data get storage pk.common:data Temp.Current.Item.Pos[1]
execute store result storage pk.common:data Temp.Current.Item.z int 1 run data get storage pk.common:data Temp.Current.Item.Pos[2]

# Update Dimension data format
data modify storage pk.common:data Temp.Dimension.id set from storage pk.common:data Temp.Current.Item.Dimension
data remove storage pk.common:data Temp.Current.Item.Dimension
data modify storage pk.common:data Temp.Current.Item.Dimension.id set from storage pk.common:data Temp.Dimension.id

# Set current item to the new array
data modify storage pk.common:data Temp.Array.New prepend from storage pk.common:data Temp.Current.Item

# Recursive call
data remove storage pk.common:data Temp.Array.Search[-1]
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_painting_table:base/update/revisions/5/blocks_list_update_recursive