import 'package:flutter/material.dart';
import 'package:standard_model/models/particle.dart';
import 'package:standard_model/views/particle/particle_grid.dart';
import 'package:standard_model/views/particle/particle_list.dart';

class ParticleListPage extends StatelessWidget {
  const ParticleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ParticleList(items: Seed.particles),
    );
  }
}
class ParticleGridPage extends StatelessWidget {
  const ParticleGridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ParticleGrid(items: Seed.particles),
    );
  }
}
