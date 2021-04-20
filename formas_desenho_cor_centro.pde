int form;//seletor de forma geometrica
color corLinha;//cor da forma

void setup(){
colorMode(HSB,360,100,100,100);
size (600,600);
form = 0;
corLinha = color (360,0,0,30);
background(0,0,100);
}

void draw(){
  noFill();
  if(mouseButton==LEFT){
    pushMatrix();
    translate(width/2,height/2);

    int tamanhoForma = (int)map(mouseY,0,height,3, 10);
    int radius = mouseX-width/2;
    float angle = TWO_PI/tamanhoForma;

    strokeWeight(2);
    stroke(corLinha);

    beginShape();
    for (int i=0; i<=tamanhoForma; i++){
      float x = 0 + cos(angle*i) * radius;
      float y = 0 + sin(angle*i) * radius;
      vertex(x, y);
    }
    endShape();
    
    popMatrix();
  }else if(mouseButton==RIGHT){
    stroke(corLinha);
    pushMatrix();
    translate(width/2,height/2);
    circle(0,0,mouseX-width/2);
    popMatrix();
  }
}
void keyPressed(){
  switch (key) {
    case '1':
      corLinha = color (139,66,100,30);
      break;
    case '2':
      corLinha = color (70,66,100,30);
      break;
    case '3':
      corLinha = color (258,66,100,30);
      break;
    case '4':
      corLinha = color (300,66,100,30);
      break;
    case '5':
      corLinha = color (random(360),66,100,30);
      break;
     default:
       background (255,0,255);
       break;
}
}
