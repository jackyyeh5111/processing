import processing.video.*;
Capture video;

float timer1 = 0;
float timer2 = 0;
float delay1 = 1000/100.0; // 100 fps
float delay2 = 1000/50.0; // 50 fps
 
void setup() {  
  size(2000, 720);
  // This the default video input, see the GettingStartedCapture 
  video = new Capture(this, 1280, 720);

  // Start capturing the images from the camera
  video.start();  

  background(0);
}

void captureEvent(Capture video) {
  video.read(); 
}

int x = 0;
int x_2 = 0;

int w = video.width;
int h = video.height;
void draw() {
  
  if( millis() > timer1 ){
    copy(video, w/2, 0, 1, h, x, 0, 1, h);
    
    x = x + 1;
    timer1+=delay1;
    
    if (x > w) {
      x = 0;  //panning cycles back to beginning
    }
  }
  
  if( millis() > timer2 ){
    copy(video, w/2, 0, 1, h, x_2, 0, 1, h);
    
    x_2 = x_2 + 1;
    timer2+=delay2;
    
    if (x_2 > w) {
      x_2 = 0;
    }
  }
  
}
