class Particle{

  int x, y, pWidth, pWidthMax, pHeight, alpha;
  float pColRedMax, pColGreenMax, pColBlueMax, pColRed, pColGreen, pColBlue;
  float omega, omegaStep;
  
  Particle(int x, int y, int diameter){
    this.x = x;
    this.y = y;
    this.pWidthMax = diameter;
    this.pWidth = pWidthMax;
    this.pHeight = diameter;  
    this.pColRedMax = 255;
    this.pColRed = pColRedMax;
    this.pColGreenMax = 255;
    this.pColGreen = pColGreenMax;
    this.pColBlueMax = 255;;
    this.pColBlue = pColBlueMax;
    this.alpha = (int)random(0,255);
    this.omega = random(0,360);
    this.omegaStep = random(0.5, 1.5);
  }

  void drawParticle(){
    fill(pColRed, pColGreen, pColBlue, alpha);
    noStroke();
    ellipse(x, y, pWidth, pHeight);
  }

  void shimmerParticle(){
    this.pColRed = (int)map(pWidth, 0, pWidthMax, bgColRed, pColRedMax);
    this.pColGreen = (int)map(pWidth, 0, pWidthMax, bgColGreen, pColGreenMax);
    this.pColBlue = (int)map(pWidth, 0, pWidthMax, bgColBlue, pColBlueMax);
  }

  void rotateParticle(){
    this.pWidth = (int)(pWidthMax * Math.abs(cos(radians(omega))));
    omega+=omegaStep;
    //println("pWidth: " + pWidth + ", omega: " + omega);
  }
  
  void runParticle(){
    rotateParticle();
    shimmerParticle();
    drawParticle();
  }

}
