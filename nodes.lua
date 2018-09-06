
--this registers the beanstalk node
--in future, we might want different nodes with different colors/patterns
--to be used on different levels?
--also, may want to make this NOT flamable and hard to chop?
minetest.register_node("beanstalk:beanstalk", {
  description = "Beanstalk Stalk",
  tiles = {"beanstalk_top_32.png", "beanstalk_top_32.png", "beanstalk_side_32.png"},
  paramtype2 = "facedir",
  is_ground_content = false,
  --climbable = true,
  groups = {snappy=1,level=2,choppy=1,level=2},
  sounds = default.node_sound_wood_defaults(),
  on_place = minetest.rotate_node,

  --after_dig_node = function(pos, node, metadata, digger)
  --  default.dig_up(pos, node, digger)
  --end,
})

--this registers the vine node.  later we might want to make this so
--that it only registers a new node if you are not using a mod that
--already has vines.
--copied from ethereal
minetest.register_node("beanstalk:vine", {
  description = "BeanstalkVine",
  drawtype = "signlike",
  tiles = {"vine.png"},
  inventory_image = "vine.png",
  wield_image = "vine.png",
  paramtype = "light",
  paramtype2 = "wallmounted",
  walkable = false,
  climbable = true,
  is_ground_content = false,
  selection_box = {
    type = "wallmounted",
  },
  groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
  legacy_wallmounted = true,
  sounds = default.node_sound_leaves_defaults(),
})




--https://forum.minetest.net/viewtopic.php?f=9&t=2333&hilit=node+box
minetest.register_node("beanstalk:leaf", {
	description = "beanstalk:leaf",
  drawtype = "nodebox",
  tiles = {"beanstalk-leaf-top.png","beanstalk-leaf-top.png","beanstalk-leaf-top.png",
           "beanstalk-leaf-top.png","beanstalk-leaf-top.png","beanstalk-leaf-top.png"},
  paramtype = "light",
  paramtype2 = "facedir",
	inventory_image = "beanstalk-leaf-top.png",
	wield_image = "beanstalk-leaf-top.png",
  groups = {snappy=1,choppy=3,flammable=2},
  sounds = default.node_sound_wood_defaults(),
  walkable = true,
  climbable= false,
  is_ground_content = false,
    node_box = {
      type = "fixed",
      --fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}, --makes half block
      --fixed = {-0.5, -0.5, -0.5, 0.5,-0.25, 0.5},--makes quarter block
      --fixed = {-0.5, -0.5, -0.5, 0.5,-0.25, 0.25}, --quarter height, 3/4 length
      --fixed = {-0.5, -0.5, -0.5, -0.25,-0.25, 0.5},  --this makes a 1/4 x 1/4 rectangle!
      --fixed = {-0.5, -0.5, -0.5, -0.25,-0.25, 0.5},
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
    }
})


minetest.register_node("beanstalk:leaf_edge", {
	description = "beanstalk:leaf edge",
  drawtype = "nodebox",
  tiles = {"beanstalk-leaf-top.png","beanstalk-leaf-top.png","beanstalk-leaf-top.png",
           "beanstalk-leaf-top.png","beanstalk-leaf-top.png","beanstalk-leaf-top.png"},
  paramtype = "light",
  paramtype2 = "facedir",
	inventory_image = "beanstalk-leaf-edge.png",
	wield_image = "beanstalk-leaf-edge.png",
  groups = {snappy=1,choppy=3,flammable=2},
  sounds = default.node_sound_wood_defaults(),
  walkable = true,
  climbable= false,
  is_ground_content = false,
    node_box = {
      type = "fixed",
			fixed={
      {-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5}, -- NodeBox1
			{-0.4375, -0.5, -0.5, -0.375, -0.4375, 0.4375}, -- NodeBox2
			{-0.375, -0.5, -0.5, -0.3125, -0.4375, 0.375}, -- NodeBox3
			{-0.3125, -0.5, -0.5, -0.25, -0.4375, 0.3125}, -- NodeBox4
			{-0.25, -0.5, -0.5, -0.1875, -0.4375, 0.25}, -- NodeBox5
			{-0.1875, -0.5, -0.5, -0.125, -0.4375, 0.1875}, -- NodeBox6
			{-0.125, -0.5, -0.5, -0.0625, -0.4375, 0.125}, -- NodeBox7
			{-0.0625, -0.5, -0.5, 0, -0.4375, 0.0625}, -- NodeBox8
			{0, -0.5, -0.5, 0.0625, -0.4375, 0}, -- NodeBox9
			{0.0625, -0.5, -0.5, 0.125, -0.4375, -0.0625}, -- NodeBox10
			{0.125, -0.5, -0.5, 0.1875, -0.4375, -0.125}, -- NodeBox11
			{0.1875, -0.5, -0.5, 0.25, -0.4375, -0.1875}, -- NodeBox12
			{0.25, -0.5, -0.5, 0.3125, -0.4375, -0.25}, -- NodeBox13
			{0.3125, -0.5, -0.5, 0.375, -0.4375, -0.3125}, -- NodeBox14
			{0.375, -0.5, -0.5, 0.4375, -0.4375, -0.375}, -- NodeBox15
			{0.4375, -0.5, -0.5, 0.5, -0.4375, -0.4375}, -- NodeBox16
      }
    }
})





minetest.register_node("beanstalk:leaf_point_short", {
	description = "beanstalk:leaf point short",
  drawtype = "nodebox",
  tiles = {"beanstalk-leaf-top.png"},
  paramtype = "light",
  paramtype2 = "facedir",
	inventory_image = "beanstalk-leaf-point-short.png",
	wield_image = "beanstalk-leaf-point-short.png",
  groups = {snappy=1,choppy=3,flammable=2},
  sounds = default.node_sound_wood_defaults(),
  walkable = true,
  climbable= false,
  is_ground_content = false,
    node_box = {
      type = "fixed",
			fixed={
      {-0.5, -0.5, -0.5, -0.4375, -0.4375, -0.4375}, -- NodeBox1
			{-0.4375, -0.5, -0.5, -0.375, -0.4375, -0.375}, -- NodeBox2
			{-0.375, -0.5, -0.5, -0.3125, -0.4375, -0.3125}, -- NodeBox3
			{-0.3125, -0.5, -0.5, -0.25, -0.4375, -0.25}, -- NodeBox4
			{-0.25, -0.5, -0.5, -0.1875, -0.4375, -0.1875}, -- NodeBox5
			{-0.1875, -0.5, -0.5, -0.125, -0.4375, -0.125}, -- NodeBox6
			{-0.125, -0.5, -0.5, -0.0625, -0.4375, -0.0625}, -- NodeBox7
			{-0.0625, -0.5, -0.5, 0, -0.4375, 0}, -- NodeBox8
			{0, -0.5, -0.5, 0.0625, -0.4375, 0}, -- NodeBox9
			{0.0625, -0.5, -0.5, 0.125, -0.4375, -0.0625}, -- NodeBox10
			{0.125, -0.5, -0.5, 0.1875, -0.4375, -0.125}, -- NodeBox11
			{0.1875, -0.5, -0.5, 0.25, -0.4375, -0.1875}, -- NodeBox12
			{0.25, -0.5, -0.5, 0.3125, -0.4375, -0.25}, -- NodeBox13
			{0.3125, -0.5, -0.5, 0.375, -0.4375, -0.3125}, -- NodeBox14
			{0.375, -0.5, -0.5, 0.4375, -0.4375, -0.375}, -- NodeBox15
			{0.4375, -0.5, -0.5, 0.5, -0.4375, -0.4375}, -- NodeBox16
      }
    }
})


minetest.register_node("beanstalk:leaf_stem_join", {
	description = "beanstalk:leaf stem join",
  drawtype = "nodebox",
  tiles = {"beanstalk-leaf-top.png"},
  paramtype = "light",
  paramtype2 = "facedir",
	inventory_image = "beanstalk-leaf-stem-join.png",
	wield_image = "beanstalk-leaf-stem-join.png",
  groups = {snappy=1,choppy=3,flammable=2},
  sounds = default.node_sound_wood_defaults(),
  walkable = true,
  climbable= false,
  is_ground_content = false,
    node_box = {
      type = "fixed",
			fixed={
			{-0.5, -0.5, -0.5, -0.375, -0.4375, -0.4375}, -- NodeBox1
			{-0.5, -0.5, -0.4375, -0.3125, -0.4375, -0.375}, -- NodeBox2
			{-0.5, -0.5, -0.375, -0.1875, -0.4375, -0.3125}, -- NodeBox3
			{-0.0625, -0.5, -0.5, 0.0625, -0.4375, -0.25}, -- NodeBox4
			{0.375, -0.5, -0.5, 0.5, -0.4375, -0.4375}, -- NodeBox5
			{0.3125, -0.5, -0.4375, 0.5, -0.4375, -0.375}, -- NodeBox6
			{0.1875, -0.5, -0.375, 0.5, -0.4375, -0.3125}, -- NodeBox7
			{0.125, -0.5, -0.3125, 0.5, -0.4375, -0.25}, -- NodeBox8
			{-0.5, -0.5, -0.3125, -0.125, -0.4375, -0.25}, -- NodeBox9
			{-0.5, -0.5, -0.25, 0.5, -0.4375, 0.5}, -- NodeBox10
      }
    }
})

minetest.register_node("beanstalk:leaf_stem", {
	description = "beanstalk:leaf stem",
  drawtype = "nodebox",
  tiles = {"beanstalk-leaf-top.png"},
  paramtype = "light",
  paramtype2 = "facedir",
	inventory_image = "beanstalk-leaf-stem.png",
	wield_image = "beanstalk-leaf-stem.png",
  groups = {snappy=1,choppy=3,flammable=2},
  sounds = default.node_sound_wood_defaults(),
  walkable = true,
  climbable= false,
  is_ground_content = false,
    node_box = {
      type = "fixed",
      fixed={-0.0625, -0.5, -0.5, 0.0625, -0.4375, 0.5}, -- NodeBox1
    }
})
