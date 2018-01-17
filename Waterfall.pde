PVector location;
PVector velocity;

float circlex = width/3*7;
float circley = height*4;

int amount = 200;

ArrayList<Water> m;
Water water;

void setup()
{
  size(450, 700);
  background(0);

  water = new Water(new PVector(random(150, width-150), 0), new PVector(random(-1, 1), random(-1, 1)));
  
  m = new ArrayList<Water>();
  
  for (int i = 0; i < amount; i++)
  {
   m.add(new Water(new PVector(random(150, width-150), 0), new PVector(random(-1, 1), random(-1, 1)))); 
  }
}

void draw()
{
  background(0);
  noFill();
  stroke(255);
  ellipse(circlex, circley, 100, 100);

  for (Water a : m)
  {
    a.Draw();
    a.Add();
    a.Collison();
  }
}