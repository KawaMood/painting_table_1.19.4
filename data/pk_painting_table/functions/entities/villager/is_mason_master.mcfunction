#> pk_painting_table:entities/villager/is_mason_master

# Set Painting Table offer
data modify entity @s Offers.Recipes append value {maxUses:12,buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Painting Table","italic": false,"color": "white"}',Lore:['{"text":"Painting Table","italic": false,"color": "gray"}']},HideFlags:1,pkCustomBlockPlacer:1b,pkPaintingTable:1b,SkullOwner:{Name:"%pk.custom_block.painting_table",Id:[I;16,11,3,2],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU2OTc0ODcwNGNjZjQ3MzI0YTA4NjJjNGI4YzJlNWM0OTBiZTIwNzdiMjIxMjA2NjQ4NjQ2YzVlZTlhYWYxYSJ9fX0="}]}},CustomModelData:16110031}},xp:30,priceMultiplier:0.05f}

# Stop ticking the villager
tag @s add pk.pa_ta.villager.ignore