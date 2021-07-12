execute store success score #ep.result ep.variable run forceload query 29999999 29999999
execute if score #ep.result ep.variable matches 0 run tellraw @a [{"text": "ASSERT_ERROR!: ", "color": "red"}, {"text": "memory->is_heap_chunk_loaded", "color": "#32CD32"}, {"text": " (Please report this @Fendoran)", "color": "#C0C0C0"}]
