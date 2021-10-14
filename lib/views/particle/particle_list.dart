import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:standard_model/router/app_router.gr.dart';
import 'package:standard_model/models/particle.dart';
import 'package:standard_model/views/particle/particle_list_tile.dart';

class ParticleList extends StatelessWidget {
  final List<Particle> items;

  const ParticleList({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final item = items[index];
        return ParticleListTile(
          item: item,
          onTap: () {
            AutoRouter.of(context).push(
              ParticleDetailsRoute(id: item.id),
            );
          },
        );
      },
    );
  }
}
