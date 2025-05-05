execute as @s[tag=!used] run function cobalt:run with entity @s weapon.components.minecraft:custom_data.cobalt.projectile.onHitBlock
execute as @s[tag=!used] run function cobalt:run with entity @s item.components.minecraft:custom_data.cobalt.projectile.onHitBlock
tag @s add used