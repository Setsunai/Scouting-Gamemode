# Find orginal location

	#tp armorstand between dimensions.
	summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1b,Invisible:1b,Tags:["scout_marker"]}
	execute if score @s[scores={scout_di=19}] scout_di matches 19 in minecraft:overworld run tp @e[tag=scout_marker] ~ ~ ~
	execute if score @s[scores={scout_di=17}] scout_di matches 17 in minecraft:the_end run tp @e[tag=scout_marker] ~ ~ ~
	execute if score @s[scores={scout_di=20}] scout_di matches 20 in minecraft:the_nether run tp @e[tag=scout_marker] ~ ~ ~
	#tp at Coordinates.
	execute store result entity @e[tag=scout_marker,limit=1] Pos[0] double 1 run scoreboard players get @s scout_x
	execute store result entity @e[tag=scout_marker,limit=1] Pos[1] double 1 run scoreboard players get @s scout_y
	execute store result entity @e[tag=scout_marker,limit=1] Pos[2] double 1 run scoreboard players get @s scout_z
	execute store result entity @e[tag=scout_marker,limit=1] Rotation[0] float 1 run scoreboard players get @s scout_a
	execute store result entity @e[tag=scout_marker,limit=1] Rotation[1] float 1 run scoreboard players get @s scout_b

# Move to location
	execute at @e[tag=scout_marker] run tp @s ~.5 ~.5 ~.5 ~ ~
	execute at @s run kill @e[tag=scout_marker,limit=1]

# Change gamemode
	gamemode survival

# Remove forceload
	forceload remove ~ ~ ~ ~
