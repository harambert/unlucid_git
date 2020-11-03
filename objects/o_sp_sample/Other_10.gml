//---You can update variables here!---//
reset_dialogue_defaults();


//Line 0
var i = 0;
myText[i]		= "Hmm.. this seems outa place";
mySpeaker[i]	= id;
myScripts[i]	= [create_instance_layer, 170,120,"Instances",obj_emote];
		
//Line 1
i++;
myText[i]		= "You can even have it depend on player choice. Which object should I make?";
mySpeaker[i]	= id;
		
//Line 2
i++;
myText[i]		= ["An emote", "Another you!"];
myTypes[i]		= 1;
mySpeaker[i]	= obj_player;
myScripts[i]	= [[create_instance_layer, 170,120,"Instances",obj_emote], [create_instance_layer, 170,120,"Instances",obj_examplechar]];
myNextLine[i]	= [0,0];
		
//Line 3
i++;
myText[i]		= "Pretty cool, right? Now, let's get back to our conversation.";
mySpeaker[i]	= id;
		
//Line 4
i++;
myText[i]		= "Looky here, green hood.";
myEffects[i]	= [13,1, 18,0];
mySpeaker[i]	= id;
myTextCol[i]	= [13, c_lime, 18, c_white];

//Line 5
i++;
myText[i]		= "We both know blue is the best colour.";
myEmotion[i]	= 1;
myEmote[i]		= 0;
mySpeaker[i]	= id;
myTextCol[i]	= [14, c_aqua, 18, c_white];

//Line 6
i++;
myText[i]		= "Say it... or else.";
myTextSpeed[i]	= [1,0.5, 10,0.1];
myEmotion[i]	= 0;
myEmote[i]		= 4;
mySpeaker[i]	= id;
myTextCol[i]	= [11, c_red, 18, c_white];

//Line 7
i++;
myText[i]		= ["(sarcastically) Blue is the best colour.", "Green is the best colour."];
myTypes[i]		= 1;
myNextLine[i]	= [8,9];
myScripts[i]	= [[change_variable, id, "choice_variable", "blue"], [change_variable, id, "choice_variable", "green"]];
mySpeaker[i]	= obj_player;

//Line 8
i++;
myText[i]		= "Exactly! Thank you!";
myEmotion[i]	= 0;
myEmote[i]		= 0;
myNextLine[i]	= -1;
mySpeaker[i]	= id;

//Line 9
i++;
myText[i]		= "Nooooooooooooooooooooooo!";
myTextSpeed[i]	= [1,1, 6,0.3, 10,1];
myEmotion[i]	= 2;
myEmote[i]		= 9;
mySpeaker[i]	= id;
	