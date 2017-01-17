randomize();
//Random number to select a song
selectSong = irandom(4);

//Song that plays is dependant on random variable
if(selectSong = 0){
    //Plays the song
    audio_play_sound(music_DubstepOne, 10, false);    
}
else if(selectSong = 1){
    audio_play_sound(music_DubstepTwo, 10, false);
}
else if(selectSong = 2){
    audio_play_sound(music_Running, 10, false);
}
else if(selectSong = 3){
    audio_play_sound(music_ClassicalOne, 10, false);
}   
else if(selectSong = 4){
    audio_play_sound(music_ClassicalTwo, 10, false);
}
else if(selectSong = 5){    
    audio_play_sound(music_EminemOne, 10, false);
}
global.songSelect = selectSong;
