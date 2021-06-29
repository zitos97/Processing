/* Include the outcommented LoC for adding an audio file. 
   Works only with older versions of Processing (at least with v2.1 and v2.2.1) */
   
   
// import ddf.minim.* ; 
// Minim minim ;
// AudioPlayer player ;


/* Initialize all variables */
PImage title ;
PImage interpret ;
PImage songtext ;
PImage neighbors ;
PImage heart ;
PImage room ;
PImage stars ;
PImage moon ;
PImage eyeLeft ;
PImage eyeRight ;
PImage whiteImg ;
PImage skyline ;
PImage dawn;
PImage human1 ;
PImage human2 ;
PImage human3 ;
PImage couple ;
PImage sceptical1 ;
PImage sceptical2 ;
PImage laughing ;


int start = 0 ;
float z = 0 ;   // time
float a = 0;
float c = 0;
float d = 0 ;
float e = 0 ;
float f = 600 ;
float g = 0 ;
float h = 0 ;
float i = 0 ;
float j = 0 ;
float k = 0 ;
float l = 0 ;
float m = 0 ;
float n = 0 ;
float o = 0 ;
float p = 0 ;
float q = 0 ;
float r = 0 ;
float s = 0 ;
float t = 0 ;
float u = 0 ;
float v = 0.0 ;
float w = 50.0 ;
float H = 30.0 ;  
float colorLine = 99 ;
float colorLine2 = 99 ;
float farbeKleid = 0 ;
float movingSongtext = -420 ;
float figuremovement1 = 0;
float figuremovement2 = 0;
float figuremovement3 = 0;
float movement3 = 0;
float movement4 = 0;
float movement5 = 0;
float movement6 = 0;
float movingHouse = 0 ;
float movingHouse2 = 0 ;
float movingArm = 0 ;
float heart1 = 0 ;
float heart2 = 0;
float farbe2 = 0;
float farbe3 = 0 ;
float tint = 0 ;
float tint2 = 0 ;
float tint3 = 0 ;
float tint4 = 0 ;
float tint5 = 0 ;
float tint6 = 0 ;
float tint7 = 0 ;
float movingPerson = 0 ;

/* Load all data */
void setup(){
    size( 800 , 600 ) ;  
    background( 255 , 255 , 255 ) ;
    title = loadImage("./data/title.jpg") ;
    interpret = loadImage("./data/interpret.bmp") ;
    songtext = loadImage("./data/songtext.jpg") ;
    neighbors = loadImage("./data/neighbors.bmp") ;
    heart = loadImage("./data/heart.png") ;
    room = loadImage("./data/room.bmp") ;
    stars = loadImage("./data/stars.jpg") ;
    moon = loadImage("./data/moon.png") ;
    eyeLeft = loadImage("./data/eyeLeft.png") ;
    eyeRight = loadImage("./data/eyeRight.png") ;
    whiteImg = loadImage("./data/whiteImg.jpg") ;
    skyline = loadImage("./data/skyline.png") ;
    dawn = loadImage("./data/dawn.png") ;
    human1 = loadImage("./data/human1.png") ;
    human2 = loadImage("./data/human2.png") ;
    human3 = loadImage("./data/human3.png") ;
    couple = loadImage("./data/couple.png") ;
    sceptical1 = loadImage("./data/sceptical1.png") ;
    sceptical2 = loadImage("./data/sceptical2.png") ;
    laughing = loadImage("./data/laughing.png") ;
    dawn = loadImage("./data/dawn.png") ;
    
    /* Use the following 2 LoC to add audio to your animation. */
    // minim = new Minim(this) ;
    // player = minim.loadFile("song.wav") ; 
}

/* Run the animation */
void draw(){
    if (mousePressed) {
      start = 1 ;
    }
    if ( start == 1 ){
      /* Use the following LoC to start the audio on mouse click */
      // player.play() ; 
      
      z = z + 1 ; 
    }
    if (   z> 0 && z <= 490 ){ 
      intro() ; 
    }
    if  ( z > 490 && z <= 670 ){ 
      scene1() ; 
    }
    if ( z > 670 && z <= 820 ){ 
      scene2() ;
    }
    if ( z > 820 && z <= 920 ){
      scene3() ;  
    }
    if ( z > 920 && z <= 1020 ){
      scene4() ; 
    } 
    if (z > 1020 && z <= 1170 ){
      scene5() ;
    }
    if ( z >1170 && z <= 1370 ){
      scene6() ;
    } 
    if ( z > 1370 && z <= 1670 ){
      scene7() ;
    }
    if ( z > 1670 && z <= 1730 ){
      scene8() ;
    }
    if ( z > 1730 && z <= 1930 ){
      scene9() ; 
    }
    if ( z > 2120 && z <= 2570 ){
      scene10() ; 
    }
    if ( z > 2620 && z <= 2970 ){
      scene11() ; 
    }
    if ( z > 2970 && z <= 3270 ){
      scene12() ; 
    } 
    if ( z > 3370 && z <= 3570 ){
      scene13() ;
    }
    if ( z > 3620 && z <= 3875 ){
      scene14() ; 
    }
    if ( z > 3875 && z <= 4170 ){ 
      scene15() ;
    }
    if ( z > 4170 && z <= 4250 ){
      scene16() ; 
    }
    if ( z > 4250 && z <= 4380 ){
      scene17() ;
    }
    if ( z > 4380 && z <= 5270 ){
      scene18() ; 
    }
    if ( z > 5270 && z <= 5525 ){
      scene19() ;
    }
    if ( z > 5525 && z <= 5780 ){
      scene20() ;
    }
} 

void intro(){
    f = f - 1.75 ;
    
    image( interpret , f*1.5 , 300 ) ;   
    image( title , 600-f*2,70 ) ;  
}

void scene1(){ 
      figuremovement1 = figuremovement1 + 1 ;
      a = a + 0.2 ;    // mouth + arm movement (figuremovement2)
      c = c + 0.9 ;    // arm movement (movement 1)
      d = d + 0.7 ;    // other arm movement (movement3)
      e = e + 1.1 ;
      
      background( 255 , 255 , 255 ) ;        
      line( 310-figuremovement1 , 550 , 390+figuremovement1 , 550 ) ;  
      
      // male stick figure
      noFill() ;
      strokeWeight(2) ;
      ellipse( 280-figuremovement1 , 300 , 70 , 70 ) ;           // head
      line( 280-figuremovement1 , 335 , 280-figuremovement1 , 420 ) ;  // body
      line( 280-figuremovement1 , 350 , 270-figuremovement1 , 395 ) ;  // left upper arm
      line( 280-figuremovement1 , 350 , 305-c , 395 ) ;          // right upper arm
      line( 270-figuremovement1 , 395 , 270-figuremovement1 , 440 ) ;  // left lower arm
      line( 305-c, 395 , 320-d , 420-a ) ;                 // right lower arm
      line( 280-figuremovement1, 420 , 270-figuremovement1 ,480 ) ;    // left upper leg
      line( 280-figuremovement1, 420 , 290-figuremovement1 ,480 ) ;    // right upper leg
      line( 270-figuremovement1, 480 , 270-figuremovement1 ,540 ) ;    // left lower leg
      line( 290-figuremovement1, 480 , 290-figuremovement1 ,540 ) ;    // right lower leg
      line( 260-figuremovement1, 540 , 270-figuremovement1 ,540 ) ;    // left foot
      line( 290-figuremovement1, 540 , 300-figuremovement1 ,540 ) ;    // right foot
      ellipse( 300-figuremovement1 , 295 , 3 , 3 ) ;             // eye
      noFill() ;
      arc( 315-figuremovement1 , 310 , 40 , 30 , radians(475) , radians( 530-a) ) ;  // mouth   
      
      // female stick figure
      strokeWeight(2) ;
      fill( 255 , 0 , 0 ) ;
      triangle( 420+figuremovement1 , 339 , 450+figuremovement1 , 480 , 390+figuremovement1 , 480 ) ;  // dress
      noFill() ;
      ellipse( 420+figuremovement1 , 300 , 70 , 70 ) ;            // head
      line( 420+figuremovement1 , 350 , 418+figuremovement1 , 395 ) ;   // right upper arm
      line( 418+figuremovement1 , 395 , 360+e , 420+a ) ;         // right lower arm
      line( 410+figuremovement1 , 480 , 410+figuremovement1 , 540 ) ;   // left lower leg
      line( 430+figuremovement1 , 480 , 430+figuremovement1 , 540 ) ;   // right lower leg
      line( 400+figuremovement1 , 540 , 410+figuremovement1 , 540 ) ;   // left foot
      line( 430+figuremovement1 , 540 , 440+figuremovement1 , 540 ) ;   // right foot
      ellipse( 400+figuremovement1 , 295 , 3 , 3 ) ;              // eye

      noFill() ;
      arc( 395+figuremovement1 , 310 , 40 , 30 , radians(380) , radians(440) ) ;  // mouth
}
 
  void scene2(){       
      figuremovement2 = figuremovement2 + 1 ;
      g = g + 0.2 ;
      h = h + 0.1 ;
      i = i + 0.5 ;
      j = j + 0.7 ;
      
      background( 255 , 255 , 255 ) ;
      
      // male stick figure
      noFill() ;
      strokeWeight(2) ;
      ellipse( 100 , 300 , 70 , 70 ) ;          // head
      line( 100 , 335 , 100 , 420 ) ;           // body
      line( 100 , 350 , 90+g , 395-h ) ;        // left upper arm
      line( 100 , 350 , 145 , 395 ) ;           // right upper arm
      line( 90+g , 395-h , 90+i , 440-i ) ;     // left lower arm
      line( 145 , 395 , 194 , 380 ) ;           // right lower arm
      line( 100 , 420 , 90 , 480 ) ;            // left upper leg
      line( 100 , 420 , 110 , 480 ) ;           // right upper leg
      line( 90 , 480 , 90 , 540 ) ;             // left lower leg
      line( 110 , 480 , 110 , 540 ) ;           // right lower leg
      line( 80 , 540 , 90 , 540 ) ;             // left foot
      line( 110 , 540 , 120 , 540 ) ;           // right foot
      ellipse( 120 , 295 , 3 , 3 ) ;            // eye
      noFill() ;
      arc( 135 , 310 , 40 , 30 , radians(475) , radians(490) ) ;  // mouth
      
      // female stick figure
      fill( 255 , 0 , 0 ) ;
      triangle( 600+figuremovement2 , 339 , 630+figuremovement2 , 480 , 570+figuremovement2 , 480 ) ;  // dress
      noFill() ;
      strokeWeight(2) ;
      ellipse( 600+figuremovement2 , 300 , 70 , 70 ) ;           // head
      line( 600+figuremovement2 , 350 , 598+figuremovement2 , 395 ) ;  // right upper arm
      line( 598+figuremovement2 , 395 , 560+figuremovement2 , 456 ) ;  // right lower arm
      line( 590+figuremovement2 , 480 , 590+figuremovement2 , 540 ) ;  // left lower leg
      line( 610+figuremovement2 , 480 , 610+figuremovement2 , 540 ) ;  // right lower leg
      line( 580+figuremovement2 , 540 , 590+figuremovement2 , 540 ) ;  // left foot
      line( 610+figuremovement2 , 540 , 620+figuremovement2 , 540 ) ;  // right foot
      ellipse( 580+figuremovement2 , 295 , 3 , 3 ) ;             // eye 
      noFill() ;
      arc( 575+figuremovement2 , 310 , 40 , 30 , radians(380) , radians(440) ) ;  // mouth 
      
       
      line( 130 , 550 , 570+figuremovement2 , 550 ) ; 
}

void scene3(){  
        figuremovement3 = figuremovement3 + 1 ;  
        k = k + 0.1 ;
        l = l + 0.2 ;
        m = m + 0.05 ;
        colorLine = colorLine - 1 ;
        farbeKleid = farbeKleid + 2.5 ;
        
        background( 255 , 255 , 255 ) ;   
        
        // male stick figure
        noFill() ;
        strokeWeight(2) ;
        stroke( HSB , 0 , 0 , 99 ) ;
        ellipse( 100+l , 300+k , 70 , 70 ) ;  // head
        line( 100+m , 335+k , 100 , 350 ) ;   // neck
        line( 100 , 355 , 100 , 420 ) ;       // body
        line( 100 , 350 , 120 , 380 ) ;       // left upper arm
        line( 100 , 350 , 145 , 395 ) ;       // right upper arm
        line( 120 , 380 , 165 , 365 ) ;       // left lower arm
        line( 145 , 395 , 194 , 380 ) ;       // right lower arm
        line( 100 , 420 , 90 , 480 ) ;        // left upper leg
        line( 100 , 420 , 110 , 480 ) ;       // right upper leg
        line( 90 , 480 , 90 , 540 ) ;         // left lower leg
        line( 110 , 480 , 110 , 540 ) ;       // right lower leg
        line( 80 , 540 , 90 , 540 ) ;         // left foot
        line( 110 , 540 , 120 , 540 ) ;       // right foot
        ellipse( 120+l , 295+l , 3 , 3 ) ;    // eye
        noFill() ;
        arc( 135+l , 310+k , 40 , 30 , radians(475) , radians( 490) ) ;  // mouth 
        
        line( 130 , 550 , 720 , 550 ) ;   
        
        // female stick figure  
        fill( 255 , farbeKleid , farbeKleid ) ;
        triangle( 750+figuremovement3 , 339 , 780+figuremovement3 , 480 , 720+figuremovement3 , 480 ) ;  // dress
        noFill() ;
        strokeWeight(2) ;      
        stroke( HSB , 0 , 0 , colorLine ) ;
        ellipse( 750 + figuremovement3 , 300 , 70 , 70 ) ;         // head
        line( 750+figuremovement3 , 350 , 748+figuremovement3 , 395 ) ;  // right upper arm
        line( 748+figuremovement3 , 395 , 710+figuremovement3 , 456 ) ;  // right lower arm
        line( 740+figuremovement3 , 480 , 740+figuremovement3 , 540 ) ;  // left lower leg
        line( 760+figuremovement3 , 480 , 760+figuremovement3 , 540 ) ;  // right lower leg
        line( 730+figuremovement3 , 540 , 740+figuremovement3 , 540 ) ;  // left foot
        line( 760+figuremovement3 , 540 , 770+figuremovement3 , 540 ) ;  // right foot
        ellipse( 730+figuremovement3 , 295 , 3 , 3 ) ;             // eye
        noFill() ;
        arc( 725+figuremovement3 , 310 , 40 , 30 , radians(380) , radians(440) ) ;  // mouth                 
}
   
void scene4(){         
        n = n + 0.2 ;
        o = o + 0.1 ;
        p = p + 0.7 ;
        colorLine2 = colorLine2 - 1 ;
        background( 255 , 255 , 255 ) ;   
        
        // draw stick figure
        noFill() ;
        strokeWeight(2) ;
        stroke( HSB , 0 , 0 , colorLine2 ) ;
        ellipse( 120 , 310 , 70 , 70 ) ;        // head
        line( 105 , 345 , 100 , 350 ) ;         // neck
        line( 100 , 350 , 100 , 420 ) ;         // body
        line( 100 , 350 , 120-n , 380+o ) ;     // left upper arm
        line( 100 , 350 , 125-n , 395+o ) ;     // right upper arm
        line( 120-n, 380+o , 165-p , 365+p ) ;  // left lower arm
        line( 125-n, 395+o , 194-p , 380+p ) ;  // right lower arm
        line( 100 , 420 , 90 , 480 ) ;          // left upper leg
        line( 100 , 420 , 110 , 480 ) ;         // right upper leg
        line( 90 , 480 , 90 , 540 ) ;           // left lower leg
        line( 110 , 480 , 110 , 540 ) ;         // right lower leg
        line( 80 , 540 , 90 , 540 ) ;           // left foot
        line( 110 , 540 , 120 , 540 ) ;         // right foot
        ellipse( 140 , 315 , 3 , 3 ) ;          // eye
        noFill() ;
        arc( 155 , 320 , 40 , 30 , radians(475) , radians(490) ) ;  // mouth 
        
        line( 130 , 550 , 720 , 550 ) ; 
}  

void scene5(){
  background( 255 , 255 , 255 ) ;
  movingSongtext = movingSongtext + 10 ;
  image( songtext , movingSongtext , 150 ) ;
} 


void scene6(){
  movingHouse = movingHouse + 1 ;
  
  stroke(0) ;
  if ( movingHouse <= 200 ){
    background( 255 , 255 , 255 ) ;
    
    //Mann
    strokeWeight(2) ;
    line( 100 , 500 , 100 , 600 ) ;
    ellipse( 100 , 425 , 150 , 150 ) ;
    line( 100 , 530 , 110 , 600 ) ;
    line( 100 , 530 , 90 , 600 ) ;
    ellipse( 155 , 405 , 5 , 5 ) ;
    noFill() ;
    arc( 170 , 465 , 40 , 30 , radians(220) , radians( 270) ) ;
  
    //Nachbarhaus
    strokeWeight(4) ;
    line( 600-movingHouse , 200 , 600-movingHouse , 450 ) ;
    line( 850-movingHouse , 200 , 850-movingHouse , 450 ) ; 
    line( 570-movingHouse , 200 , 725-movingHouse , 100 ) ;
    line( 880-movingHouse , 200 , 725-movingHouse , 100 ) ;
    line( 550-movingHouse , 450 , 900-movingHouse , 450 ) ;
    image( neighbors , 620-movingHouse , 240 ) ;
  }
}

void scene7(){ 
    movingHouse2 = movingHouse2 + 1 ;
    movement3 =  movement3 + 0.9 ;
    movement4 = movement4 + 0.7 ;
    movement5 = movement5  + 0.2 ;
    movement6 = movement6 + 0.75 ;
   
    background( 255 , 255 , 255 ) ;
  
    // male stick figure
    strokeWeight(2) ;
    ellipse( 100+movingHouse2 , 425-movingHouse2 , 150 , 150 ) ;
    line( 100+movingHouse2 , 500-movingHouse2 , 100+movingHouse2 , 700-movingHouse2 ) ;
    line( 100+movingHouse2 , 530-movingHouse2 , 120+movingHouse2 , 640-movingHouse2 ) ;
    line( 100+movingHouse2 , 530-movingHouse2 , 80+movingHouse2 , 640-movingHouse2 ) ;
    line( 120+movingHouse2 , 640-movingHouse2 , 120+movingHouse2 , 750-movingHouse2 ) ;
    line( 80+movingHouse2 , 640-movingHouse2 , 80+movingHouse2 , 750-movingHouse2 ) ;
    line( 100+movingHouse2 , 700-movingHouse2 , 80+movingHouse2 , 800-movingHouse2 ) ;    // left upper leg
    line( 100+movingHouse2 , 700-movingHouse2 , 120+movingHouse2 , 800-movingHouse2 ) ;   // right upper leg
    line( 80+movingHouse2 , 800-movingHouse2 , 80+movingHouse2 , 900-movingHouse2 ) ;     // left lower leg
    line( 120+movingHouse2 , 800-movingHouse2 , 120+movingHouse2 , 900-movingHouse2 ) ;   // right lower leg
    ellipse( 155+movement4 , 405-movingHouse2 , 5 , 5 ) ;
    ellipse( 175+movement3 , 405-movingHouse2 , 5 , 5 ) ;
    noFill() ;
    arc( 170+movement6 , 465-movingHouse2 , 40 , 30 , radians(220) , radians( 270+movement5) ) ;
 
    // neighborhood
    strokeWeight(4) ;
    line( 400+movingHouse2 , 200-movingHouse2 , 400+movingHouse2 , 450-movingHouse2 ) ;
    line( 650+movingHouse2 , 200-movingHouse2 , 650+movingHouse2 , 450-movingHouse2 ) ; 
    line( 370+movingHouse2 , 200-movingHouse2 , 525+movingHouse2 , 100-movingHouse2 ) ;
    line( 680+movingHouse2 , 200-movingHouse2 , 525+movingHouse2 , 100-movingHouse2 ) ;
    line( 350+movingHouse2 , 450-movingHouse2 , 700+movingHouse2 , 450-movingHouse2 ) ;
    image( neighbors , 420+movingHouse2 , 240-movingHouse2 ) ;
}

void scene8(){
    movingArm = movingArm+ 0.6 ;
    heart1 = heart1 + 5 ;
    
    background( 255 , 255 , 255 ) ;
  
    // male stick figure
    strokeWeight(2) ;
    ellipse( 400 , 125 , 150 , 150 ) ;
    line( 400 , 200 , 400 , 400 ) ;
    imageMode( CORNERS ) ;
    tint( 255 , heart1 ) ;
    image( heart , 367 , 340 , 430 , 390 ) ;
    noTint() ;
    line( 400 , 230 , 420+movingArm , 340-movingArm ) ;
    line( 400 , 230 , 380-movingArm , 340-movingArm ) ;
    line( 420+movingArm , 340-movingArm , 420 , 420-movingArm ) ;
    line( 380-movingArm , 340-movingArm , 380 , 420-movingArm ) ;
    line( 400 , 400 , 380 , 500 ) ;  // left upper leg
    line( 400 , 400 , 420 , 500 ) ;  // right upper leg
    line( 380 , 500 , 380 , 600 ) ;  // left lower leg
    line( 420 , 500 , 420 , 600 ) ;  // right lower leg
    ellipse( 365 , 105 , 5 , 5 ) ;
    ellipse( 445 , 105 , 5 , 5 ) ;
    noFill() ;
    arc( 395 , 165 , 40 , 30 , radians(220) , radians( 330) ) ;
    
    // neighborhood
    strokeWeight(4) ;
    line( 700 , -100 , 700 , 150 ) ;
    line( 950 , -100 , 950 , 150 ) ; 
    line( 670 , -100 , 825 , -200 ) ;
    line( 980 , -100 , 825 , -200 ) ; 
    line( 650 , 150 , 1000 , 150 ) ;
    image( neighbors , 720 , -60 ) ;
}

void scene9(){ 
    heart2 = heart2 + 1 ;   
    farbe2 = farbe2 + 0.5 ; 
    farbe3 = farbe3 + 2.55 ;
    
    background( 255 , 255 , 255 ) ;
    
    // male stick figure
    stroke( HSB , 0 , 0 , 99-farbe2 ) ;
    strokeWeight(2) ;
    ellipse( 400 , 125 , 150 , 150 ) ;
    line( 400 , 200 , 400 , 400 ) ;
    line( 400 , 230 , 456 , 304 ) ;
    line( 400 , 230 , 344 , 304 ) ;
    line( 456 , 306 , 420 , 384 ) ;
    line( 344 , 304 , 380 , 384 ) ;
    line( 400 , 400 , 380 , 500 ) ;  // left upper leg
    line( 400 , 400 , 420 , 500 ) ;  // right upper leg
    line( 380 , 500 , 380 , 600 ) ;  // left lower leg
    line( 420 , 500 , 420 , 600 ) ;  // right lower leg
    ellipse( 365 , 105 , 5 , 5 ) ;
    ellipse( 445 , 105 , 5 , 5 ) ;
    noFill() ;
    arc( 395 , 165 , 40 , 30 , radians(220) , radians( 330) ) ; 
    
    // neighborhood
    strokeWeight(4) ;
    line( 700 , -100 , 700 , 150 ) ;
    line( 950 , -100 , 950 , 150 ) ; 
    line( 670 , -100 , 825 , -200 ) ;
    line( 980 , -100 , 825 , -200 ) ;
    line( 650 , 150 , 1000 , 150 ) ;
    tint( 255 , 255-farbe3 ) ;
    image( neighbors , 720 , -60 ) ;
    noTint() ;
    imageMode( CORNERS ) ;
    image( heart , 367-heart2 , 340-heart2 , 430+heart2 , 390+heart2 ) ;
}

void scene10(){
    tint = tint + 0.6 ;
    
    background( 255 , 255 , 255 ) ;
    image( room , 0 , 0 ) ;
    stroke(0) ;
    ellipseMode( CENTER ) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( 400 , 275 , 75 , 75 ) ;
    noFill() ;
    strokeWeight(1) ;
    ellipse( 375 , 260 , 3 , 3 ) ;
    arc( 363 , 275 , 40 , 30 , radians(410) , radians(440) ) ; 
    strokeWeight(3) ;
    line( 405 , 315 , 450 , 420 ) ;
    line( 450 , 420 , 370 , 410 ) ;
    line( 370 , 410 , 390 , 500 ) ;
    line( 390 , 500 , 380 , 515 ) ;
    line( 450 , 420 , 400 , 402 ) ;
    line( 405 , 430 , 425 , 490 ) ;
    line( 425 , 490 , 415 , 505 ) ;
    
    line( 415 , 340 , 350 , 335 ) ;
    line( 350 , 335 , 390 , 290 ) ; 
    
    line( 415 , 340 , 390 , 330 ) ;
    line( 390 , 330 , 395 , 315 ) ;
    
    tint( 255 , tint ) ;
    imageMode( CORNERS ) ;
    image( stars , 0 , 0 , 800 , 600 ) ;
    noTint() ;
}

void scene11() {
    tint2 = tint2 + 1 ;
    
    background( 255 , 255 , 255 ) ;
    imageMode( CORNERS ) ;
    image( stars , 0 , 0 , 800 , 600 ) ;
    tint( 255 , tint2 ) ;
    imageMode( CORNERS ) ;
    image( moon , 100 , 100 , 300 , 300 ) ;
    noTint() ;
}

void scene12(){
    q = q + 1 ;
    
    image( stars , 0 , 0 , 800 , 600 ) ;
    image( moon , 100 , 100 , 300 , 300 ) ;
    strokeWeight(1) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( 950-q , 500 , 200 , 200 ) ;
    ellipse( 880-q , 440 , 8 , 8 ) ;
    noFill() ;
    arc( 825-q , 500 , 100 , 10 , radians(410) , radians(420) ) ; 
    strokeWeight(5) ;
    line( 1000-q , 590 , 1080-q , 680 ) ;
}

void scene13(){
    r = r + 1 ;  
    
    image( stars , 0 , 0 , 800 , 600 ) ;
    image( moon , 100 , 100 , 300 , 300 ) ;
    strokeWeight(1) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( 650 , 500 , 200 , 200 ) ;
    ellipse( 580 , 440 , 8 , 8 ) ;
    noFill() ;
    arc( 525 , 500 , 100 , 10 , radians(410) , radians(420) ) ; 
    strokeWeight(5) ;
    line( 700 , 590 , 780 , 680 ) ;
    line( 450 , 700-r , 590 , 850-r ) ;
}

void scene14(){
    tint3 = tint3 + 1 ;
    
    noTint() ;
    image( stars , 0 , 0 , 800 , 600 ) ;
    strokeWeight(1) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( 650 , 500 , 200 , 200 ) ;
    ellipse( 580 , 440 , 8 , 8 ) ;
    noFill() ;
    arc( 525 , 500 , 100 , 10 , radians(410) , radians(420) ) ; 
    strokeWeight(5) ;
    line( 700 , 590 , 780 , 680 ) ;
    line( 450 , 500 , 590 , 650 ) ;
    tint( 255 , tint3/3) ;
    image( eyeLeft , -180 , 240 , 120 , 60 ) ;
    image( eyeRight , 300 , 250 , 600 , 50 ) ;
    tint( 255 , 255-tint3 ) ;
    image( moon , 100 , 100 , 300 , 300 ) ;
}

void scene15(){
    s = s + 1 ;
     
    noTint() ;
    image( stars , 0 , 0 , 800 , 600 ) ;
    strokeWeight(1) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( 650 , 500 , 200 , 200 ) ;
    ellipse( 580 , 440 , 8 , 8 ) ;
    noFill() ;
    arc( 525 , 500 , 100 , 10 , radians(410) , radians(420) ) ; 
    strokeWeight(5) ;
    line( 700 , 590 , 780 , 680 ) ;
    line( 450 , 500+s , 590 , 650+s ) ;
    tint( 255 , 85 ) ;
    image( eyeLeft , -180 , 240 , 120 , 60 ) ;
    image( eyeRight , 300 , 250 , 600 , 50 ) ;
    
    tint( 255 , s ) ;
    image( room , 0 , 0 ) ;
    ellipseMode( CENTER ) ;
    fill( s , s , s ) ;
    ellipse( 400 , 275 , 75 , 75 ) ;  
    stroke( HSB , 0 , 0 , s ) ;
    noFill() ;
    strokeWeight(1) ;
    ellipse( 375 , 260 , 3 , 3 ) ;
    arc( 363 , 275 , 40 , 30 , radians(410) , radians(440) ) ; 
    strokeWeight(3) ;
    line( 405 , 315 , 450 , 420 ) ;
    line( 450 , 420 , 370 , 410 ) ;
    line( 370 , 410 , 390 , 500 ) ;
    line( 390 , 500 , 380 , 515 ) ;
    line( 450 , 420 , 400 , 402 ) ;
    line( 405 , 430 , 425 , 490 ) ;
    line( 425 , 490 , 415 , 505 ) ;
    
    line( 415 , 340 , 350 , 335 ) ;
    line( 350 , 335 , 390 , 290 ) ;
    
    line( 415 , 340 , 390 , 330 ) ;
    line( 390 , 330 , 395 , 315 ) ;
}

void scene16(){
    t = t + 0.1 ;
    
    image( room , 0 , 0 ) ;
    ellipseMode( CENTER ) ;
    ellipse( 400 , 275 , 75 , 75 ) ; 
    noFill() ;
    strokeWeight(1) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( 375 , 260+t , 3 , 3 ) ;
    arc( 363 , 275+t , 40 , 30 , radians(410) , radians(440-t*2) ) ; 
    strokeWeight(3) ;
    line( 405 , 315 , 450 , 420 ) ;
    line( 450 , 420 , 370 , 410 ) ;
    line( 370 , 410 , 390 , 500 ) ;
    line( 390 , 500 , 380 , 515 ) ;
    line( 450 , 420 , 400 , 402 ) ;
    line( 405 , 430 , 425 , 490 ) ;
    line( 425 , 490 , 415 , 505 ) ;
    
    line( 415 , 340 , 350 , 335 ) ;
    line( 350 , 335 , 390 , 290 ) ;
    
    line( 415 , 340 , 390 , 330 ) ;
    line( 390 , 330 , 395 , 315 ) ;
}

void scene17(){
    tint4 = tint4 + 0.08 ;
    
    tint( 255 , tint4 ) ;
    imageMode( CORNERS ) ;
    image( whiteImg , 0 , 0 , 800 , 600 ) ;
    noTint() ;
} 

void scene18(){
    u = u + 1 ;
    v = v + 1 ;                      // movement of the sun
    w = 0.0015*(v-400)*(v-400)+50 ;  // movement of the sun
    
    background( 134 , 236 , 255 ) ;
    fill( 180 , 180 , 180 ) ;
    rect( 0 , 300 , 800 , 600 ) ;
    tint( 255 , tint5/3 ) ;
    image( dawn , 0 , 0 , 800 , 400 ) ;
    
    colorMode( HSB , 360 , 100 , 100 ) ;
    if ( v < 400 ){
      H = 3.0/40.0*v+30.0 ;       // function 1 to change color of the sun 
      stroke( H , 100.0 , 100.0 ) ;
      fill( H , 100.0 , 100.0 ) ;
      ellipse( v , w , 45 , 45 ) ;
    }  else {
       H = -3.0/40.0*v+90.0 ;     // function 2 to change color of the sun
       stroke( H , 100.0 , 100.0 ) ;
       fill( H , 100.0 , 100.0 ) ;
       ellipse( v , w , 45 , 45 ) ;  
    }
    colorMode( RGB , 255 , 255 , 255 ) ;
    noTint() ;
    image( skyline , 0 , 0 , 800 , 400 ) ;
    image( couple , 500 , 330 , 540 , 400 ) ;
    if ( z <= 4470 ){
      image( human1 , 100 , 300 , 200 , 500 ) ;
    } else { 
      tint5 = tint5 + 1 ;
      tint( 255 , 255-tint5 ) ;
      image( human1 , 100 , 300 , 200 , 500 ) ;
      noTint() ;
      tint( 255 , tint5/2 ) ;
      image( human2 , 250 , 330 , 300 , 430 ) ;
      image( human3 , 300 , 330 , 350 , 430 ) ;
      tint ( 255, tint5/3 ) ;
      image( sceptical1 , 620 , 320 , 720 , 550 ) ;
      image( sceptical2 , 700 , 320 , 800 , 550 ) ;
      noTint() ;
    }    
    if ( z > 4570 && z <= 4970 ) {
      movingPerson = movingPerson + 1 ;
      if ( z < 4720 ){
        image( laughing , 650 , 600-movingPerson , 775 , 750-movingPerson ) ;
      } else {
        if ( z >= 4820 ){  
          image( laughing , 650 , 200+movingPerson , 775 , 350+movingPerson ) ;
        } else {
          image( laughing , 650 , 450 , 775 , 600 ) ;
        }
      }
    }  
    strokeWeight(2) ;
    stroke(0) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( -50+u , 350 , 70 , 70 ) ;   // head
    line( -50+u , 385 , -50+u , 470 ) ;  // body
    line( -50+u , 400 , -55+u , 445 ) ;  // left upper arm
    line( -50+u , 400 , -45+u , 445 ) ;  // right upper arm
    line( -55+u , 445 , -55+u , 490 ) ;  // left lower arm
    line( -45+u , 445 , -45+u , 490 ) ;  // right lower arm
    line( -50+u , 470 , -60+u , 530 ) ;  // left upper leg
    line( -50+u , 470 , -40+u , 530 ) ;  // right upper leg
    line( -60+u , 530 , -60+u , 590 ) ;  // left lower leg
    line( -40+u , 530 , -40+u , 590 ) ;  // right lower leg
    line( -70+u , 590 , -60+u , 590 ) ;  // left foot
    line( -40+u , 590 , -30+u , 590 ) ;  // right foot
    ellipse( -30+u , 345 , 3 , 3 ) ;     // eye
    noFill() ;
    arc( -15+u , 360 , 40 , 30 , radians(475) , radians( 490) ) ;  // mouth 
}

void scene19(){
    tint6 = tint6 + 1 ;
    
    background( 134 , 236 , 255 ) ;
    fill( 180 , 180 , 180 ) ;
    rect( 0 , 300 , 800 , 600 ) ;
    image( dawn , 0 , 0 , 800 , 400 ) ;
    tint( 255 , tint6 ) ;
    image( moon , 50 , 50 , 100 , 100 ) ;
    noTint() ;  
    fill( 180-tint6 , 180-tint6 , 180-tint6 ) ;
    rect( 0 , 300 , 800 , 600 ) ;
    image( skyline , 0 , 0 , 800 , 400 ) ;
    tint( 255 , 255-tint6 ) ;
    image( couple , 500 , 330 , 540 , 400 ) ;
    image( human2 , 250 , 330 , 300 , 430 ) ;
    image( human3 , 300 , 330 , 350 , 430 ) ;
    image( sceptical1 , 620 , 320 , 720 , 550 ) ;
    image( sceptical2 , 700 , 320 , 800 , 550 ) ;
    noTint() ;
}     

void scene20(){
    tint7 = tint7 + 1 ;
    
    background( 134 , 236 , 255 ) ;
    image( dawn , 0 , 0 , 800 , 400 ) ;
    fill(0) ;
    rect( 0 , 300 , 800 , 600 ) ;
    image( skyline , 0 , 0 , 800 , 400 ) ;
    tint( 255 , tint7 ) ;
    image( stars , 0 , 0 , 800 , 600 ) ;
    noTint() ; 
    if( tint7 <= 200 ){
      image( moon , 50+tint7/4 , 50+tint7/4 , 100+tint7 , 100+tint7 ) ;
    } else {
      image( moon , 100 , 100 , 300 , 300 ) ;
    }
}     

