execute as @s[tag=!used] run function cobalt:run with entity @s weapon.components.minecraft:custom_data.projectile.onHitMob
execute as @s[tag=!used] run function cobalt:run with entity @s item.components.minecraft:custom_data.projectile.onHitMob
tag @s add used