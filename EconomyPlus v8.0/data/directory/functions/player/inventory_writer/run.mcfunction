#> input > raw_inventory

data modify storage ep:memory hotbar set value []
data modify storage ep:memory backpack set value []
data modify storage ep:memory armor set value []
data modify storage ep:memory offhand set value []

function directory:player/inventory_writer/sort

function directory:player/inventory_writer/save/hotbar
function directory:player/inventory_writer/save/backpack
function directory:player/inventory_writer/save/armor
function directory:player/inventory_writer/save/offhand
