import 'package:standard_model/models/particle.dart';

import 'data.dart';

class Repository {
  const Repository();

  List<Particle> getParticlesByPower(Power power) {
    return Data.particles.where((element) => element.power == power).toList();
  }

  List<Particle> getAllParticles() {
    return Data.particles;
  }

  Particle getParticleById(int id) {
    return Data.particles.firstWhere((element) => element.id == id);
  }
}
