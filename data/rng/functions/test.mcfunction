tellraw @a ["",{"text":"Generating 3 random numbers between 1 and "},{"score":{"name":"$max","objective":"random"}}]
function rng:random
tellraw @a ["",{"text":"Random number 1: "},{"score":{"name":"$random","objective":"random"},"color":"red"}]
function rng:random
tellraw @a ["",{"text":"Random number 2: "},{"score":{"name":"$random","objective":"random"},"color":"red"}]
function rng:random
tellraw @a ["",{"text":"Random number 3: "},{"score":{"name":"$random","objective":"random"},"color":"red"}]
