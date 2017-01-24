with(room_PlayAreaLevelOne){
    instance_deactivate_all(true);
    room_restart();
    room_set_persistent(room_PlayAreaLevelOne, false)
}
with(room_Pause){
    instance_deactivate_all(true);
    room_restart();
    room_set_persistent(room_Pause, false)
    
}
with(room_Credit){
    instance_deactivate_all(true);
    room_restart();
    room_set_persistent(room_Credit, false)
    
}
