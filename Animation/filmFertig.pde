import ddf.minim.* ;
Minim minim ;
AudioPlayer player ;

PImage photo ;
PImage img ;
PImage img2 ;
PImage photo2 ;
PImage photo3 ;
PImage photo4 ;
PImage photo5 ;
PImage photo6 ;
PImage auge1 ;
PImage auge2 ;
PImage bildWeiss ;
PImage skyline ;
PImage himmel;
PImage mensch ;
PImage mensch2 ;
PImage mensch3 ;
PImage mensch4 ;
PImage mensch5 ;
PImage mensch6 ;
PImage auslachen ;
PImage himmelAbend ;

void setup(){
    size( 800 , 600 ) ;  
    background( 255 , 255 , 255 ) ;
    photo = loadImage("bild2.jpg") ;
    img = loadImage("bild3.bmp") ;
    img2 = loadImage("bild4.jpg") ;
    photo2 = loadImage("nachbarn2.bmp") ;
    photo3 = loadImage("herz10.png") ;
    photo4 = loadImage("raum.bmp") ;
    photo5 = loadImage("sternhimmel.jpg") ;
    photo6 = loadImage("mond2.png") ;
    auge1 = loadImage("augebearbeitet1.png") ;
    auge2 = loadImage("augebearbeitet2.png") ;
    bildWeiss = loadImage("bildWeiss.jpg") ;
    skyline = loadImage("skyline1.png") ;
    himmel = loadImage("himmelAbend.png") ;
    mensch = loadImage("mensch.png") ;
    mensch2 = loadImage("mensch2.png") ;
    mensch3 = loadImage("mensch3.png") ;
    mensch4 = loadImage("menschen.png") ;
    mensch5 = loadImage("skepsisBearbeitet1.png") ;
    mensch6 = loadImage("skepsisBearbeitet2.png") ;
    auslachen = loadImage("auslachen.png") ;
    himmelAbend = loadImage("himmelAbend.png") ;
    
    minim = new Minim(this) ;
    player = minim.loadFile("liedBearbeitet.wav") ; 
}

int start = 0 ;
float z = 0 ;   //Zeitmass
float maennchenBewegung1 = 0 ;
float maennchenBewegung2 = 0 ;
float maennchenBewegung3 = 0 ;
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
float farbeLinie = 99 ;
float farbeLinie2 = 99 ;
float farbeKleid = 0 ;
float bewegungImg2 = -420 ;
float hausbewegung = 0 ;
float hausbewegung2 = 0 ;
float bewegung3 = 0 ;
float bewegung4 = 0 ;
float bewegung5 = 0 ;
float bewegung6 = 0 ;
float armbewegung1 = 0 ;
float herz = 0 ;
float herz2 = 0;
float farbe2 = 0;
float farbe3 = 0 ;
float tint = 0 ;
float tint2 = 0 ;
float tint3 = 0 ;
float tint4 = 0 ;
float tint5 = 0 ;
float tint6 = 0 ;
float tint7 = 0 ;
float bewegungMaennchen = 0 ;

void draw(){
    if (mousePressed) {
      start = 1 ;
    }
    if ( start == 1 ){
      player.play() ; 
      z = z + 1 ; 
    }
    if (   z> 0 && z <= 490 ){ 
      intro() ; 
    }
    if  ( z > 490 && z <= 670 ){ 
      szene1() ; 
    }
    if ( z > 670 && z <= 820 ){ 
      szene2() ;
    }
    if ( z > 820 && z <= 920 ){
      szene3() ;  
    }
    if ( z > 920 && z <= 1020 ){
      szene4() ; 
    } 
    if (z > 1020 && z <= 1170 ){
      szene5() ;
    }
    if ( z >1170 && z <= 1370 ){
      szene6() ;
    } 
    if ( z > 1370 && z <= 1670 ){
      szene7() ;
    }
    if ( z > 1670 && z <= 1730 ){
      szene8() ;
    }
    if ( z > 1730 && z <= 1930 ){
      szene9() ; 
    }
    if ( z > 2120 && z <= 2570 ){
      szene10() ; 
    }
    if ( z > 2620 && z <= 2970 ){
      szene11() ; 
    }
    if ( z > 2970 && z <= 3270 ){
      szene12() ; 
    } 
    if ( z > 3370 && z <= 3570 ){
      szene13() ;
    }
    if ( z > 3620 && z <= 3875 ){
      szene14() ; 
    }
    if ( z > 3875 && z <= 4170 ){ 
      szene15() ;
    }
    if ( z > 4170 && z <= 4250 ){
      szene16() ; 
    }
    if ( z > 4250 && z <= 4380 ){
      szene17() ;
    }
    if ( z > 4380 && z <= 5270 ){
      szene18() ; 
    }
    if ( z > 5270 && z <= 5525 ){
      szene19() ;
    }
    if ( z > 5525 && z <= 5780 ){ //szene bis 1:57
      szene20() ;
    }
} 

void intro(){
    f = f - 1.75 ;
    
    image( img , f*1.5 , 300 ) ;   
    image( photo , 600-f*2,70 ) ;  
}

void szene1(){ 
      maennchenBewegung1 = maennchenBewegung1 + 1 ;
      a = a + 0.2 ;    //Mundwinkel+ Armbewegung 2
      c = c + 0.9 ;    //Armbewegung1
      d = d + 0.7 ;    //Armbewegung 3
      e = e + 1.1 ;
      
      background( 255 , 255 , 255 ) ;        
      line( 310-maennchenBewegung1 , 550 , 390+maennchenBewegung1 , 550 ) ;  
      
      //Mann
      noFill() ;
      strokeWeight(2) ;
      ellipse( 280-maennchenBewegung1 , 300 , 70 , 70 ) ;                    //Kopf
      line( 280-maennchenBewegung1 , 335 , 280-maennchenBewegung1 , 420 ) ;  //Körper
      line( 280-maennchenBewegung1 , 350 , 270-maennchenBewegung1 , 395 ) ;  //linker Oberarm
      line( 280-maennchenBewegung1 , 350 , 305-c , 395 ) ;                   //rechter Oberarm
      line( 270-maennchenBewegung1 , 395 , 270-maennchenBewegung1 , 440 ) ;  //linker Arm
      line( 305-c, 395 , 320-d , 420-a ) ;                                   //rechter Arm
      line( 280-maennchenBewegung1, 420 , 270-maennchenBewegung1 ,480 ) ;    //linker Oberschenkel
      line( 280-maennchenBewegung1, 420 , 290-maennchenBewegung1 ,480 ) ;    //rechter Oberschenkel
      line( 270-maennchenBewegung1, 480 , 270-maennchenBewegung1 ,540 ) ;    //linkes Bein
      line( 290-maennchenBewegung1, 480 , 290-maennchenBewegung1 ,540 ) ;    //rechtes Bein
      line( 260-maennchenBewegung1, 540 , 270-maennchenBewegung1 ,540 ) ;    //linker Fuß
      line( 290-maennchenBewegung1, 540 , 300-maennchenBewegung1 ,540 ) ;    //rechter Fuß
      ellipse( 300-maennchenBewegung1 , 295 , 3 , 3 ) ;                      //Auge
      noFill() ;
      arc( 315-maennchenBewegung1 , 310 , 40 , 30 , radians(475) , radians( 530-a) ) ;  //Mund   
      
      //Frau
      strokeWeight(2) ;
      fill( 255 , 0 , 0 ) ;
      triangle( 420+maennchenBewegung1 , 339 , 450+maennchenBewegung1 , 480 , 390+maennchenBewegung1 , 480 ) ;  //Kleid
      noFill() ;
      ellipse( 420+maennchenBewegung1 , 300 , 70 , 70 ) ;                     //Kopf
      line( 420+maennchenBewegung1 , 350 , 418+maennchenBewegung1 , 395 ) ;   //rechter Oberarm
      line( 418+maennchenBewegung1 , 395 , 360+e , 420+a ) ;                  //rechter Arm
      line( 410+maennchenBewegung1 , 480 , 410+maennchenBewegung1 , 540 ) ;   //linkes Bein
      line( 430+maennchenBewegung1 , 480 , 430+maennchenBewegung1 , 540 ) ;   //rechtes Bein
      line( 400+maennchenBewegung1 , 540 , 410+maennchenBewegung1 , 540 ) ;   //linker Fuß
      line( 430+maennchenBewegung1 , 540 , 440+maennchenBewegung1 , 540 ) ;   //rechter Fuß
      ellipse( 400+maennchenBewegung1 , 295 , 3 , 3 ) ;   //Auge

      noFill() ;
      arc( 395+maennchenBewegung1 , 310 , 40 , 30 , radians(380) , radians(440) ) ;  //Mund
}
 
  void szene2(){       
      maennchenBewegung2 = maennchenBewegung2 + 1 ;
      g = g + 0.2 ;
      h = h + 0.1 ;
      i = i + 0.5 ;
      j = j + 0.7 ;
      
      background( 255 , 255 , 255 ) ;  
      //Mann
      noFill() ;
      strokeWeight(2) ;
      ellipse( 100 , 300 , 70 , 70 ) ;          //Kopf
      line( 100 , 335 , 100 , 420 ) ;           //Körper
      line( 100 , 350 , 90+g , 395-h ) ;        //linker Oberarm
      line( 100 , 350 , 145 , 395 ) ;           //rechter Oberarm
      line( 90+g , 395-h , 90+i , 440-i ) ;     //linker Arm
      line( 145 , 395 , 194 , 380 ) ;           //rechter Arm
      line( 100 , 420 , 90 , 480 ) ;            //linker Oberschenkel
      line( 100 , 420 , 110 , 480 ) ;           //rechter Oberschenkel
      line( 90 , 480 , 90 , 540 ) ;             //linkes Bein
      line( 110 , 480 , 110 , 540 ) ;           //rechtes Bein
      line( 80 , 540 , 90 , 540 ) ;             //linker Fuß
      line( 110 , 540 , 120 , 540 ) ;           //rechter Fuß
      ellipse( 120 , 295 , 3 , 3 ) ;            //Auge
      noFill() ;
      arc( 135 , 310 , 40 , 30 , radians(475) , radians( 490) ) ;  //Mund 
       
      line( 130 , 550 , 570+maennchenBewegung2 , 550 ) ; 
      
      //Frau
      fill( 255 , 0 , 0 ) ;
      triangle( 600+maennchenBewegung2 , 339 , 630+maennchenBewegung2 , 480 , 570+maennchenBewegung2 , 480 ) ;  //Kleid
      noFill() ;
      strokeWeight(2) ;
      ellipse( 600+maennchenBewegung2 , 300 , 70 , 70 ) ;                    //Kopf
      line( 600+maennchenBewegung2 , 350 , 598+maennchenBewegung2 , 395 ) ;  //rechter Oberarm
      line( 598+maennchenBewegung2 , 395 , 560+maennchenBewegung2 , 456 ) ;  //rechter Arm
      line( 590+maennchenBewegung2 , 480 , 590+maennchenBewegung2 , 540 ) ;  //linkes Bein
      line( 610+maennchenBewegung2 , 480 , 610+maennchenBewegung2 , 540 ) ;  //rechtes Bein
      line( 580+maennchenBewegung2 , 540 , 590+maennchenBewegung2 , 540 ) ;  //linker Fuß
      line( 610+maennchenBewegung2 , 540 , 620+maennchenBewegung2 , 540 ) ;  //rechter Fuß
      ellipse( 580+maennchenBewegung2 , 295 , 3 , 3 ) ;                      //Auge 
      noFill() ;
      arc( 575+maennchenBewegung2 , 310 , 40 , 30 , radians(380) , radians(440) ) ;  //Mund 
}

void szene3(){  
        maennchenBewegung3 = maennchenBewegung3 + 1 ;  
        k = k + 0.1 ;
        l = l + 0.2 ;
        m = m + 0.05 ;
        farbeLinie = farbeLinie - 1 ;
        farbeKleid = farbeKleid + 2.5 ;
        
        background( 255 , 255 , 255 ) ;   
        
        //Mann
        noFill() ;
        strokeWeight(2) ;
        stroke( HSB , 0 , 0 , 99 ) ;
        ellipse( 100+l , 300+k , 70 , 70 ) ;  //Kopf
        line( 100+m , 335+k , 100 , 350 ) ;   //Hals
        line( 100 , 355 , 100 , 420 ) ;       //Körper
        line( 100 , 350 , 120 , 380 ) ;       //linker Oberarm
        line( 100 , 350 , 145 , 395 ) ;       //rechter Oberarm
        line( 120 , 380 , 165 , 365 ) ;       //linker Arm
        line( 145 , 395 , 194 , 380 ) ;       //rechter Arm
        line( 100 , 420 , 90 , 480 ) ;        //linker Oberschenkel
        line( 100 , 420 , 110 , 480 ) ;       //rechter Oberschenkel
        line( 90 , 480 , 90 , 540 ) ;         //linkes Bein
        line( 110 , 480 , 110 , 540 ) ;       //rechtes Bein
        line( 80 , 540 , 90 , 540 ) ;         //linker Fuß
        line( 110 , 540 , 120 , 540 ) ;       //rechter Fuß
        ellipse( 120+l , 295+l , 3 , 3 ) ;    //Auge
        noFill() ;
        arc( 135+l , 310+k , 40 , 30 , radians(475) , radians( 490) ) ;  //Mund 
        
        line( 130 , 550 , 720 , 550 ) ;   
        
        //Frau  
        fill( 255 , farbeKleid , farbeKleid ) ;
        triangle( 750+maennchenBewegung3 , 339 , 780+maennchenBewegung3 , 480 , 720+maennchenBewegung3 , 480 ) ;  //Kleid
        noFill() ;
        strokeWeight(2) ;      
        stroke( HSB , 0 , 0 , farbeLinie ) ;
        ellipse( 750 + maennchenBewegung3 , 300 , 70 , 70 ) ;                  //Kopf
        line( 750+maennchenBewegung3 , 350 , 748+maennchenBewegung3 , 395 ) ;  //rechter Oberarm
        line( 748+maennchenBewegung3 , 395 , 710+maennchenBewegung3 , 456 ) ;  //rechter Arm
        line( 740+maennchenBewegung3 , 480 , 740+maennchenBewegung3 , 540 ) ;  //linkes Bein
        line( 760+maennchenBewegung3 , 480 , 760+maennchenBewegung3 , 540 ) ;  //rechtes Bein
        line( 730+maennchenBewegung3 , 540 , 740+maennchenBewegung3 , 540 ) ;  //linker Fuß
        line( 760+maennchenBewegung3 , 540 , 770+maennchenBewegung3 , 540 ) ;  //rechter Fuß
        ellipse( 730+maennchenBewegung3 , 295 , 3 , 3 ) ;                      //Auge
        noFill() ;
        arc( 725+maennchenBewegung3 , 310 , 40 , 30 , radians(380) , radians(440) ) ;  //Mund                 
}
   
void szene4(){         
        n = n + 0.2 ;
        o = o + 0.1 ;
        p = p + 0.7 ;
        farbeLinie2 = farbeLinie2 - 1 ;
        background( 255 , 255 , 255 ) ;   
        
        //Mann
        noFill() ;
        strokeWeight(2) ;
        stroke( HSB , 0 , 0 , farbeLinie2 ) ;
        ellipse( 120 , 310 , 70 , 70 ) ;        //Kopf
        line( 105 , 345 , 100 , 350 ) ;         //Hals
        line( 100 , 350 , 100 , 420 ) ;         //Körper
        line( 100 , 350 , 120-n , 380+o ) ;     //linker Oberarm
        line( 100 , 350 , 125-n , 395+o ) ;     //rechter Oberarm
        line( 120-n, 380+o , 165-p , 365+p ) ;  //linker Arm
        line( 125-n, 395+o , 194-p , 380+p ) ;  //rechter Arm
        line( 100 , 420 , 90 , 480 ) ;          //linker Oberschenkel
        line( 100 , 420 , 110 , 480 ) ;         //rechter Oberschenkel
        line( 90 , 480 , 90 , 540 ) ;           //linkes Bein
        line( 110 , 480 , 110 , 540 ) ;         //rechtes Bein
        line( 80 , 540 , 90 , 540 ) ;           //linker Fuß
        line( 110 , 540 , 120 , 540 ) ;         //rechter Fuß
        ellipse( 140 , 315 , 3 , 3 ) ;          //Auge
        noFill() ;
        arc( 155 , 320 , 40 , 30 , radians(475) , radians( 490) ) ;  //Mund 
        
        line( 130 , 550 , 720 , 550 ) ; 
}  

void szene5(){
  background( 255 , 255 , 255 ) ;
  bewegungImg2 = bewegungImg2 + 10 ;
  image( img2 , bewegungImg2 , 150 ) ;
} 


void szene6(){
  hausbewegung = hausbewegung + 1 ;
  
  stroke(0) ;
  if ( hausbewegung <= 200 ){
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
    line( 600-hausbewegung , 200 , 600-hausbewegung , 450 ) ;
    line( 850-hausbewegung , 200 , 850-hausbewegung , 450 ) ; 
    line( 570-hausbewegung , 200 , 725-hausbewegung , 100 ) ;
    line( 880-hausbewegung , 200 , 725-hausbewegung , 100 ) ;
    line( 550-hausbewegung , 450 , 900-hausbewegung , 450 ) ;
    image( photo2 , 620-hausbewegung , 240 ) ;
  }
}

void szene7(){ 
    hausbewegung2 = hausbewegung2 + 1 ;
    bewegung3 =  bewegung3 + 0.9 ;
    bewegung4 = bewegung4 + 0.7 ;
    bewegung5 = bewegung5  + 0.2 ;
    bewegung6 = bewegung6 + 0.75 ;
   
    background( 255 , 255 , 255 ) ;
  
    //Mann
    strokeWeight(2) ;
    ellipse( 100+hausbewegung2 , 425-hausbewegung2 , 150 , 150 ) ;
    line( 100+hausbewegung2 , 500-hausbewegung2 , 100+hausbewegung2 , 700-hausbewegung2 ) ;
    line( 100+hausbewegung2 , 530-hausbewegung2 , 120+hausbewegung2 , 640-hausbewegung2 ) ;
    line( 100+hausbewegung2 , 530-hausbewegung2 , 80+hausbewegung2 , 640-hausbewegung2 ) ;
    line( 120+hausbewegung2 , 640-hausbewegung2 , 120+hausbewegung2 , 750-hausbewegung2 ) ;
    line( 80+hausbewegung2 , 640-hausbewegung2 , 80+hausbewegung2 , 750-hausbewegung2 ) ;
    line( 100+hausbewegung2 , 700-hausbewegung2 , 80+hausbewegung2 , 800-hausbewegung2 ) ;    //linker Oberschenkel
    line( 100+hausbewegung2 , 700-hausbewegung2 , 120+hausbewegung2 , 800-hausbewegung2 ) ;   //rechter Oberschenkel
    line( 80+hausbewegung2 , 800-hausbewegung2 , 80+hausbewegung2 , 900-hausbewegung2 ) ;     //linkes Bein
    line( 120+hausbewegung2 , 800-hausbewegung2 , 120+hausbewegung2 , 900-hausbewegung2 ) ;   //rechtes Bein
    ellipse( 155+bewegung4 , 405-hausbewegung2 , 5 , 5 ) ;
    ellipse( 175+bewegung3 , 405-hausbewegung2 , 5 , 5 ) ;
    noFill() ;
    arc( 170+bewegung6 , 465-hausbewegung2 , 40 , 30 , radians(220) , radians( 270+bewegung5) ) ;
 
    //Nachbarhaus
    strokeWeight(4) ;
    line( 400+hausbewegung2 , 200-hausbewegung2 , 400+hausbewegung2 , 450-hausbewegung2 ) ;
    line( 650+hausbewegung2 , 200-hausbewegung2 , 650+hausbewegung2 , 450-hausbewegung2 ) ; 
    line( 370+hausbewegung2 , 200-hausbewegung2 , 525+hausbewegung2 , 100-hausbewegung2 ) ;
    line( 680+hausbewegung2 , 200-hausbewegung2 , 525+hausbewegung2 , 100-hausbewegung2 ) ;
    line( 350+hausbewegung2 , 450-hausbewegung2 , 700+hausbewegung2 , 450-hausbewegung2 ) ;
    image( photo2 , 420+hausbewegung2 , 240-hausbewegung2 ) ;
}

void szene8(){
    armbewegung1 = armbewegung1+ 0.6 ;
    herz = herz + 5 ;
    
    background( 255 , 255 , 255 ) ;
  
    //Mann
    strokeWeight(2) ;
    ellipse( 400 , 125 , 150 , 150 ) ;
    line( 400 , 200 , 400 , 400 ) ;
    imageMode( CORNERS ) ;
    tint( 255 , herz ) ;
    image( photo3 , 367 , 340 , 430 , 390 ) ;
    noTint() ;
    line( 400 , 230 , 420+armbewegung1 , 340-armbewegung1 ) ;
    line( 400 , 230 , 380-armbewegung1 , 340-armbewegung1 ) ;
    line( 420+armbewegung1 , 340-armbewegung1 , 420 , 420-armbewegung1 ) ;
    line( 380-armbewegung1 , 340-armbewegung1 , 380 , 420-armbewegung1 ) ;
    line( 400 , 400 , 380 , 500 ) ;  //linker Oberschenkel
    line( 400 , 400 , 420 , 500 ) ;  //rechter Oberschenkel
    line( 380 , 500 , 380 , 600 ) ;  //linkes Bein
    line( 420 , 500 , 420 , 600 ) ;  //rechtes Bein
    ellipse( 365 , 105 , 5 , 5 ) ;
    ellipse( 445 , 105 , 5 , 5 ) ;
    noFill() ;
    arc( 395 , 165 , 40 , 30 , radians(220) , radians( 330) ) ;
    
    //Nachbarhaus
    strokeWeight(4) ;
    line( 700 , -100 , 700 , 150 ) ;
    line( 950 , -100 , 950 , 150 ) ; 
    line( 670 , -100 , 825 , -200 ) ;
    line( 980 , -100 , 825 , -200 ) ; 
    line( 650 , 150 , 1000 , 150 ) ;
    image( photo2 , 720 , -60 ) ;
}

void szene9(){ 
    herz2 = herz2 + 1 ;   
    farbe2 = farbe2 + 0.5 ; 
    farbe3 = farbe3 + 2.55 ;
    
    background( 255 , 255 , 255 ) ;
    
    //Mann
    stroke( HSB , 0 , 0 , 99-farbe2 ) ;
    strokeWeight(2) ;
    ellipse( 400 , 125 , 150 , 150 ) ;
    line( 400 , 200 , 400 , 400 ) ;
    line( 400 , 230 , 456 , 304 ) ;
    line( 400 , 230 , 344 , 304 ) ;
    line( 456 , 306 , 420 , 384 ) ;
    line( 344 , 304 , 380 , 384 ) ;
    line( 400 , 400 , 380 , 500 ) ;  //linker Oberschenkel
    line( 400 , 400 , 420 , 500 ) ;  //rechter Oberschenkel
    line( 380 , 500 , 380 , 600 ) ;  //linkes Bein
    line( 420 , 500 , 420 , 600 ) ;  //rechtes Bein
    ellipse( 365 , 105 , 5 , 5 ) ;
    ellipse( 445 , 105 , 5 , 5 ) ;
    noFill() ;
    arc( 395 , 165 , 40 , 30 , radians(220) , radians( 330) ) ; 
    
    //Nachbarhaus
    strokeWeight(4) ;
    line( 700 , -100 , 700 , 150 ) ;
    line( 950 , -100 , 950 , 150 ) ; 
    line( 670 , -100 , 825 , -200 ) ;
    line( 980 , -100 , 825 , -200 ) ;
    line( 650 , 150 , 1000 , 150 ) ;
    tint( 255 , 255-farbe3 ) ;
    image( photo2 , 720 , -60 ) ;
    noTint() ;
    imageMode( CORNERS ) ;
    image( photo3 , 367-herz2 , 340-herz2 , 430+herz2 , 390+herz2 ) ;
}

void szene10(){
    tint = tint + 0.6 ;
    
    background( 255 , 255 , 255 ) ;
    image( photo4 , 0 , 0 ) ;
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
    image( photo5 , 0 , 0 , 800 , 600 ) ;
    noTint() ;
}

void szene11() {
    tint2 = tint2 + 1 ;
    
    background( 255 , 255 , 255 ) ;
    imageMode( CORNERS ) ;
    image( photo5 , 0 , 0 , 800 , 600 ) ;
    tint( 255 , tint2 ) ;
    imageMode( CORNERS ) ;
    image( photo6 , 100 , 100 , 300 , 300 ) ;
    noTint() ;
}

void szene12(){
    q = q + 1 ;
    
    image( photo5 , 0 , 0 , 800 , 600 ) ;
    image( photo6 , 100 , 100 , 300 , 300 ) ;
    strokeWeight(1) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( 950-q , 500 , 200 , 200 ) ;
    ellipse( 880-q , 440 , 8 , 8 ) ;
    noFill() ;
    arc( 825-q , 500 , 100 , 10 , radians(410) , radians(420) ) ; 
    strokeWeight(5) ;
    line( 1000-q , 590 , 1080-q , 680 ) ;
}

void szene13(){
    r = r + 1 ;  
    
    image( photo5 , 0 , 0 , 800 , 600 ) ;
    image( photo6 , 100 , 100 , 300 , 300 ) ;
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

void szene14(){
    tint3 = tint3 + 1 ;
    
    noTint() ;
    image( photo5 , 0 , 0 , 800 , 600 ) ;
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
    image( auge1 , -180 , 240 , 120 , 60 ) ;
    image( auge2 , 300 , 250 , 600 , 50 ) ;
    tint( 255 , 255-tint3 ) ;
    image( photo6 , 100 , 100 , 300 , 300 ) ;
}

void szene15(){
    s = s + 1 ;
     
    noTint() ;
    image( photo5 , 0 , 0 , 800 , 600 ) ;
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
    image( auge1 , -180 , 240 , 120 , 60 ) ;
    image( auge2 , 300 , 250 , 600 , 50 ) ;
    
    tint( 255 , s ) ;
    image( photo4 , 0 , 0 ) ;
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

void szene16(){
    t = t + 0.1 ;
    
    image( photo4 , 0 , 0 ) ;
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

void szene17(){
    tint4 = tint4 + 0.08 ;
    
    tint( 255 , tint4 ) ;
    imageMode( CORNERS ) ;
    image( bildWeiss , 0 , 0 , 800 , 600 ) ;
    noTint() ;
} 

void szene18(){
    u = u + 1 ;
    v = v + 1 ;                      //Bewegung der Sonne
    w = 0.0015*(v-400)*(v-400)+50 ;  //Bewegung der Sonne
    
    background( 134 , 236 , 255 ) ;
    fill( 180 , 180 , 180 ) ;
    rect( 0 , 300 , 800 , 600 ) ;
    tint( 255 , tint5/3 ) ;
    image( himmelAbend , 0 , 0 , 800 , 400 ) ;
    
    colorMode( HSB , 360 , 100 , 100 ) ;
    if ( v < 400 ){
      H = 3.0/40.0*v+30.0 ; //Funktion zum Farbwechsel der Sonne 1  
      stroke( H , 100.0 , 100.0 ) ;
      fill( H , 100.0 , 100.0 ) ;
      ellipse( v , w , 45 , 45 ) ;
    }  else {
       H = -3.0/40.0*v+90.0 ; //Funktion zum Farbwechsel der Sonne 2
       stroke( H , 100.0 , 100.0 ) ;
       fill( H , 100.0 , 100.0 ) ;
       ellipse( v , w , 45 , 45 ) ;  
    }
    colorMode( RGB , 255 , 255 , 255 ) ;
    noTint() ;
    image( skyline , 0 , 0 , 800 , 400 ) ;
    image( mensch4 , 500 , 330 , 540 , 400 ) ;
    if ( z <= 4470 ){
      image( mensch , 100 , 300 , 200 , 500 ) ;
    } else { 
      tint5 = tint5 + 1 ;
      tint( 255 , 255-tint5 ) ;
      image( mensch , 100 , 300 , 200 , 500 ) ;
      noTint() ;
      tint( 255 , tint5/2 ) ;
      image( mensch2 , 250 , 330 , 300 , 430 ) ;
      image( mensch3 , 300 , 330 , 350 , 430 ) ;
      tint ( 255, tint5/3 ) ;
      image( mensch5 , 620 , 320 , 720 , 550 ) ;
      image( mensch6 , 700 , 320 , 800 , 550 ) ;
      noTint() ;
    }    
    if ( z > 4570 && z <= 4970 ) {
      bewegungMaennchen = bewegungMaennchen + 1 ;
      if ( z < 4720 ){
        image( auslachen , 650 , 600-bewegungMaennchen , 775 , 750-bewegungMaennchen ) ;
      } else {
        if ( z >= 4820 ){  
          image( auslachen , 650 , 200+bewegungMaennchen , 775 , 350+bewegungMaennchen ) ;
        } else {
          image( auslachen , 650 , 450 , 775 , 600 ) ;
        }
      }
    }  
    strokeWeight(2) ;
    stroke(0) ;
    fill( 255 , 255 , 255 ) ;
    ellipse( -50+u , 350 , 70 , 70 ) ;   //Kopf
    line( -50+u , 385 , -50+u , 470 ) ;  //Körper
    line( -50+u , 400 , -55+u , 445 ) ;  //linker Oberarm
    line( -50+u , 400 , -45+u , 445 ) ;  //rechter Oberarm
    line( -55+u , 445 , -55+u , 490 ) ;  //linker Arm
    line( -45+u , 445 , -45+u , 490 ) ;  //rechter Arm
    line( -50+u , 470 , -60+u , 530 ) ;  //linker Oberschenkel
    line( -50+u , 470 , -40+u , 530 ) ;  //rechter Oberschenkel
    line( -60+u , 530 , -60+u , 590 ) ;  //linkes Bein
    line( -40+u , 530 , -40+u , 590 ) ;  //rechtes Bein
    line( -70+u , 590 , -60+u , 590 ) ;  //linker Fuß
    line( -40+u , 590 , -30+u , 590 ) ;  //rechter Fuß
    ellipse( -30+u , 345 , 3 , 3 ) ;     //Auge
    noFill() ;
    arc( -15+u , 360 , 40 , 30 , radians(475) , radians( 490) ) ;  //Mund 
}

void szene19(){
    tint6 = tint6 + 1 ;
    
    background( 134 , 236 , 255 ) ;
    fill( 180 , 180 , 180 ) ;
    rect( 0 , 300 , 800 , 600 ) ;
    image( himmelAbend , 0 , 0 , 800 , 400 ) ;
    tint( 255 , tint6 ) ;
    image( photo6 , 50 , 50 , 100 , 100 ) ;
    noTint() ;  
    fill( 180-tint6 , 180-tint6 , 180-tint6 ) ;
    rect( 0 , 300 , 800 , 600 ) ;
    image( skyline , 0 , 0 , 800 , 400 ) ;
    tint( 255 , 255-tint6 ) ;
    image( mensch4 , 500 , 330 , 540 , 400 ) ;
    image( mensch2 , 250 , 330 , 300 , 430 ) ;
    image( mensch3 , 300 , 330 , 350 , 430 ) ;
    image( mensch5 , 620 , 320 , 720 , 550 ) ;
    image( mensch6 , 700 , 320 , 800 , 550 ) ;
    noTint() ;
}     

void szene20(){
    tint7 = tint7 + 1 ;
    
    background( 134 , 236 , 255 ) ;
    image( himmelAbend , 0 , 0 , 800 , 400 ) ;
    fill(0) ;
    rect( 0 , 300 , 800 , 600 ) ;
    image( skyline , 0 , 0 , 800 , 400 ) ;
    tint( 255 , tint7 ) ;
    image( photo5 , 0 , 0 , 800 , 600 ) ;
    noTint() ; 
    if( tint7 <= 200 ){
      image( photo6 , 50+tint7/4 , 50+tint7/4 , 100+tint7 , 100+tint7 ) ;
    } else {
      image( photo6 , 100 , 100 , 300 , 300 ) ;
    }
}     

