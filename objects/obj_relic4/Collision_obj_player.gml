if global.relic4 == false {
	global.relic4 = true;
	global.relic_counter4 += 1;
	global.newrelic = true;
	save_relics();
} else if global.relic4 == true {
	global.relic_counter4 += 1;
	save_relics();
}
instance_destroy(self);