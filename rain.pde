class rain {
  float x, y;   
	float speed;  
  float r;     
	
  rain() {
    r = 8;                   
    x = random(width);       
    y = -r*4;                
    speed = random(1, 5);    
  }

  void move() {
   
    y += speed;
  }

  boolean reachedBottom() {
   
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  void display() {

    fill(72,202,228);
    noStroke();
    for (int i = 2; i < r; i++ ) {
      ellipse(x, y + i*4, i*2, i*2);
    }
  }

  void caught() {
    speed = 0;
    y = -1000;
  }
}
