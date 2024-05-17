if (room == rm_game) && (global.shipdead == false) {
	if m_select == 12 {
		m_select = 1;
	}
	if m_select == 13 {
		m_select = 3;
	}
}

if (room == rm_game) && (global.shipdead == true) {
	if m_select == 1 {
		m_select = 2;
	}
	if (m_select == 3) or (m_select == 5) {
		m_select = 4;
	}
}

if room == rm_leaderboard {
	if m_select == 1 {
		m_select = 2;
	}
}