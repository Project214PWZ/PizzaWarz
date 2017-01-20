//Cleaning up code **WORKS**
background = (working_directory + "\Screens\Screen_Pause.png");
//Creates a .png of the current view **WORKS**
screen_save_part(background,window_get_x(), window_get_y(), window_get_width(), window_get_height());
//Deactivates everything **WORKS**
instance_deactivate_all(true);
//Goes to the pause "screen" **WORKS**
room_goto(room_Pause);
//Showing message to help notify when things change **WORKS**
show_message("Screenshot taken");  
