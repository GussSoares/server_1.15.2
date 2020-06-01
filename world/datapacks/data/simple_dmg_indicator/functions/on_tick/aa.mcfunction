execute store result score @s sdi_lhealth run data get entity @s Health

execute store result score @s sdi_cabsorption run data get entity @s AbsorptionAmount
scoreboard players operation @s sdi_lhealth += @s sdi_cabsorption

scoreboard players operation @s sdi_lhealth -= @s sdi_chealth

execute unless score sdi sdi_d_static matches 1 unless score @s sdi_lhealth matches 0 run summon minecraft:armor_stand ^.5 ^-.4 ^ {Tags:["sdi_d","sdi_d_init"],Invisible:1b,Invulnerable:1b,NoGravity:0b,Small:1b,DisabledSlots:2039583,DisplayName:"",Motion:[0.0,0.325,0.0]}
execute if score sdi sdi_d_static matches 1 unless score @s sdi_lhealth matches 0 run summon minecraft:armor_stand ^.5 ^-.4 ^ {Tags:["sdi_d","sdi_d_init"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b,DisabledSlots:2039583,DisplayName:""}
execute if score sdi sdi_d_slowfall matches 1 run effect give @e[tag=sdi_d_init,sort=nearest,limit=1] minecraft:slow_falling 1000000 0 true

execute unless score @s sdi_lhealth matches 0 run setblock ~ 255 ~ birch_sign
execute unless score @s sdi_lhealth matches 0 run tag @s add sdi_te

execute if entity @s[scores={sdi_lhealth=..0}] unless entity @s[nbt={ActiveEffects:[{Id:11b}]}] run data merge block ~ 255 ~ {Text1:'{"score":{"name":"@e[tag=sdi_te]","objective":"sdi_lhealth"},"color":"red"}'}
execute if entity @s[scores={sdi_lhealth=..0}] if entity @s[nbt={ActiveEffects:[{Id:11b}]}] run data merge block ~ 255 ~ {Text1:'{"score":{"name":"@e[tag=sdi_te]","objective":"sdi_lhealth"},"color":"gold"}'}
execute if entity @s[scores={sdi_lhealth=0..}] run data merge block ~ 255 ~ {Text1:'[{"text":"+","color":"green"},{"score":{"name":"@e[tag=sdi_te]","objective":"sdi_lhealth"},"color":"green"}]'}
execute unless score @s sdi_lhealth matches 0 run data modify entity @e[tag=sdi_d_init,sort=nearest,limit=1] CustomName set from block ~ 255 ~ Text1
execute unless score @s sdi_lhealth matches 0 run data merge entity @e[tag=sdi_d_init,sort=nearest,limit=1] {CustomNameVisible:1b}

execute unless score @s sdi_lhealth matches 0 run tag @s remove sdi_te
execute unless score @s sdi_lhealth matches 0 run setblock ~ 255 ~ air

execute store result score @s sdi_chealth run data get entity @s Health
scoreboard players operation @s sdi_chealth += @s sdi_cabsorption