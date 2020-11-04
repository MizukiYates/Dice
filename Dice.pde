   Die aDice, bDice, cDice, dDice, eDice, fDice;
   void setup()
   
  {
      noLoop();
      size(400,300);
      textAlign(CENTER, CENTER);
      aDice = new Die (150, 100);
      bDice = new Die (200,100);
      cDice = new Die (250,100);
      dDice = new Die (150,150);
      eDice = new Die (200,150);
      fDice = new Die (250,150);
  }
  void draw()
  {
      background(200);
      int total = 0;
      for (int y = 100; y <= 200; y += 50)
      {
        for (int x = 150; x <= 250; x += 50)
        {
          Die aDice = new Die(x,y);
          aDice.show();
          if (aDice.numInt == 1)
          {
          total = total++;
          }
          else if (aDice.numInt == 2)
          {
            total = total + 2;
          }
          else if (aDice.numInt == 3)
          {
            total = total + 3;
          }
          else if (aDice.numInt == 4)
          {
            total = total + 4;
          }
          else if (aDice.numInt == 5)
          {
            total = total + 5;
          }
          else if (aDice.numInt == 6)
          {
            total = total + 6;
          }
        }
      }
      fill (0,0,0);
       text ("total roll = " + total, 50, 50);
      
      
  }
  void mousePressed()
  {
      redraw();
      aDice.roll();
      
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, numInt;
      
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
         numInt = (int) (Math.random()*6) + 1;
      }
  void show()
  {
    fill(255,255,255);
    square(myX,myY,40);
    fill(255,255,255);
  
    if(numInt == 1) {
      fill(0);
      ellipse(myX + 20 , myY + 20 , 7, 7);
    }
    else if(numInt == 2) {
      fill(0);
      ellipse(myX + 10, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 20, 7, 7);
    }
    else if(numInt == 3) {
      fill(0);
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX +20, myY + 10, 7 , 7);
      ellipse(myX + 30, myY + 30, 7, 7);
    }
   else if(numInt == 4) {
     fill(0);
     ellipse(myX + 10, myY + 10, 7 , 7);
     ellipse(myX + 10, myY + 30, 7 , 7);
     ellipse(myX + 30, myY + 10, 7 , 7);
     ellipse(myX + 30, myY + 30, 7, 7);
  }
  else if(numInt == 5) {
    fill(0);
    ellipse(myX + 10, myY + 10, 7 , 7);
    ellipse(myX + 10, myY + 30, 7 , 7);
    ellipse(myX + 30, myY + 10, 7 , 7);
    ellipse(myX + 30, myY + 30, 7 , 7);
    ellipse(myX + 20, myY + 20, 7 , 7);
  }
  else if(numInt == 6) {
    fill(0);
    ellipse(myX + 9, myY + 10, 7 , 7);
    ellipse(myX + 9, myY + 30, 7 , 7);
    ellipse(myX + 31, myY + 10, 7 , 7);
    ellipse(myX + 31, myY + 30, 7 , 7);
    ellipse(myX + 20, myY + 10, 7 , 7);
    ellipse(myX + 20, myY + 30, 7 , 7);
        }      
    }
  }
