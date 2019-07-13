#Safety Override for Scouting by @Rumbu#5277

summon armor_stand ~ ~ ~ {Invulnerable:1,NoGravity:1,Invisible:1,Small:1,Tags:["scout_marker"]}
execute store result entity @e[tag=scout_marker,limit=1] Pos[0] double 1 run scoreboard players get @s scout_x_store
execute store result entity @e[tag=scout_marker,limit=1] Pos[1] double 1 run scoreboard players get @s scout_y_store
execute store result entity @e[tag=scout_marker,limit=1] Pos[2] double 1 run scoreboard players get @s scout_z_store
execute store result entity @e[tag=scout_marker,limit=1] Rotation[0] float 1 run scoreboard players get @s scout_a_store
execute store result entity @e[tag=scout_marker,limit=1] Rotation[1] float 1 run scoreboard players get @s scout_b_store
data get entity @e[tag=scout_marker,limit=1] Rotation
execute as @e[tag=scout_marker] at @s run tp @s ~0.5 ~0.5 ~0.5
execute if entity @e[tag=scout_marker] run gamemode survival @s
execute if entity @e[tag=scout_marker] run tp @s @e[tag=scout_marker,limit=1]
execute if entity @e[tag=scout_marker] as @e[tag=scout_marker,limit=1] at @s run tp @p ~ ~ ~ ~ ~
execute if entity @e[tag=scout_marker] run tag @s remove scout
execute if entity @e[tag=scout_marker] run scoreboard players set @s scout 0
execute unless entity @e[tag=scout_marker] run tellraw @s {"text":"You are out of range, please move closer to your original location","color":"yellow"}
kill @e[tag=scout_marker]
