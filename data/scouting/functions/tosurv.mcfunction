# Find orginal location
	summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1b,Invisible:1b,Tags:["scout_marker"]}
	execute store result entity @e[tag=scout_marker,limit=1] Pos[0] double 1 run scoreboard players get @s scout_x
	execute store result entity @e[tag=scout_marker,limit=1] Pos[1] double 1 run scoreboard players get @s scout_y
	execute store result entity @e[tag=scout_marker,limit=1] Pos[2] double 1 run scoreboard players get @s scout_z
	execute store result entity @e[tag=scout_marker,limit=1] Rotation[0] float 1 run scoreboard players get @s scout_a
	execute store result entity @e[tag=scout_marker,limit=1] Rotation[1] float 1 run scoreboard players get @s scout_b

# Move to location
	execute at @e[tag=scout_marker] run tp @s ~ ~ ~ ~ ~
	kill @e[tag=scout_marker]

# Change gamemode
	gamemode survival
