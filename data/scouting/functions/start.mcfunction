#Scouting gamemode function for Scouting by @Rumbu#5277

#Saves locational data
execute store result score @s scout_x_store run data get entity @s Pos[0]
execute store result score @s scout_y_store run data get entity @s Pos[1]
execute store result score @s scout_z_store run data get entity @s Pos[2]
execute store result score @s scout_a_store run data get entity @s Rotation[0]
execute store result score @s scout_b_store run data get entity @s Rotation[1]
#Obstruction error check
scoreboard players set @s scout_error 0
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #scouting:stand_in run scoreboard players add @s scout_error 1
execute positioned ~ ~0.5 ~ unless block ~ ~1 ~ #scouting:stand_in run scoreboard players add @s scout_error 1
execute positioned ~ ~0.5 ~ if block ~ ~-1 ~ #scouting:no_stand_on run scoreboard players add @s scout_error 1
execute positioned ~ ~0.5 ~ if block ~ ~-1 ~ lava run scoreboard players add @s scout_error 1
execute if score @s scout_error matches 1..3 run tellraw @s {"text":"Your location is currently obstructed or unsafe","color":"yellow"}
execute if score @s scout_error matches 4.. run tellraw @s {"text":"There has been an unexpected error","color":"red"}
#Tags player and changes gamemode
execute if score @s scout_error matches 0 run tag @s add scout
execute if score @s scout_error matches 0 run gamemode spectator @s
