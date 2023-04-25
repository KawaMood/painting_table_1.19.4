#> pk_painting_table:base/update/revisions/3
# V.2.0.2

# Change reference for the list of blocks
data modify storage pk.pa_ta:data Blocks.PaintingTables set from storage pk.pa_ta:data Blocks.PaintingTable
data remove storage pk.pa_ta:data Blocks.PaintingTable

# Other changes:
# - Fixed a GUI items duplication exploit through using the key drop hovering a GUI item directly in the container block
# - Added droppers check in Painting Tables environment controls
# - Changed "functions/helpers/" to "functions/packages/"
# - Changed some functions names in the dimension marker package
# - Added loading and uninstalling process from packages