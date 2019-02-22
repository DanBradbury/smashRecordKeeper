///add_character_to_list(ARG_INFO)
// INFO: using obj_overlay
//       updates the characers + session_records lists
with(obj_overlay) {
  num_characters++;
  ds_list_add(characters, argument0);
  ds_list_add(session_records, pack(0,0, determine_sprite_index(argument0), clean_matchup_records));
}

