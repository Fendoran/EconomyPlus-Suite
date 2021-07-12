execute rotated ~ ~0 positioned ^ ^ ^5.01 run function directory:floater/visualizer/flame
execute rotated ~ ~6 positioned ^ ^ ^5.01 run function directory:floater/visualizer/flame
execute rotated ~ ~12 positioned ^ ^ ^5.01 run function directory:floater/visualizer/flame
execute rotated ~ ~18 positioned ^ ^ ^5.01 run function directory:floater/visualizer/flame

scoreboard players remove #ep.iteration ep.variable 1
execute if score #ep.iteration ep.variable matches 1.. rotated ~ ~24 run function directory:floater/visualizer/vertical
