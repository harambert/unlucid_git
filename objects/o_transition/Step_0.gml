switch(activity) {
	case "closing":
		trans += 0.025;
	break;
	case "opening":
		trans -= 0.025;
	break;
	case "idle":
		trans = 0;
	break;
}

switch(trans) {
	case 1:
		if activity == "closing" {
			activity = "opening" ;
			if target_room != -1 {
				room_goto(target_room);
			}
		}
	break;
	case 0:
		if activity == "opening" {
			activity = "idle" ;
		}
	break;
}