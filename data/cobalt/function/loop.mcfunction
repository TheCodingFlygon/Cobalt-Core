# Function on block
execute as @a[scores={cobalt.blocked=1..}] at @s run function cobalt:run with entity @s SelectedItem.components.minecraft:custom_data.cobalt.onBlock
execute as @a[scores={cobalt.blocked=1..}] at @s run function cobalt:run with entity @s equipment.offhand.components.minecraft:custom_data.cobalt.onBlock
execute as @a[scores={cobalt.blocked=1..}] at @s run scoreboard players set @s cobalt.blocked 0

# Projectile functions
execute as @e[type=#cobalt:projectiles,tag=!spawned] if predicate cobalt:projectile/commands run function cobalt:item/projectile/spawn
execute as @e[type=#cobalt:projectiles] if predicate cobalt:projectile/travel unless predicate cobalt:projectile/in_ground run function cobalt:item/projectile/travel
execute as @e[type=#minecraft:arrows] if predicate cobalt:projectile/commands run data merge entity @s {weapon:{components:{"minecraft:enchantments":{"cobalt:projectile":1}}}}
execute as @e[type=trident] if predicate cobalt:projectile/commands run data merge entity @s {item:{components:{"minecraft:enchantments":{"cobalt:projectile":1}}}}

# Function on hold/wear
execute as @a[predicate=cobalt:on_hold] at @s run function cobalt:item/hold

