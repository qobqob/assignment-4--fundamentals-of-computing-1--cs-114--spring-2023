void drawBoard(){
   // creates game board
  line(166, 0, 166, 500);
  line(332, 0, 332, 500);
  line(0, 166, 500, 166);
  line(0, 332, 500, 332);
}

//Gets percents of spaces filled in the board
double getFilled() {
  int sum = 0;
  for(int row = 0; row < 3; row++)
    for (int column = 0; column < 3; column++)
  sum = sum + array2D [row][column];
  return sum / 9;
}

void setup() {
  // sets up size of window 
  size(500, 500);
  BotInput(); //allows computer to play first 
}
