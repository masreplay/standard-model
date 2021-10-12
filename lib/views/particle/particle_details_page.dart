import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:standard_model/components/particle_list_tile.dart';
import 'package:standard_model/models/particle.dart';

import '../../router/app_router.gr.dart';

class ParticleDetailsPage extends StatefulWidget {
  final int id;

  const ParticleDetailsPage({
    Key? key,
    @PathParam() required this.id,
  }) : super(key: key);

  @override
  State<ParticleDetailsPage> createState() => _ParticleDetailsPageState();
}

class _ParticleDetailsPageState extends State<ParticleDetailsPage> {
  late Particle item;

  @override
  void initState() {
    super.initState();
    item = Seed.particles.firstWhere((element) => element.id == widget.id);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Hero(
                  tag: item.id.toString(),
                  child: ParticleView(
                    item: item,
                    gradientColor: getPowerColor(item.power),
                    borderWidth: 7.5,
                    borderRadius: 40,
                    onTap: () {},
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

