// INSERT TESTS HERE; eg. it('should work', true, true);
it("should NOT have an entry to start", 0, ds_list_size(obj_overlay.characters)); // strange old test to make sure we arent running an old build
obj_exists(obj_overlay);
simulate_keypress(ord("A"));
obj_exists(obj_picture_character_select);
simulate_mouse_click(mb_left, 200, 50);
should_be(1, obj_overlay, "num_characters");
simulate_keypress(ord("R"));
should_be(0, obj_overlay, "num_characters");

simulate_keypress(ord("A"));
//second mouse click not working properly (might have somethign to do with the alt tab quit issue)..
simulate_mouse_click(mb_left, 220, 40);
simulate_keypress(vk_up);
// commented out since it was staged in hobo_test last push
//list_size_check(obj_overlay, "session_records", 1);
obj_exists(obj_track_win);
simulate_mouse_click(mb_left, 220, 485);
//should_be(0, obj_overlay, "session_records", 

// dont remove this line!
run_hobo_tests();
