if global.relic1 == false {
	global.relic1 = true;
	global.relic_counter1 += 1;
	global.newrelic = true;
	save_relics();
} else if global.relic1 == true {
	global.relic_counter1 += 1;
	save_relics();
}
instance_destroy(self);