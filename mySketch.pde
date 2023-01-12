bucket b;  
Timer timer;        
rain[] r;     

void setup() {
  size(1500, 600, P2D);
  b = new bucket(30); 
  r = new rain[1000];    
  timer = new Timer(300);    
  timer.start();            
}

int totalrain = 0;
int amount;

void amountCaught() {
	textMode(CENTER);
	textSize(25);
	text("You've caught " + amount + " drops of rain! nice", 550,50);
}


void draw() {
  background(2,62,138);
 	b.setLocation(mouseX, mouseY);
  b.display(); 
  if (timer.isFinished()) {
    r[totalrain] = new rain();
    totalrain ++ ;
    if (totalrain >= r.length) {
    totalrain = 0; 
    }
	  timer.start();
	}
  for (int i = 0; i < totalrain; i++ ) {
    r[i].move();
    r[i].display();
    if (b.intersect(r[i])) {
      r[i].caught();
			amount += 1;
    }
  }
	amountCaught();
}
