if global.relic2 == false {
	global.relic2 = true;
	global.relic_counter2 += 1;
	global.newrelic = true;
	save_relics();
} else if global.relic2 == true {
	global.relic_counter2 += 1;
	save_relics();
}
instance_destroy(self);