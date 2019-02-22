///add_loss_to_matchup(ARG_INFO)
// INFO: same idea as add_win_to_matchup
//      - needs to incrememnt the loss element in the array
//      - then ds_list_replaces with new values
with(obj_overlay) {
  var spr_index = determine_sprite_index(argument0);
  var t = ds_list_find_value(session_records, current_character);
  var matchups = t[3];
  var current_matchup = matchups[spr_index];
  matchups[spr_index] = pack(current_matchup[0],current_matchup[1]+1);

  ds_list_replace(session_records, current_character, pack(t[0], t[1], t[2], matchups));
}

