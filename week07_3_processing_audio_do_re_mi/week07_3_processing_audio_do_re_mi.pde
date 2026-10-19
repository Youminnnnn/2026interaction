// week07_3_processing_audio_do_re_mi
import processing.sound.*;
SoundFile Do, Re, Mi; // 有3個變數 Do Re Mi
SoundFile sound2;
void setup(){
  size(300, 200);
  // 請把do.wav, re.wav, mi.wav 共3個檔案，再一次拉到程式裡
  Do = new SoundFile(this, "do.wav");
  Re = new SoundFile(this, "re.wav");
  Mi = new SoundFile(this, "mi.wav");
  //sound.play();
}
void draw(){
  rect(0, 0, 100, 200);
  rect(100, 0, 100, 200);
  rect(200, 0, 100, 200);
}
void mousePressed(){
  if(mouseX<100){
    Do.play();
  }
  if(mouseX<200){
    Re.play();
  }
  if(mouseX<300){
    Mi.play();
  }
}
