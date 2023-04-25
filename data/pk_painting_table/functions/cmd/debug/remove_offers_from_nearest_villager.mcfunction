#> pk_painting_table:cmd/debug/remove_offers_from_nearest_villager
# Help operators to remove current data pack's custom offers if they want to get ride of them

data remove entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[{sell:{tag:{pkPaintingTable:1b}}}]