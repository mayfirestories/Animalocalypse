rarity = irandom_range(0,99)

if(0<=rarity && rarity<=49){
	xp = 5
}else if(50<=rarity && rarity<=74){
	xp = 10
}else if(75<=rarity && rarity<=90){
	xp = 20
}else if(90<=rarity && rarity<=98){
	xp = 50
} else {
	xp = 1000
}

switch (xp) {
	case 5: // Common
		//No color change
		break;
	case 10: // Uncommon
		image_blend = c_blue
		break;
	case 20: // Rare
		image_blend = c_orange
		break;
	case 50: // Epic
		image_blend = c_fuchsia
		break;
	case 1000: // Legendary
		image_blend = c_maroon
		break;
	default:
		break;
}