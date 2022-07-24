# Example generating a random number/score

Set the max number:
```
/scoreboard players set $max random 100
```

Run the random function:
```
/function rng:random
```

The player named "$random" now contains a random number between (including) 1 and 100 in the "random" score.  

Output the random number:
```
/tellraw @a ["",{"text":"Random number: "},{"score":{"name":"$random","objective":"random"}}]
```

You could also use `/function rng:test` to test/generate 3 random numbers with the before set max, it will output something like:
```
Set [random] for $max to 100
Generating 3 random numbers between 1 and 100
Random number 1: 62
Random number 2: 49
Random number 3: 95
Executed 79 commands from function 'rng:test'
```
