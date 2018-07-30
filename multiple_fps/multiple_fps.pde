float timer1 = 0;
float timer2 = 0;
float delay1 = 1000/100.0; // 100 fps
float delay2 = 1000/50.0; // 50 fps
 
void setup() {  
}

int pos = 0;
int pos_2 = 10;

void draw() {
  background(204);
  
  if( millis() > timer1 ){
    pos++;
    line(pos, 20, pos, 50);
    timer1+=delay1;
    
    if (pos > width) {
      pos = 0;
    }
  }
  
  if( millis() > timer2 ){
    pos_2++;
    line(pos_2, 50, pos_2, 80);
    timer2+=delay2;
    
    if (pos_2 > width) {
      pos_2 = 0;
    }
  }
  
}
