# Enemies nearby error
	execute if entity @e[type=#scouting:hostile,distance=..12] run tellraw @s {"text":"Those monsters seem pretty dangerous","color":"yellow"}

# Obstruction errors
	execute positioned ~ ~0.5 ~ if block ~ ~-1 ~ #scouting:no_stand_on run tellraw @s {"text":"You should really wait until you're on some solid ground","color":"yellow"}
	execute positioned ~ ~0.5 ~ if block ~ ~-1 ~ lava run tellraw @s {"text":"That lava doesn't look too safe","color":"yellow"}
	execute positioned ~ ~0.5 ~ if block ~ ~ ~ water run tellraw @s {"text":"This doesn't seem like a good idea while you're wet","color":"yellow"}

# Switch gamemodes
	execute if entity @s[nbt={OnGround:1b}] unless entity @e[type=#scouting:hostile,distance=..12] unless block ~ ~-1 ~ #scouting:no_stand_on unless block ~ ~-1 ~ lava unless block ~ ~ ~ water run function scouting:toscout

# Reset scout trigger
	execute if entity @s[nbt=!{OnGround:1b}] run scoreboard players set @s scout 0
	execute if entity @e[type=#scouting:hostile,distance=..12] run scoreboard players set @s scout 0
	execute positioned ~ ~0.5 ~ if block ~ ~-1 ~ #scouting:no_stand_on run scoreboard players set @s scout 0
	execute positioned ~ ~0.5 ~ if block ~ ~-1 ~ lava run scoreboard players set @s scout 0
	execute positioned ~ ~0.5 ~ if block ~ ~ ~ water run scoreboard players set @s scout 0	