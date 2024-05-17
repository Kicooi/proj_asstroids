if global.relic3 == false {
	global.relic3 = true;
	global.relic_counter3 += 1;
	global.newrelic = true;
	save_relics();
} else if global.relic3 == true {
	global.relic_counter3 += 1;
	save_relics();
}
instance_destroy(self);