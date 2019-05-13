PImage background;
int backgroundX;
int backgroundY;

PImage arrowleft;
int arrowleftXs;
int arrowleftYs;

PImage arrowright;
int arrowrightXs;
int arrowrightYs;

PImage arrowdown;
int imagedownXs;
int arrowdownYs;

PImage arrowup;
int arrowupXs;
int arrowupYs;

int Score = 0;

int Y = 0;
int X;

int [] Xs = new int [40];
int [] Ys = new int [40];
int [] Speeds = new int [40];
int [] dir = new int [40];
ScoreBoard sb = new ScoreBoard ();



void setup ()

{

  size (800, 800);

  background = loadImage ("background.jpg");
  background.resize (800, 800);
  arrowleft = loadImage ("arrowleft.png");
  arrowleft.resize (75, 75);
  arrowright = loadImage ("arrowright.png");
  arrowright.resize (75, 75);
  arrowdown = loadImage ("arrowdown.png");
  arrowdown.resize (75, 75);
  arrowup = loadImage ("arrowup.png");
  arrowup.resize (75, 75);


  for (int i = 0; i < 5; i++)  
  {
    Xs [i] = 100 * (i + 1);
    Ys [i] = 100 * (i + 1);
    dir [i] = (int) random (0, 4);
  }

  int i = 0;
  while (i < 40)
  {
    Speeds [i] = (int)random (1, 3);

    i = i + 1;
  }
  
  
  
}

void draw ()

{

  background (background);
  fill (247,10,10);
  rect (0,700, 800,10);

sb.Render ();

  int i = 0;

  while (i < 5)
  {

    if (dir [i] == 0)

    {
       image (arrowright, Xs [i], Ys [i]);

    }

    if (dir [i] == 1)

    {
      image (arrowleft, Xs [i], Ys [i]);
      
    }


    if (dir [i] == 2)

    {
      image (arrowdown, Xs [i], Ys [i]);
      
    }

    if (dir [i] == 3)

    {
      image (arrowup, Xs [i], Ys[i]);
      
    }


    arrowleftYs= arrowleftYs + 2;
    arrowrightYs = arrowrightYs +2;
    arrowdownYs = arrowdownYs +2;
    arrowupYs = arrowupYs +2;
    Ys [i] = Ys [i] + Speeds [i];


    if (Ys [i]> height)
    {
      Ys[i]=0;
      dir [i] = (int) random (0, 3);
    }


    i=i+1;
  }

}


void keyPressed ()

{

  int i = 0;

  while (i<5)
  {
    if (Ys [i] > 700)
    {
      if (keyCode == LEFT)
      {
        if (dir [i] == 0)
        {
          Ys[i]=0;
          dir [i] = (int) random (0, 4);
          sb.IncreaseScore();
        }
      }

      if (keyCode == RIGHT)
      {
        if (dir [i] ==1)
        {
          Ys[i]=0;
          dir [i] = (int) random (0, 4);
          sb.IncreaseScore();
        }
      }
      
      if (keyCode == DOWN)
      {
        if (dir [i] ==2)
        {
          Ys[i]=0;
          dir [i] = (int) random (0, 4);
          sb.IncreaseScore();
        }
      }
      
      if (keyCode == UP)
      {
        if (dir [i] ==3)
        {
          Ys[i]=0;
          dir [i] = (int) random (0, 4);
          sb.IncreaseScore();
        }
      }
      
    
      
    }
    i++;
  }
}
