function start(song) -- do nothing

end

function update(elapsed)
	if curBeat>=164 and curBeat<196 then
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

function beatHit(beat) -- do nothing

end

function stepHit(step) -- do nothing

end

function playerTwoTurn()

end

function playerOneTurn()

end