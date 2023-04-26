int [][] array2D = new int[3][3];
int [][] Usergame = new int[3][3];
int [][] Botgame = new int[3][3];

boolean UserWon = false;
boolean botWon = false;
boolean tie = false;


int count = 0;



//User input array 
void keyPressed() {
  if(USERwin() == false && BOTwin() == false && checkTie() == false) {  
    PlayerInput();
    USERwin();  
    BOTwin();
    checkTie();
    if (USERwin() == false && BOTwin() == false && checkTie() == false) 
      System.out.println("Game is still in progress.");    
} 

else 
{
     System.out.println("Game has ended"); 
}
  
}

public boolean USERwin() {
  // checks for user winning rows, columns, and diagnoals 
  if(Usergame[0][0] == 1 && Usergame[1][0] == 1 && Usergame[2][0] == 1) 
{
  System.out.println("The user won!");
  return true;  
} 

else if(Usergame[0][1] == 1 && Usergame[1][1] == 1 && Usergame[2][1] == 1) 
{
  System.out.println("The user won!");
  return true;
}

else if(Usergame[0][2] == 1 && Usergame[1][2] == 1 && Usergame[2][2] == 1) 
{
  System.out.println("The user won!");
  return true;
}

else if(Usergame[0][0] == 1 && Usergame[0][1] == 1 && Usergame[0][2] == 1) 
{
  System.out.println("The user won!");
  return true;
} 

else if(Usergame[1][0] == 1 && Usergame[1][1] == 1 && Usergame[1][2] == 1) 
{
  System.out.println("The user won!");
  return true;
} 

else if(Usergame[2][0] == 1 && Usergame[2][1] == 1 && Usergame[2][2] == 1) 
{
  System.out.println("The user won!");
  return true;
} 

else if(Usergame[0][0] == 1 && Usergame[1][1] == 1 && Usergame[2][2] == 1) 
{
  System.out.println("The user won!");
  return true;
} 

else if(Usergame[2][0] == 1 && Usergame[1][1] == 1 && Usergame[0][2] == 1) 
{
  System.out.println("The user won!");
  return true;
} 

else return false;
}


public boolean BOTwin() {
  // checks for computer winnings rows, columns, and diagnoals 
if(Botgame[0][0] == 1 && Botgame[1][0] == 1 && Botgame[2][0] == 1) 
{
  System.out.println("The computer won!");
  return true;
} 

else if(Botgame[0][1] == 1 && Botgame[1][1] == 1 && Botgame[2][1] == 1) 
{
  System.out.println("The computer won!");
  return true;
} 

else if(Botgame[0][2] == 1 && Botgame[1][2] == 1 && Botgame[2][2] == 1) 
{
  System.out.println("The computer won!");
  return true;
} 

else if(Botgame[0][0] == 1 && Botgame[0][1] == 1 && Botgame[0][2] == 1) 
{
  System.out.println("The computer won!");
  return true;
} 

else if(Botgame[1][0] == 1 && Botgame[1][1] == 1 && Botgame[1][2] == 1) 
{
  System.out.println("The computer won!");
  return true;
} 

else if(Botgame[2][0] == 1 && Botgame[2][1] == 1 && Botgame[2][2] == 1) 
{
  System.out.println("The computer won!");
  return true;
} 

else if(Botgame[0][0] == 1 && Botgame[1][1] == 1 && Botgame[2][2] == 1) 
{
  System.out.println("The computer won!");
  return true;
} 

else if(Botgame[2][0] == 1 && Botgame[1][1] == 1 && Botgame[0][2] == 1) 
{
  System.out.println("The computer won!");
  return true;
} 

else return false;
}



//Results are tie
boolean checkTie() {
 if (getFilled() < 1) {
  return false;
 }else {
  System.out.println("ITS A TIE");
  return true;
 }
}


void PlayerInput() {
// takes users key input and assigns it to the play position 
  if (key == '0' && array2D[0][0] == 0) {
  drawO(0,0);
  array2D[0][0] = 1;
  Usergame[0][0] = 1;
  } else if (key == '0' && array2D[0][0] == 1) {
    System.out.println("Cant Play There Because Space Is Filled");
    return;
  }

  if (key == '1' && array2D[1][0] == 0) {
  drawO(1,0);
  array2D[1][0]=1;
  Usergame[1][0] = 1;

  } else if (key == '1' && array2D[1][0] == 1) {
    System.out.println("Cant Play There Because Space Is Filled");
    return;
  }
  
  if (key == '2' && array2D[2][0] == 0) {
  drawO(2,0);
  array2D[2][0]=1;
  Usergame[2][0] = 1;
  }
  
else if (key == '2' && array2D[2][0] == 1) {
    System.out.println("Cant Play There Because Space Is Filled");
    return;
  }
  
  if (key == '3' && array2D[0][1] == 0) {
  drawO(0,1);
  array2D[0][1]=1;
  Usergame[0][1] = 1;
  } 
 
else if (key == '3' && array2D[0][1] == 1) {
  System.out.println("Cant Play There Because Space Is Filled");
  return;
}
  
  if (key == '4' && array2D[1][1] == 0) {
  drawO(1,1);
  array2D[1][1]=1;
  Usergame[1][1] = 1;
  } 
  
else if (key == '4' && array2D[1][1] == 1) {
  System.out.println("Cant Play There Because Space Is Filled");
  return;
}
  
  if (key == '5' && array2D[2][1] == 0) {
  drawO(2,1);
  array2D[2][1]=1;
  Usergame[2][1] = 1;
  } 
  
else if (key == '5' && array2D[2][1] == 1) {
  System.out.println("Cant Play There Because Space Is Filled");
  return;
}
  
  if (key == '6' && array2D[0][2] == 0) {
  drawO(0,2);
  array2D[0][2]=1;
  Usergame[0][2] = 1;
  } 
  
  else if (key == '6' && array2D[0][2] == 1) {
    System.out.println("Cant Play There Because Space Is Filled");
    return;
  }
  

 if (key == '7' && array2D[1][2] == 0) {
  drawO(1,2);
  array2D[1][2]=1;
  Usergame[1][2] = 1;
  } 
  
  else if (key == '7' && array2D[1][2] == 1) {
    System.out.println("Cant Play There Because Space Is Filled");
    return;
  }
  

 if (key == '8' && array2D[2][2] == 0) {
  drawO(2,2);
  array2D[2][2]=1;
  Usergame[2][2] = 1;
  } 
  
  else if (key == '8' && array2D[2][2] == 1) {
    System.out.println("Cant Play There Because Space Is Filled");
    return;
  }
  
  
  if (key != '0' &&  key != '1' && key != '2' && key != '3' && key != '4' && key != '5' && key != '6' && key != '7' && key != '8') {
   System.out.println("Incorrect key pressed"); 
  } 
  
else if(getFilled() < 1 && USERwin() == false && BOTwin() == false && checkTie() == false) {
  count++;
  BotInput();
 }
}


void BotInput() {
  // allows computer to randomly play any unfilled positions 
int BotNum = (int)(Math.random() * 9);
  if (BotNum == 0 && array2D[0][0] == 0) {
  drawX(0,0);
  array2D[0][0]=1;
Botgame[0][0]=1;  
} else if (BotNum == 0 && array2D[0][0] == 1) {
    BotInput();
  }
  
  if (BotNum == 1 && array2D[1][0] == 0) {
  drawX(1,0);
  array2D[1][0]=1;
Botgame[1][0]=1;
} else if (BotNum == 1 && array2D[1][0] == 1) {
    BotInput();
  }
  
  if (BotNum == 2 && array2D[2][0] == 0) {
  drawX(2,0);
    array2D[2][0]=1;
    Botgame[2][0]=1;
  } else if (BotNum == 2 && array2D[2][0] == 1) {
    BotInput();
  }
  
  if (BotNum == 3 && array2D[0][1] == 0) {
  drawX(0,1);
  array2D[0][1]=1;
  Botgame[0][1]=1;
  } else if (BotNum == 3 && array2D[0][1] == 1) {
    BotInput();
  }
  
  if (BotNum == 4 && array2D[1][1] == 0) {
  drawX(1,1);
  array2D[1][1]=1;
  Botgame[1][1]=1;
  } else if (BotNum == 4 && array2D[1][1] == 1) {
    BotInput();
  }
  
  if (BotNum == 5 && array2D[2][1] == 0) {
  drawX(2,1);
  array2D[2][1]=1;
  Botgame[1][1]=1;
  } else if (BotNum == 5 && array2D[2][1] == 1) {
    BotInput();
  }
  
  if (BotNum == 6 && array2D[0][2] == 0) {
  drawX(0,2);
  array2D[0][2]=1;
  Botgame[0][2]=1;
  } 
  
  else if (BotNum == 6 && array2D[0][2] == 1) {
    BotInput();
  }
  
 if (BotNum == 7 && array2D[1][2] == 0) {
  drawX(1,2);
  array2D[1][2]=1;
  Botgame[1][2]=1;
  } 
  
  else if (BotNum == 7 && array2D[1][2] == 1) {
    BotInput();
  }
  
 if (BotNum == 8 && array2D[2][2] == 0) {
  drawX(2,2);
  array2D[2][2]=1;
  Botgame[2][2]=1;
  } 
  else if (BotNum == 8 && array2D[2][2] == 1) {
    BotInput();
  }
}
