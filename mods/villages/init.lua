
minetest.register_node("villages:colony_deed", {
	description = "Villager Colony Deed",
	tiles = {"villages_deed.png"},
	inventory_image = "villages_deed.png",
	wield_image = "villages_deed.png",
	drawtype = "signlike",
	paramtype = "light",
	paramtype2 = "wallmounted",
	selection_box = {type="wallmounted",},
	groups = {crumbly=1, dig_immediate=3, oddly_breakable_by_hand=1},
	--on_construct = function(pos, node, placer)
		--local meta = minetest.get_meta(pos)
	--end,
	walkable = false,
})

minetest.register_node("villages:hobo_deed", {
	description = "Hobo Colony Deed",
	tiles = {"villages_hobo_deed.png"},
	inventory_image = "villages_hobo_deed.png",
	wield_image = "villages_hobo_deed.png",
	drawtype = "signlike",
	paramtype = "light",
	paramtype2 = "wallmounted",
	selection_box = {type="wallmounted",},
	groups = {crumbly=1, dig_immediate=3, oddly_breakable_by_hand=1,},
	--on_construct = function(pos, node, placer)
		--local meta = minetest.get_meta(pos)
		--meta:set_string("position", "not in building")
		--meta:set_string("population", "0")
	--end,
	walkable = false,
})
--[[
minetest.register_abm({
	nodenames = {"villages:colony_deed"},
	interval = 5,
	chance = 1,
	action = function(pos, node)
		local meta = minetest:get_meta(pos)
			minetest.chat_send_all("a deed just checked for a house")
		if meta:get_string("position") == "inside building" then
			if meta:get_string("population") == "0" and math.random(1,2) == 1 then
				minetest.add_entity(pos, "mobs_npc:npc")
				meta:set_string("population", "1")
				minetest.chat_send_all("npc spawned")
			end
		end
		local beds = minetest.find_node_near(pos, 5, {"beds:bed_bottom", "beds:bed", "beds:bed_yellow_bottom", "beds:bed_brown_bottom", "beds:bed_magenta_bottom", "beds:bed_blue_bottom", "beds:bed_orange_bottom", "beds:bed_cyan_bottom", "beds:bed_pink_bottom", "beds:bed_black_bottom", "beds:bed_white_bottom", "beds:bed_darkgrey_bottom", "beds:bed_grey_bottom", "beds:bed_green_bottom", "beds:bed_purple_bottom", "beds:bed_darkgreen_bottom"})
		local light_sources = minetest.find_node_near(pos, 5, {"default:torch", "default:torch_wall", "default:torch_floor", "default:torch_ceiling", "mese_lamp"})
		local doors = minetest.find_node_near(pos, 5, {"doors:door_wood_a", "doors:door_glass_a", "doors:door_obsidian_glass_a"})
		if beds ~= nil and light_sources ~= nil and doors ~= nil then
			meta:set_string("position", "inside building")
			minetest.chat_send_all("a building was found")
		else
			meta:set_string("position", "not in building")
			minetest.chat_send_all("no building was found")
		end
	end
})
]]