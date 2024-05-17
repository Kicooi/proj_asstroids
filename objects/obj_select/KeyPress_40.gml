if room == rm_menu {
	if m_select < 4 {
		m_select += 1;
	}
}
if (room == rm_game) && (global.shipdead == false) {
	if (m_select < 3) or (m_select == 12) {
		m_select += 1;
	}
}

if (room == rm_game) && (global.shipdead == true) {
	if m_select == 1 {
		m_select = 3;
	} else if m_select == 2 {
		m_select = 5;
	} else if m_select == 3 {
		m_select = 4
	} else if m_select == 5 {
		m_select = 4;
	}
}

if( room == rm_global) {
	if m_select == 2 {
		m_select = 1;
	}
}