   Die aDice, bDice, cDice, dDice, eDice, fDice;
   void setup()
   
  {
      noLoop();
      size(400,300);
      aDice = new Die(150, 100);
      bDice = new Die(200,100);
      cDice = new Die (250,100);
      dDice = new Die (150,150);
      eDice = new Die (200,150);
      fDice = new Die (250,150);
  }
  void draw()
  {
      aDice.show();
      bDice.show();
      cDice.show();
      dDice.show();
      eDice.show();
      fDice.show();
  }
  void mousePressed()
  {
     //redraw();
      aDice.roll();
      bDice.roll();
      cDice.roll();
      dDice.roll();
      eDice.roll();
      fDice.roll();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY;
      boolean one;
      boolean two;
      boolean three;
      boolean four;
      boolean five;
      boolean six;
      
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
        double num = Math.random()*6 + 1;
        int numInt = (int)num;
          if (numInt == 1)
          {
            one = true;
          }
          if (numInt == 2)
          {
            two = true;
          }
          if (numInt == 3)
          {
            three = true;
          }
          if (numInt == 4)
          {
            four = true;
          }
          if (numInt == 5)
          {
            five = true;
          }
          if (numInt == 6)
          {
            six = true;
          }
      }
  void show()
  {
    fill(255,255,255);
    square(myX,myY,40);
    fill(255,255,255);
  {
    if(one) {
      fill(0);
      ellipse(myX + 20 , myY + 20 , 7, 7);
    }
    if(two) {
      fill(0);
      ellipse(myX + 10, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 20, 7, 7);
    }
    if(three) {
      fill(0);
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX +20, myY + 10, 7 , 7);
      ellipse(myX + 30, myY + 30, 7, 7);
    }
   if(four) {
     fill(0);
     ellipse(myX + 10, myY + 10, 7 , 7);
     ellipse(myX + 10, myY + 30, 7 , 7);
     ellipse(myX + 30, myY + 10, 7 , 7);
     ellipse(myX + 30, myY + 30, 7, 7);
  }
  if(five) {
    fill(0);
    ellipse(myX + 10, myY + 10, 7 , 7);
    ellipse(myX + 10, myY + 30, 7 , 7);
    ellipse(myX + 30, myY + 10, 7 , 7);
    ellipse(myX + 30, myY + 30, 7 , 7);
    ellipse(myX + 20, myY + 20, 7 , 7);
  }
  if(six) {
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
  }
