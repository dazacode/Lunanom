function start(song) -- do nothing

end

function update(elapsed)
    if difficulty == 2 then
		if curBeat>=704 and curBeat<832 then
			local currentBeat = (songPos / 1000)*(bpm/60)
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 10 * math.sin((currentBeat + i*0.25) * math.pi), i)
				setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat + i*0.25) * math.pi), i)
			end
		elseif curBeat>=896 and curBeat<960 then
			local currentBeat = (songPos / 1000)*(bpm/60)
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 10 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		else
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'],i)
				setActorY(_G['defaultStrum'..i..'Y'],i)
			end
		end
	elseif difficulty == 1 then
		if curBeat>=704 and curBeat<832 then
			local currentBeat = (songPos / 1000)*(bpm/60)
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 8 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		else
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'],i)
			end
		end
	end
end

function beatHit(beat) -- do nothing

end

function stepHit(step) -- do nothing

end

function playerTwoTurn()

end

function playerOneTurn()

end