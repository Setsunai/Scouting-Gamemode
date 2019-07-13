#Survival function for Scouting by @Rumbu#5277

#Find orginal location
summon armor_stand ~ ~ ~ {Invulnerable:1,NoGravity:1,Invisible:1,Small:1,Tags:["scout_marker"]}
execute store result entity @e[tag=scout_marker,limit=1] Pos[0] double 1 run scoreboard players get @s scout_x_store
execute store result entity @e[tag=scout_marker,limit=1] Pos[1] double 1 run scoreboard players get @s scout_y_store
execute store result entity @e[tag=scout_marker,limit=1] Pos[2] double 1 run scoreboard players get @s scout_z_store
execute store result entity @e[tag=scout_marker,limit=1] Rotation[0] float 1 run scoreboard players get @s scout_a_store
execute store result entity @e[tag=scout_marker,limit=1] Rotation[1] float 1 run scoreboard players get @s scout_b_store
execute as @e[tag=scout_marker] at @s run tp @s ~0.5 ~0.5 ~0.5
#Obstruction error check
scoreboard players set @s scout_error 0
execute at @e[type=minecraft:armor_stand] unless block ~ ~ ~ #scouting:stand_in run scoreboard players add @s scout_error 1
execute at @e[type=minecraft:armor_stand] unless block ~ ~1 ~ #scouting:stand_in run scoreboard players add @s scout_error 1
execute at @e[type=minecraft:armor_stand] if block ~ ~-1 ~ #scouting:no_stand_on run scoreboard players add @s scout_error 1
execute at @e[type=minecraft:armor_stand] if block ~ ~-1 ~ lava run scoreboard players add @s scout_error 1
execute if score @s scout_error matches 0 run tp @s @e[tag=scout_marker,limit=1]
execute if score @s scout_error matches 0 as @e[tag=scout_marker,limit=1] at @s run tp @p ~ ~ ~ ~ ~
execute if score @s scout_error matches 1..3 run tellraw @s ["",{"text":"Your spawn location is obstructed or unsafe ","color":"yellow"},{"text":"[Override]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger scout set -1"},"hoverEvent":{"action":"show_text","value":"You will be returned to survival mode despite the invalid spawn location"}}]
execute if score @s scout_error matches 4.. run tellraw @s {"text":"There has been an unexpected error","color":"red"}
#Resets gamemode
execute if score @s scout_error matches 0 if entity @e[tag=scout_marker] run gamemode survival @s
execute unless entity @e[tag=scout_marker] run tellraw @s {"text":"You are out of range, please move closer to your original location","color":"yellow"}
#Removes tag
execute if score @s scout_error matches 0 if entity @e[tag=scout_marker] run tag @s remove scout
execute if entity @e[tag=scout_marker] as @a[scores={scout=1}] run scoreboard players set @s scout 0
kill @e[tag=scout_marker]
