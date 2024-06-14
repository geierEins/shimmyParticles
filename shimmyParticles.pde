int bgColRed, bgColGreen, bgColBlue;
ParticleController pc;
Button resetButton, saveButton;
ScreenshotHelper screenshotHelper;

void setup() {
  size(1900, 1000);
  frameRate(60);
  int frameThickness = 50;
  bgColRed = 15;
  bgColGreen = 15;
  bgColBlue = 15;
  resetButton = new Button(width/2 - 80, height-(frameThickness/2), 100, 25, "RESET");
  saveButton = new Button(width/2 + 80, height-(frameThickness/2), 100, 25, "SAVE");
  pc = new ParticleController(600, 3);
  screenshotHelper = new ScreenshotHelper();
}


void draw() {
  background(bgColRed, bgColGreen, bgColBlue);
  pc.runParticles();
  resetButton.drawButton();
  saveButton.drawButton();
}

void mouseClicked() {
  // RESET
  if (resetButton.mouseIsOverButton()) {
    setup();
  }

  // SAVE
  if (saveButton.mouseIsOverButton()) {
    saveButton.hide();
    resetButton.hide();
    draw();
    screenshotHelper.shot();
    saveButton.retrieve();
    resetButton.retrieve();
  }
}
