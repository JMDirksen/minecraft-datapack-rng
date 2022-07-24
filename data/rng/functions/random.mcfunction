# Example generating a random number/score
# Set the max number:
#   scoreboard players set $max random 100
# Run the random function:
#   function rng:random
# Output the random number:
#   tellraw @a ["",{"text":"Random number: "},{"score":{"name":"$random","objective":"random"}}]
#
# The player named "$random" now contains a random number between (including) 1 and 100 in the "random" score.

# Makes sure the max variable has a value (default: generate a number between 1 and 5)
execute unless score $max random matches 1.. run scoreboard players set $max random 5

# Load a bunch of random numbers (random entity positions) in player "$random" his score "random"
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[0]
scoreboard players operation $random random = $temp random
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[1]
scoreboard players operation $random random += $temp random
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[2]
scoreboard players operation $random random += $temp random
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[0]
scoreboard players operation $random random += $temp random
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[1]
scoreboard players operation $random random += $temp random
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[2]
scoreboard players operation $random random += $temp random
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[0]
scoreboard players operation $random random += $temp random
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[1]
scoreboard players operation $random random += $temp random
execute store result score $temp random run data get entity @e[sort=random,limit=1] Pos[2]
scoreboard players operation $random random += $temp random

# Get remainder after division by the max number and then add 1
scoreboard players operation $random random %= $max random
scoreboard players add $random random 1
