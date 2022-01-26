//Sound library wird importiert
import processing.sound.*;
SoundFile music;

//Funktion, die die Hintergrundmusik abspielt
void playMusic() {
  music.amp(0.2);
  music.loop();
}
//Startet oder stoppt die Musik je nach game state.
void toggleMusic() {
  if (keyPressed) {
    if (key == 'b' && music.isPlaying()) {
      music.pause();
    } else if (key == 'i' && !music.isPlaying()) {
      music.play();
      music.loop();
    }
  }
}
