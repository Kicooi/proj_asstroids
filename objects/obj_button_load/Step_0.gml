if countdown != 0 {
	countdown--;
	if countdown <= 0 {
		global.load_state = false;
	}
}