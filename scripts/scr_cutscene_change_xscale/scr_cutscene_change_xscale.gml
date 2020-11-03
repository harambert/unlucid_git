///@desc scr_cutscene_change_xscale
///@arg obj_id
///@arg image_xscale*


//for optional argument
var arg;

var i = 0 ; repeat(argument_count) {
	arg[i] = argument[i];
	i++;
}

if argument_count > 1 {
	with(arg[0]){
		image_xscale = arg[1];
	}
}
else	{
	with(arg[0]) {
		image_xscale *= -1;
	}
}

scr_cutscene_end_action();