#kill @e[tag=Clocktower_Tunnel]
#summon minecraft:item_display 116 65.5 404.0 {Tags:["Clocktower_Tunnel"],item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_model_data":{strings:["clocktower_tunnel"]}}}}
#data modify entity @e[tag=Clocktower_Tunnel,limit=1] transformation.scale set value [16f,16f,16f]
#data modify entity @e[tag=Clocktower_Tunnel,limit=1] transformation.left_rotation set value [-1f,1f,0f,0f]

execute as @a store result score @s coord_z run data get entity @s Pos[2] 100
execute as @e[tag=Clocktower_Tunnel] unless entity @a[x=119,y=63,z=421,dx=-6,dy=5,dz=-36] run scoreboard players set @s _ClocktowerTunnelHoldVariable 0
execute as @e[tag=Clocktower_Tunnel] if entity @a[x=119,y=63,z=421,dx=-6,dy=5,dz=-36] run scoreboard players set @s _ClocktowerTunnelHoldVariable 42100
execute as @e[tag=Clocktower_Tunnel] if entity @a[x=119,y=63,z=421,dx=-6,dy=5,dz=-36] run scoreboard players operation @e[tag=Clocktower_Tunnel,limit=1] _ClocktowerTunnelHoldVariable -= @a[x=119,y=63,z=421,dx=-6,dy=5,dz=-36,limit=1] coord_z
execute as @e[tag=Clocktower_Tunnel] run scoreboard players set @s _ClocktowerTunnelDynamicVariable 194595
execute as @e[tag=Clocktower_Tunnel] if entity @a[x=119,y=63,z=421,dx=-6,dy=5,dz=-36] run scoreboard players operation @e[tag=Clocktower_Tunnel,limit=1] _ClocktowerTunnelHoldVariable *= @s _ClocktowerTunnelDynamicVariable
execute as @e[tag=Clocktower_Tunnel] run scoreboard players set @s _ClocktowerTunnelDynamicVariable -10000000
execute as @e[tag=Clocktower_Tunnel] if entity @a[x=119,y=63,z=421,dx=-6,dy=5,dz=-36] run scoreboard players operation @e[tag=Clocktower_Tunnel,limit=1] _ClocktowerTunnelHoldVariable /= @s _ClocktowerTunnelDynamicVariable
execute as @e[tag=Clocktower_Tunnel] store result entity @s transformation.left_rotation[0] float 0.01 run scoreboard players get @s _ClocktowerTunnelHoldVariable

execute as @e[tag=Clocktower_Tunnel] if entity @a[x=115,y=63,z=422,dx=2,dy=4,dz=3] run data modify entity @e[tag=Clocktower_Tunnel,limit=1] transformation.left_rotation set value [0f,1f,0f,0f]
execute as @e[tag=Clocktower_Tunnel] if entity @a[x=117,y=63,z=384,dx=-2,dy=4,dz=-3] run data modify entity @e[tag=Clocktower_Tunnel,limit=1] transformation.left_rotation set value [-1f,1f,0f,0f]