float dx, dy, raio, angulo;
void setup() {
  size(600, 600);
}

void draw() {
  background(230, 230, 20);
  dx = mouseX - 200;
  dy = mouseY - 300;
  raio = dist(200, 300, mouseX, mouseY);
  if (raio > 20) {
    angulo = atan2(dy, dx);
    dx = returnX(angulo, 20);
    dy=  returnY(angulo, 20);
  }

  fill(255);
  ellipse(200, height/2, 150, 100);
  fill(255);
  ellipse(400, height/2, 150, 100);

  fill(0);
  ellipse(dx+200, dy+300, 50, 50);
  fill(0);
  ellipse(dx+400, dy+300, 50, 50);
}

float returnX(float a, float r) {

  return r*cos(a);
}

float returnY(float a, float r) {

  return r*sin(a);
}
