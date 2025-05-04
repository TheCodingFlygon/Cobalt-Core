advancement revoke @s only cobalt:item/use

# Execute functions for items without shift usage
execute unless data entity @s SelectedItem.components.minecraft:custom_data.onShiftUse run function cobalt:run with entity @s SelectedItem.components.minecraft:custom_data.onUse

# For items with shift usage, check if user is crouching
execute if data entity @s SelectedItem.components.minecraft:custom_data.onShiftUse unless predicate cobalt:sneaking run function cobalt:run with entity @s SelectedItem.components.minecraft:custom_data.onUse
execute if data entity @s SelectedItem.components.minecraft:custom_data.onShiftUse if predicate cobalt:sneaking run function cobalt:run with entity @s SelectedItem.components.minecraft:custom_data.onShiftUse