execute as @s[tag=!used] run function cobalt:run with entity @s weapon.components.minecraft:custom_data.projectile.onHitBlock
execute as @s[tag=!used] run function cobalt:run with entity @s item.components.minecraft:custom_data.projectile.onHitBlock
tag @s add used