kill @e[tag=sdi]

scoreboard objectives remove sdi_chealth
scoreboard objectives remove sdi_lhealth
scoreboard objectives remove sdi_cabsorption

scoreboard objectives remove sdi_d_lifetime

scoreboard objectives remove sdi_d_alifetime
scoreboard objectives remove sdi_d_static
scoreboard objectives remove sdi_d_slowfall

tellraw @s ["",{"text":"Simple Damage Indicator disabled and uninstalled! To reactivate datapack, run ","color":"red"},{"text":"/datapack enable \"file/Simple Damage Indicator\"","underlined":true,"color":"red","clickEvent":{"action":"suggest_command","value":"/datapack enable \"file/Simple Damage Indicator\""},"hoverEvent":{"action":"show_text","value":{"text":"Click to run command"}}},{"text":" and ","color":"red"},{"text":"/reload","underlined":true,"color":"red","clickEvent":{"action":"suggest_command","value":"/reload"},"hoverEvent":{"action":"show_text","value":{"text":"Click to run command"}}}]

datapack disable "file/Simple Damage Indicator"