///fresh_matchup_records(ARG_INFO)
// INFO: creates the complete session_records array for all characters on the list
var records = array_create(ds_list_size(obj_overlay.character_list));

for(var i=0; i<=array_length_1d(records); i++) {
  records[i] = pack(0,0);
}
return records;

