/*
Copyright 2021 Stephen Edwards

Adapted from the Model H Project by Jonathan Hawthorn.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/


#include "yacobo.h"

#ifdef MODELM_LED_PINS
static const pin_t led_pins[3] = MODELM_LED_PINS;

bool led_update_kb(led_t led_state) {
	bool res = led_update_user(led_state);
	if(res) {
		writePin(led_pins[0], !led_state.num_lock);
		writePin(led_pins[1], !led_state.caps_lock);
		writePin(led_pins[2], !led_state.scroll_lock);
	}
	return res;
}

void led_init_ports() {
	setPinOutput(led_pins[0]);
	setPinOutput(led_pins[1]);
	setPinOutput(led_pins[2]);
}

#else
void led_init_ports() { }
#endif

void keyboard_pre_init_kb(void) {
	setPinOutput(STATUS_LED);
	writePin(STATUS_LED, 0);

	led_init_ports();
	keyboard_pre_init_user();
}
