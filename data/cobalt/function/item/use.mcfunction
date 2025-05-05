advancement revoke @s only cobalt:item/use

# Execute functions for items without shift usage
execute unless data entity @s SelectedItem.components.minecraft:custom_data.cobalt.onShiftUse run function cobalt:run with entity @s SelectedItem.components.minecraft:custom_data.cobalt.onUse

# For items with shift usage, check if user is crouching
execute if data entity @s SelectedItem.components.minecraft:custom_data.cobalt.onShiftUse unless predicate cobalt:sneaking run function cobalt:run with entity @s SelectedItem.components.minecraft:custom_data.cobalt.onUse
execute if data entity @s SelectedItem.components.minecraft:custom_data.cobalt.onShiftUse if predicate cobalt:sneaking run function cobalt:run with entity @s SelectedItem.components.minecraft:custom_data.cobalt.onShiftUse