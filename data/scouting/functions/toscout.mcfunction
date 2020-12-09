# Saves locational data
	execute store result score @s scout_x run data get entity @s Pos[0]
	execute store result score @s scout_y run data get entity @s Pos[1]
	execute store result score @s scout_z run data get entity @s Pos[2]
	execute store result score @s scout_a run data get entity @s Rotation[0]
	execute store result score @s scout_b run data get entity @s Rotation[1]
	execute store result score @s scout_di run data get entity @s Dimension
	
# Forceload chunk
	forceload add ~ ~ ~ ~

# Change gamemode
	gamemode spectator
	scoreboard players set @s scout 2
