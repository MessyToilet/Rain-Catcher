
class bucket {
  float r;    
  float x, y; 
  
	bucket(float tempR) {
    r = tempR;
    x = 0;
    y = 0;
  }

  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  void display() {
    stroke(109,104,117);
		strokeWeight(4);
    noFill();
    ellipse(x, y, r*2, r*2);
		noStroke(0);
		rectMode(CENTER);
		fill(109,104,117);
		rect(0 + x,32 + y,64,64);
  }

  boolean intersect(r d) {
    float distance = dist(x, y, d.x, d.y); 

    if (distance < r + d.r) { 
      return true;
    } 
		else {
      return false;
    }
  }
}
