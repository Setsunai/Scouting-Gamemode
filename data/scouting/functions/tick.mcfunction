#Main function for Scouting by @Rumbu#5277

execute as @a[scores={scout=-1},tag=scout] run function scouting:override
#Runs survival function
execute as @a[scores={scout=1},tag=scout] as @s run function scouting:stop
#Movement error
execute as @a[scores={scout=1},tag=!scout,nbt=!{OnGround:1b}] run tellraw @s {"text":"You are unable to go into scouting mode while in the air","color":"yellow"}
#Enemies nearby error
execute as @a[scores={scout=1},tag=!scout] if entity @e[type=#scouting:hostile,distance=..10] run tellraw @s {"text":"You are unable to go into scouting mode while enemies are nearby","color":"yellow"}
#Runs scout function
execute as @a[scores={scout=1},tag=!scout,nbt={OnGround:1b}] at @s unless entity @e[type=#scouting:hostile,distance=..10] run function scouting:start
#Resets all trigger scores to 0
execute as @a[scores={scout=1}] run scoreboard players set @s scout 0
#Enables trigger for all players
scoreboard players enable @a scout
