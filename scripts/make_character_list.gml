///make_character_list(ARG_INFO)
var all_characters = obj_overlay.character_list;
var displayed_characters = obj_overlay.characters;

var return_me = ds_list_create();

for(var i=0;i<ds_list_size(all_characters);i++) {
  var t = ds_list_find_value(all_characters, i);

  if(ds_list_find_index(displayed_characters, t) == -1) {
    ds_list_add(return_me, t);
  }
}
return return_me;

