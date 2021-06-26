public class Knoten{
  int [][] spielfeld = new int[3][3];
  Knoten [] kindknoten = new Knoten[9];
  int kindknotenzaehler = 0;
  int naechsterSpieler;
  int bewertung = -2;
  Knoten besterKindknoten;

  int aktuellerZugX, aktuellerZugY;
  int besterZugX, besterZugY;

  public Knoten( int [][] feld, int spielernummer, int x, int y ){
    aktuellerZugX = x;
    aktuellerZugY = y;

    int zaehlerX = 0;
    int zaehlerY = 0;
    
    // Kopieren des Spielfeldes
    while( zaehlerX <= 2 ){
      zaehlerY = 0;
      while( zaehlerY <= 2 ){
        spielfeld[zaehlerX][zaehlerY] = feld[zaehlerX][zaehlerY] ;
        zaehlerY++;
      }
      zaehlerX++;
    }
    // Aktuellen Zug eintragen
    spielfeld[x][y] = spielernummer;

    if ( spielernummer == 0 ){
      naechsterSpieler = 1;
    }

    if ( spielernummer == 1 ){
      naechsterSpieler = 2;
    }

    if ( spielernummer == 2 ){
      naechsterSpieler = 1;
    }
  } 

  public void fuegeKindknotenZurListeHinzu( Knoten k ){
    kindknoten[ kindknotenzaehler ] = k;
    kindknotenzaehler++;
  }

  public int gibGewinnerZurueck(){
    int zaehler = 0;
    // vergleiche zeilen
    while ( zaehler <= 2 ){
      if( spielfeld[0][zaehler] == spielfeld[1][zaehler] 
        && spielfeld[0][zaehler] == spielfeld[2][zaehler] 
        && spielfeld[2][zaehler] != 0){
        //println( "Gewinner " + spielfeld[2][zaehler] + " in Zeile " + zaehler + " gefunden." );
        return spielfeld[2][zaehler];
      }
      zaehler++;
    }
    zaehler = 0;
    // vergleiche spalten
    while ( zaehler <= 2 ){
      if( spielfeld[zaehler][0] == spielfeld[zaehler][1] 
        && spielfeld[zaehler][0] == spielfeld[zaehler][2] 
        && spielfeld[zaehler][0] != 0){
        //println( "Gewinner " + spielfeld[zaehler][0] + " in Spalte " + zaehler + " gefunden." );
        return spielfeld[zaehler][0];
      }
      zaehler++;
    }

    // Vergleiche Diagonalen
    if( spielfeld[0][0] == spielfeld[1][1] 
      && spielfeld[1][1] == spielfeld[2][2] 
      && spielfeld[1][1] !=0 ){
      //println( "Gewinner " + spielfeld[1][1] + " in Diagonale gefunden." );
      return spielfeld[1][1];
    }
    if( spielfeld[2][0] == spielfeld[1][1] 
      && spielfeld[1][1] == spielfeld[0][2]     
      && spielfeld[1][1] !=0 ){ 
      //println( "Gewinner " + spielfeld[1][1] + " in Diagonale gefunden." );
      return spielfeld[1][1];
    }
    return 0;
  }

  public void erzeugeAlleKindknoten(){
    if(  gibGewinnerZurueck() == 0 ){
      int zaehlerX = 0;
      int zaehlerY = 0;

      while( zaehlerX <= 2 ){
        zaehlerY = 0;
        while( zaehlerY <= 2 ){
          if ( spielfeld[zaehlerX][zaehlerY] == 0 ){
            Knoten k = new Knoten( spielfeld, naechsterSpieler, zaehlerX, zaehlerY );
            k.erzeugeAlleKindknoten();  
            fuegeKindknotenZurListeHinzu( k );
          }
          zaehlerY++;
        }
        zaehlerX++;
      }
    }
  }

  public int gibBewertungZurueck(){
    // Haben wir einen Blattknoten?
    if ( kindknotenzaehler == 0 ){
      if ( gibGewinnerZurueck() == 2 ){
        bewertung = 1;
      } 
      if ( gibGewinnerZurueck() == 0 ){
        bewertung = 0;
      } 
      if ( gibGewinnerZurueck() == 1 ){
        bewertung = -1;
      } 
    }
    else { 
      // Vergleiche die Bewertungen der Kindknoten
      if ( naechsterSpieler == 1 ){
        // Suche das Minimum
        int zaehler = 0;
        int zwischenbewertung;
        bewertung = 2;
        while( zaehler < kindknotenzaehler ){
          zwischenbewertung = kindknoten[ zaehler ].gibBewertungZurueck();
          if ( zwischenbewertung < bewertung ){
            bewertung = zwischenbewertung;
          }
          zaehler++;
        }
      } 
      else {
        // Suche das Maximum
        int zaehler = 0;
        int zwischenbewertung;
        bewertung = -2;
        while( zaehler < kindknotenzaehler ){
          zwischenbewertung = kindknoten[ zaehler ].gibBewertungZurueck();
          if ( zwischenbewertung > bewertung ){
            bewertung = zwischenbewertung;
          }
          zaehler++;
        }
      }
    }
    return bewertung;
  }


  public void ausgabe(){
    int zaehlerX = 0;
    int zaehlerY = 0;

    while( zaehlerY <= 2 ){
      zaehlerX = 0;
      while( zaehlerX <= 2 ){
        print( "" + spielfeld[zaehlerX][zaehlerY] );
        zaehlerX++;
      }
      println( " " );
      zaehlerY++;
    }
  } 


  public void bestimmeBestenZug(){
    // Finde Kindknoten mit der selben Bewertung, wie die Bewertung dieses Knotens
    int zaehler = 0;

    while ( zaehler < kindknotenzaehler ){
      if ( kindknoten[ zaehler ].bewertung == bewertung ){
        besterKindknoten = kindknoten[ zaehler ];
        // speichere dessen Zug als besten Zug
        besterZugX = besterKindknoten.gibZugXZurueck();
        besterZugY = besterKindknoten.gibZugYZurueck();
      }
      zaehler++;
    }
  }

  public int gibBestenZugXZurueck(){
    return besterZugX;
  }


  public int gibBestenZugYZurueck(){
    return besterZugY;
  }

  public int gibZugYZurueck(){
    return aktuellerZugY;
  }

  public int gibZugXZurueck(){
    return aktuellerZugX;
  }
  
  public void gibGewinnpfadAus(){ 
    println( );
    ausgabe();
    if ( besterKindknoten != null ){
      besterKindknoten.bestimmeBestenZug();
      besterKindknoten.gibGewinnpfadAus();
    }
  }
}