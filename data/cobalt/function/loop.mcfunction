# Function on block
execute as @a[scores={cobalt.blocked=1..}] at @s run function cobalt:run with entity @s SelectedItem.components.minecraft:custom_data.onBlock
execute as @a[scores={cobalt.blocked=1..}] at @s run function cobalt:run with entity @s equipment.offhand.components.minecraft:custom_data.onBlock
execute as @a[scores={cobalt.blocked=1..}] at @s run scoreboard players set @s cobalt.blocked 0

# Projectile functions
execute as @e[type=#minecraft:arrows] if predicate cobalt:projectile_commands run data merge entity @s {weapon:{components:{"minecraft:enchantments":{"cobalt:projectile":1}}}}
execute as @e[type=trident] if predicate cobalt:projectile_commands run data merge entity @s {item:{components:{"minecraft:enchantments":{"cobalt:projectile":1}}}}

# Function on hold/wear
execute as @a[predicate=cobalt:on_hold] at @s run function cobalt:item/hold

