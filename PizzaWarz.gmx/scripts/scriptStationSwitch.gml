switch(SelectedStationIndex){
    case 0: //Sets the gain of all of the stations to 0, silent.
        audio_sound_gain(station1,0,0);
        audio_sound_gain(station2,0,0);
        audio_sound_gain(station3,0,0);
        audio_sound_gain(station4,0,0);
        audio_sound_gain(station5,0,0);        
    break;

    case 1: //Sets the gain of station1 to 1, full volume.
        audio_sound_gain(station1,1,0);
        audio_sound_gain(station2,0,0);
        audio_sound_gain(station3,0,0);
        audio_sound_gain(station4,0,0);
        audio_sound_gain(station5,0,0);
    break;
    
    case 2: //Sets the gain of station1 to 2, full volume.
        audio_sound_gain(station1,0,0);
        audio_sound_gain(station2,1,0);
        audio_sound_gain(station3,0,0);
        audio_sound_gain(station4,0,0);
        audio_sound_gain(station5,0,0);
    break;
    
    case 3: //Sets the gain of station1 to 3, full volume.
        audio_sound_gain(station1,0,0);
        audio_sound_gain(station2,0,0);
        audio_sound_gain(station3,1,0);
        audio_sound_gain(station4,0,0);
        audio_sound_gain(station5,0,0);
    break;
    
    case 4: //Sets the gain of station1 to 4, full volume.
        audio_sound_gain(station1,0,0);
        audio_sound_gain(station2,0,0);
        audio_sound_gain(station3,0,0);
        audio_sound_gain(station4,1,0);
        audio_sound_gain(station5,0,0);
    break;
    
    case 5: //Sets the gain of station1 to 5, full volume.
        audio_sound_gain(station1,0,0);
        audio_sound_gain(station2,0,0);
        audio_sound_gain(station3,0,0);
        audio_sound_gain(station4,0,0);
        audio_sound_gain(station5,1,0);
    break;
}
