///add_character_to_list(ARG_INFO)
//add to obj_overlay
//  characters[]
//  num_characters++
//    !! possibly not necessary since we can always use list size?...probably could have always used array size too..
//  append a session record (WINS,LOSS,sprite_index);
//    ->!! might be annoying to manage.. build the script early to handle that...
with(obj_overlay) {


  /*var og_chracters = characters;*/
  num_characters++;
  ds_list_add(characters, argument0);
  /*ds_list_add(session_records, pack(0,0,argument1));*/
  ds_list_add(session_records, pack(0,0, determine_sprite_index(argument0)));


}

