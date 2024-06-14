class ParticleController {

  Particle[] particleArray;
  int pDiameter, pCount;

  ParticleController(int pCount, int pDiameter) {
    this.pCount = pCount;
    this.pDiameter = pDiameter;
    particleArray = new Particle[pCount];

    for (int i = 0; i < particleArray.length; i++) {
      particleArray[i] = new Particle((int)random(0, width), (int)random(0, height), pDiameter);
    }
  }

  void runParticles() {
    for (int i = 0; i < particleArray.length; i++) {
      particleArray[i].runParticle();
    }
  }
}
