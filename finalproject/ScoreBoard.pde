class ScoreBoard

{

  int Score;



  void Render ()

  {
    textSize (50);
    fill(0,0,0);
    text ("SCORE", 33, 60);
    textSize (40);
    text (Score, 100, 100);
  }

  void IncreaseScore ()

  {
    Score ++;
  }
}
