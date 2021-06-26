/*
  Menschlicher Spieler: 1
 Rechner: 2
 */

PImage feld;
PImage kreis;
PImage kreuz;
PImage verloren;
PImage gewonnen;
PImage unentschieden;
PImage weiss;
PImage in;
PImage robo;
PImage ufo ;

int startzustand = 1;
int spielerGewonneneSpiele =  0;
int computerGewonneneSpiele = 0;
Knoten neu;
int nummer = 0;
int x = 0;
int y = 0;
int[][] spielfeld = new int[3][3];
int zaehler= 0;
int z2 = 0;
int anfang = 0;
int b;
int n = 0;

void setup(){
  size(800, 900);
  
  feld = loadImage("ttt.png");
  kreuz = loadImage("kreuz.png");
  kreis = loadImage("kreis.png");
  gewonnen = loadImage("YouWon.png");
  verloren = loadImage("YouLose.png");
  unentschieden = loadImage("unentschieden.png");
  weiss = loadImage("weiss.png");
  in = loadImage("Spielregeln.png");
  robo = loadImage("robo.png");
  ufo = loadImage("ufos.png");

}


void draw() {
  
  background(255);
  fill(0);
  textSize(70); 
  text("TIC TAC TOE", 100, 70);
  
  startpage();
  instruction();
  starteSpiel();
  
  if(startzustand == 0){
  frameRate(50);
  noStroke();
  fill(255);
  rect(0,300,900,700);
  fill(0, 0, 0);
  feld.resize(650, 650);
  image(feld, 75, 75);  
  
  fill(255,0,0);
  stroke(5);
  rect(100,80,170,50);
    
  if (pmouseX <= 270 && pmouseX >= 100 && pmouseY <= 130 && pmouseY >= 80 ) {
      fill(225,200,200);
      stroke(5);
      rect(100,80,170,50);
  } 
    
  fill(0);
  textSize(30);
  text( "END GAME",110,120);
 
  visualisiereArray(spielfeld);
  
  noStroke();
  fill(255, 255, 255);
  rect( 650, 40, 70, 40);
  
  fill(0, 0, 0);
  textSize(30);
  text("YOU  " +spielerGewonneneSpiele + " : " + computerGewonneneSpiele + "  PC", 570, 70);
  
  visualisiereArray(spielfeld);  

  }
}


public void visualisiereArray(int[][] zahlen) {
  int x = 0 ;
  int y = 0 ;
  if( zaehler < 3 ){
    while ( y < 3 ) {
      x = 0 ;
      while ( x < 3 ) {
        if (zahlen[x][y] == 0) {
          weiss.resize(120, 120);
          image(weiss, 120+ 225*x, 150+200*y);
        } else{
        if ( zahlen[x][y] == 1 ) {
          kreuz.resize(120, 120);
          image(kreuz, 120+ 225*x, 150+200*y);
        } else {
          if ( zahlen[x][y] == 2 ) {
            kreis.resize(120, 120);
            image(kreis, 120 + 225 * x, 150+200 *y);
          }
        }
      }  
        x++ ;
      }
      y++ ;
    }
    noStroke();
    fill(255);
    rect(600,75,200,30);
    fill(0);
    textSize(15);
    int z = zaehler + 1;
    text("ROUND " + z + " OUT OF 3", 610,98);
    
      fill(255,0,0);
      stroke(5);
      rect(300,80,100,50);

      if (pmouseX <= 400 && pmouseX >= 300 && pmouseY <= 130 && pmouseY >= 80 ) {
        fill(225,200,200);
        stroke(5);
        rect(300,80,100,50);
      } 
    
  fill(0);
  textSize(30);
  text( "NEXT",310,120);
  
   } else {           
     fill(255,255,255);
     rect( 0,400,800,900);
     
    fill(0);
    textSize(15);
    text("ROUND 3 OUT OF 3", 610,98);

    beendeSpiel();
  } 
}

void mouseClicked() { 
  if( startzustand == 1){
    if(mouseX <665 && mouseX > 435 && mouseY < 420 && mouseY > 350){ 
        startzustand =0;
      } else {
        if(mouseX < 665 && mouseX > 435 && mouseY <  720 && mouseY > 650){
          startzustand = 2;
      }
    }
  } else {
    if( startzustand == 2){
          if(mouseX < 750 && mouseX > 650 && mouseY < 850 && mouseY > 800){
            startzustand =1;
      }
    } else {
      if( n == 0){
      if(startzustand == 0){
        if (mouseX <= 273 && mouseX >= 100 && mouseY <=300 && mouseY >= 130 ) {
          lagereAus( spielfeld, 0, 0 );
        }
        if (mouseX <=476 && mouseX >= 298 && mouseY <= 300 && mouseY >= 130 ) {
          lagereAus( spielfeld, 1, 0 );
        }  
        if (mouseX <= 725 && mouseX >= 495 && mouseY <= 300 && mouseY >= 130) {
          lagereAus( spielfeld, 2, 0 );
        }  
        if (mouseX <= 277 && mouseX >= 100 && mouseY <= 481 && mouseY >= 325) {
          lagereAus( spielfeld, 0, 1 );
        } 
        if (mouseX <= 476 && mouseX >= 300 && mouseY <=  485 && mouseY >= 325 ) {
          lagereAus( spielfeld, 1, 1 );
        } 
        if (mouseX <= 480&& mouseX >= 300 && mouseY <= 710 && mouseY >= 500) {
          lagereAus( spielfeld, 1, 2 );
        }         
        if (mouseX <= 286 && mouseX >= 100 && mouseY <= 710 && mouseY >= 490 ) {
          lagereAus( spielfeld, 0, 2 );
        }  
        if (mouseX <= 725 && mouseX >= 495&& mouseY <= 485 && mouseY >= 320) {
          lagereAus( spielfeld, 2, 1 );
        }  
        if (mouseX <= 725 && mouseX >= 495 && mouseY <= 710 && mouseY >= 500 ) {
          lagereAus( spielfeld, 2, 2 );
        }  
        if (mouseX <= 270 && mouseX >= 100 && mouseY <= 130 && mouseY >= 80 ) {
          neuesSpiel();
          restart();
          startzustand  = 1;
        }      
        if (mouseX <= 400 && mouseX >= 300 && mouseY <= 130 && mouseY >= 80 ) {
          fill(0);
          textSize(30);
          frameRate(0.5);
          text("You first have to finish this round!", 150, 750);
        } 
      }
      }else {
        if (mouseX <= 400 && mouseX >= 300 && mouseY <= 130 && mouseY >= 80 ) {
          println("ja");
           n = 0;
          neuesSpiel();
        } 
       } 
        if (mouseX <= 270 && mouseX >= 100 && mouseY <= 130 && mouseY >= 80 ) {
          neuesSpiel();
          restart();
          startzustand  = 1;
        }      
    }
  }
}

void macheGegenzug(Knoten neu) {
  int bewertung =  neu.gibBewertungZurueck();
  neu.bestimmeBestenZug();
  println( neu.besterZugX);
  int xComp = neu.gibBestenZugXZurueck();
  int yComp = neu.gibBestenZugYZurueck();
  Knoten gegen = new Knoten( spielfeld, 2, xComp, yComp);
  spielfeld[xComp][yComp] = 2;
  gegen.erzeugeAlleKindknoten();
  sucheGewinner(gegen);
  
  visualisiereArray(spielfeld);
}

void sucheGewinner(Knoten k) {
  int g = k.gibGewinnerZurueck();
  if ( g != 0) {
    if ( g == 1) {   
      frameRate(30);
      spielerGewonneneSpiele ++;
      fill(0);
      textSize(30);
      frameRate(0.4);
      text("You won this round!",200,800);
       text("Click 'NEXT' and then choose a field to start the next round!", 50, 870);
       n = 1;
    } else {
      if (g == 2) {
        frameRate(30);
        computerGewonneneSpiele++; 
        fill(0);
        textSize(30);
        frameRate(0.4);
        text("The computer won this round!",175,800);
        textSize(25);
       text("Click 'NEXT' and then choose a field to start the next round!", 50, 870);
         n = 1;
      }
    }
  } else {
    z2++; 
   if( z2 == 8){
     if( k.gibGewinnerZurueck() == 0){
       frameRate(0.4);
       fill(0);
       textSize(30);
       text("Nobody won this round!",200,800);
       textSize(25);
       text("Click 'NEXT' and then choose a field to start the next round!", 50, 870);
       n = 1;
     }
   }
 }
}

void lagereAus(int[][] spielfeld, int x, int y) {
  if( spielfeld[x][y] == 0){
    spielfeld[x][y] = 1;
    fill(255,255,255);
    noStroke();
    rect(100,720,700,100);
    neu = new Knoten( spielfeld, 1, x, y );
    neu.erzeugeAlleKindknoten(); 
    macheGegenzug(neu); 
    
    sucheGewinner(neu);
  } else {
    textSize(30);
    frameRate(0.5);
    text("Please choose another one!", 200,750);
  }
}

void neuesSpiel() {
    int x = 0;
    int y = 0;
    z2 = 0;
    while ( y < 3 ) {
      x = 0;
      while ( x < 3 ) {
        spielfeld[x][y] = 0;
        x++;
      }
      y++;
    }
    visualisiereArray(spielfeld);
    zaehler++;
}

void beendeSpiel() {
  fill(255, 255, 255);
  noStroke();
  rect(0, 100, 800, 800);

  if (  spielerGewonneneSpiele > computerGewonneneSpiele ) {
  } else {
    if (  spielerGewonneneSpiele < computerGewonneneSpiele ) {
      image( verloren, 100, 200);
    } else {
      image( unentschieden, 100, 200);
    }
  }  
  
  fill(255,0,0);
  stroke(5);  
  rect(300,720,200,70); 

  if(mouseX  > 300 && mouseX < 500 && mouseY < 790 && mouseY > 720){
    stroke(5);    
    fill(225,200,200); 
    rect(300,720,200,70);  
  }  
  fill(0);
  textSize(30);              
  text("RESTART", 335, 765);
  if(mousePressed){
    if(mouseX  > 300 && mouseX < 500 && mouseY < 790 && mouseY > 720){
      restart();
    }
  }
  
    fill(255,0,0);
    stroke(5);
    rect(100,80,170,50);
            
    if (pmouseX <= 270 && pmouseX >= 100 && pmouseY <= 130 && pmouseY >= 80 ) {
      fill(225,200,200);
      stroke(5);
      rect(100,80,170,50);
    } 
    
    fill(0);
    textSize(30);
    text( "END GAME",110,120);
    
}

void restart(){
  spielerGewonneneSpiele =  0;
  computerGewonneneSpiele = 0;
  zaehler = -1;
  z2 = 0;  
  fill(0, 0, 0);
  feld.resize(650, 650);
  image(feld, 75, 75); 
  neuesSpiel();
}

void startpage(){
  if( startzustand == 1){
    noStroke();
    fill(255);
    rect(0,100,900,800);
    
    image( robo, 0,200);
    ufo.resize( 400,175);
    
    image(ufo, 350,75);
    
    fill(255,0,0);
    stroke(5);
    rect(435,350,230,70);
 
    if(pmouseX <665 && pmouseX > 435 && pmouseY < 420 && pmouseY > 350){ 
      fill(225,200,200);
      stroke(5);
      rect(435,350,230,70);    
    }
      
    fill(0);
    textSize(30);
    text( "START", 505,395);
 
    fill(255,0,0);
    stroke(5);
    rect(435,650,230,70);
        
    if(pmouseX < 665 && pmouseX > 435 && pmouseY <  720 && pmouseY > 650){
      fill(225,200,200);
      stroke(5);
      rect(435,650,230,70);
      }
      
    fill(0);
    textSize(30);
    text( "INSTRUCTION", 455,695);        
  } 
}

void starteSpiel(){
  if(startzustand == 0){
    noStroke();
    fill(255);
    rect(0,100,800,800);
  }
}

void instruction(){
  if( startzustand == 2){
    noStroke();
    fill(255);
    rect(0,100,800,800);
    image( in, 0,75);
        
    fill(255,0,0);
    stroke(5);
    rect(650,800,100,50);
    
    if(pmouseX < 750 && pmouseX > 650 && pmouseY < 850 && pmouseY > 800){
      fill(225,200,200);
      stroke(5);
      rect(650,800,100,50);
    }    
   
    fill(0);
    textSize(30);
    text( "BACK", 660,840);
  }
}  
