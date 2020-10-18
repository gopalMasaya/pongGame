float y = 0;
float x = 0;
float xspeed = 3;
float yspeed = 3;
int   score = 0;
int   speed = 8;

void setup(){
  size(700,500);
  x= random(0,width);
}

void draw(){
  
  background(11,25,239);
 
 
  // craete the ball****************
  //        x  y
  fill(230,180,30);
  ellipse(x,y,30,30);
  y+=yspeed;
  x+=xspeed;
  
  if(y > height ){
    y = 0; 
  }
  if( y < 0){yspeed = -yspeed;y=0;}
  
  if(x-15 < 0 || x+15> width){
    xspeed =- xspeed;}
 
  // code for tracking ball impact
  if(y > height-60 && x > mouseX  && x < mouseX+80|| y< 0){
   float position = mouseX- (x-80);
   float angle = map(position,0,80,radians(45),radians(135));
     xspeed =  speed * cos(angle);
     yspeed = -speed * sin(angle);
    score += 10;
  }
  
  //========  mange score and stages ==============
   if(score < 50){
  speed =8;
  text("stage 1", 20,height- 50);
}
  
  if(score > 50){
  speed =10;
  text("stage 2", 20,height- 50);
}
  
 
  
  textSize(30);
  fill(20,250,120);//stroke(255,0,0);strokeWeight(3);
  text("score:  " + score,width-150,60);
  //noStroke();
 // println(" d: "+cos(radians(2)));
 //********************************* 
  fill(20,180,30);
 rect(mouseX,height-40,80,20);
 
}
