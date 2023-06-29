forge.clear(); -- Clear previous model
stories  = math.random(2,  4) -- Random number of stories from 1 to 4
randomRoofs = {"Hexagons/hexagon_roof","Hexagons/hexagon_point"}
randomRoof = randomRoofs[math.random(#randomRoofs)];
randomFlags = {"Castles/flag_square","Castles/flag_triangle"}
randomFlag = randomFlags[math.random(#randomFlags)];
for story = 0, stories -1 do
	if story == 0 then
	forge.build("Hexagons/hexagon_base", {0,story,0}, {0, 0, 0})
	end
	if story != 0 then	
	forge.build("Hexagons/hexagon", {0,story,0}, {0, 0, 0})
	end
end
forge.build("Hexagons/hexagon_overhang", {0,stories,0}, {0, 0, 0})
forge.build("Hexagons/hexagon_arches", {0,stories+1,0}, {0, 0, 0})
forge.build(randomRoof, {0,stories+2,0}, {0, 0, 0})
forge.build(randomFlag, {0,stories+2.5,0}, {0, 0, 0})