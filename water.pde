class Water
{
  float vy = 0;
  float gravity = 0.8;
  float bounce = -1;

  PVector _location;
  PVector _velocity;
  float size = random(4, 9);

  Water(PVector location, PVector velocity)
  {
    _location = new PVector(location.x, location.y);
    _velocity = new PVector (velocity.x, velocity.y);
  }

  void Draw()
  {
    fill(0, 100, 255);
    noStroke();
    ellipse(_location.x, _location.y, size, size);

    vy += gravity;
    _location.y += vy;

    if (_location.y > height - 15)
    {
      vy *= bounce;
    }
    println(vy);
  }

  void Add()
  {
    _location.add(_velocity);
  }

  void Collison()
  {
    if (_location.x > width + 20 || _location.x < -20)
    {
      _location.x = width/2;
      _location.y = -100;
    }
    for (int i = 0; i < amount; i++)
    {
      if (dist(_location.x, _location.y, circlex, circley) == 0);
      {
        vy *= bounce;
      }
    }
  }
}