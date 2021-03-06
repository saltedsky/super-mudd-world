--
--  map01.lua
--  linde dorme
--

require 'resources'

Map01 = {}
Map01.__index = Map01


function Map01.new()
	local self = {}
	setmetatable(self, Map01)

	self.tilesetPath = "/data/tiles/tileset_linde.png"

	self.quadInfo = {
		{ '(',   0,   0 }, 	-- window1
		{ ')',  64,   0 }, 	-- window2
		{ '[',   0,  64 },	-- window3
		{ ']',  64,  64 },	-- window4
		{ '<',   0, 128 },	-- window5
		{ '>',  64, 128 },	-- window6
		{ '.', 128,   0 },	-- wall1
		{ '+', 128,  64 },	-- wall2
		{ ',', 128, 128 },	-- wall3
		{ 'w', 192, 128 },	-- wart
		{ '*', 256,   0 },	-- large cloud
		{ '=', 320,   0 },	-- small cloud
		{ '-', 256,  64 },	-- sky
		{ ':', 256, 128 },	-- door, upper
		{ ';', 256, 192 },	-- door, lower
		{ '_', 192,   0 },	-- ground1
		{ '#', 192,  64 }	-- ground2
	}

	self.tileString = [[
-*---------*---------*--------
-------=---------=---------=--
wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
....+.++......+.++......+.++..
+.......+.+.......+.+.......+.
..()........()........()......
:+[]..+.+..+[]..+.+..+[]..+.+.
;.<>........<>........<>......
___________________________#__
]]

	-- tiles
	self.tiles = {
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
		{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
	}

	-- enemies: {type, x, y}
	self.enemies = {
		{1, 10, 9},
		{1, 20, 9}
	}

	-- items: {type, x, y}
	self.items = {
		{1, 5, 9},
		{1, 6, 9},
		{1, 12, 9},
		{1, 13, 9},
		{1, 14, 9},
		{1, 15, 9},
		{1, 25, 9}
	}

	-- friends: {type, x, y}
	self.friends = {
		{1, 8, 8}
	}

	self.width = #(self.tileString:match('[^\n]+')) * TILE_W

	return self
end
