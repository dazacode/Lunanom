function start(song) -- do nothing
	
end

function update(elapsed)
	if curBeat>=704 and curBeat<832 then
			local currentBeat = (songPos / 1000)*(bpm/60)
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 10 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
	end
end

function beatHit(beat) -- do nothing	
	if curBeat == 8 then
		tweenFadeIn(1,1,0.4)
		tweenFadeIn(6,1,0.4)
	elseif curBeat == 16 then
		tweenFadeIn(2,1,0.4)
		tweenFadeIn(5,1,0.4)
	elseif curBeat == 24 then
		tweenFadeIn(3,1,0.4)
		tweenFadeIn(4,1,0.4)
	elseif curBeat == 1088 then
		tweenFadeOut(2,0,1.1)
	elseif curBeat == 1096 then
		tweenFadeOut(3,0,1.1)
	elseif curBeat == 1104 then
		tweenFadeOut(0,0,1.1)
	elseif curBeat == 1112 then
		tweenFadeOut(1,0,1.1)
	elseif curBeat == 1120 then
		tweenFadeOut(6,0,1.1)
	elseif curBeat == 1128 then
		tweenFadeOut(7,0,1.1)
	elseif curBeat == 1136 then
		tweenFadeOut(4,0,1.1)
	elseif curBeat == 1144 then
		tweenFadeOut(5,0,1.1)
	end
end

function stepHit(step) -- do nothing
	if curStep == 1 then
		tweenFadeIn(0,1,0.4)
		tweenFadeIn(7,1,0.4)
	end
end

function playerTwoTurn()

end

function playerOneTurn()

end