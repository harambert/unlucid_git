///@desc screen_shake (magnitude,frames)
///@arg Magnitude sets how strong shaking
///@arg Frames sets how long 60 is 1 second in 60 fps

with(o_camera)
{
	if (argument[0] > shakeremain)
	{
		shakemagnitude = argument[0]
		shakeremain = argument[0]
		shakelength = argument[1]
	}
}