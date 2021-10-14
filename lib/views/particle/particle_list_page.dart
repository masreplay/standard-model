import 'package:flutter/material.dart';
import 'package:standard_model/data/repository.dart';
import 'package:standard_model/views/particle/particle_list.dart';

class ParticleListPage extends StatelessWidget {
  const ParticleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ParticleList(items: Repository().getAllParticles()),
    );
  }
}

