# Run commands from custom item data!
Cobalt core is a datapack that allows for items to run commands from custom data!

**To Use**:
Enter the command you want to run into the proper custom data path:
```json
{
    "components": {
        "custom_data": {
            "cobalt": {
                "onUse": {
                    "command": "say Hello World!"
                }
            }
        }
    }
}
```
# 
Below are all current uses for Cobalt Core, along with example commands:

`onUse`: runs on item use when in mainhand (item must have `consumable` component with `consume_seconds:2147483647,animation:"block"`)
```mcfunction
/give @s stick[consumable={consume_seconds:2147483647,animation:"block"},custom_data={cobalt:{onUse:{command:"say Hello world!"}}}]
```
`onShiftUse`: runs on item use when in mainhand while sneaking (same requirements as `onUse`)
```mcfunction
/give @s nether_star[consumable={consume_seconds:2147483647,animation:"block"},custom_data={cobalt:{onShiftUse:{command:"say Goodbye world!"}}}]
```
`onAttack`: runs upon successfully attacking a mob when in mainhand
```mcfunction
/give @s iron_sword[custom_data={cobalt:{onAttack:{command:"effect give @n[nbt={HurtTime:10s},distance=..8] poison"}}}]
```
`onBlock`: runs upon successfully blocking damage when held (item must have `blocks_attack` component (1.21.5+) or be a shield)
```mcfunction
/give @s shield[custom_data={cobalt:{onBlock:{command:"execute on attacker at @s run summon lightning_bolt"}}}]
```
`onDamage`: runs upon taking damage from a mob when held or worn
```mcfunction
/give @s diamond_chestplate[custom_data={cobalt:{onDamage:{command:"execute on attacker run damage @s 2"}}}]
```
`projectile.onHitMob`: runs when a thrown or shot projectile from this item hits a mob
```mcfunction
/give @s crossbow[custom_data={cobalt:{projectile:{onHitMob:{command:"summon tnt ~ ~ ~ {fuse:0}"}}}}]
```
`projectile.onHitBlock`: runs when a thrown or shot projectile from this item hits a block
```mcfunction
/give @s bow[custom_data={cobalt:{projectile:{onHitBlock:{command:"execute on origin run tp @s ~ ~ ~"}}}}]
```
`onHold`: runs every tick when held or worn
```mcfunction
/give @s lantern[custom_data={cobalt:{onHold:{command:"effect give @e[distance=..50] glowing 1 0 true"}}}]
```
`projectile.onSpawn`: runs for a single tick when the projectile is spawned
```mcfunction
/give @s trident[custom_data={cobalt:{projectile:{onSpawn:{command:"summon lightning_bolt"}}}}]
```
`projectile.onTravel`: runs for every tick the projectile is travelling
```mcfunction
/give @s bow[custom_data={cobalt:{projectile:{onTravel:{command:"execute on origin run tp @s ~ ~ ~"}}}}]
```