import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:standard_model/models/particle.dart';

import '../../components/particle_list_tile.dart';
import '../../router/app_router.gr.dart';

class ParticleGrid extends StatelessWidget {
  final List<Particle> items;
  final EdgeInsets padding;

  const ParticleGrid({
    Key? key,
    required this.items,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding:padding,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return Hero(
          tag: item.id.toString(),
          child: ParticleView(
            item: item,
            gradientColor: getPowerColor(item.power),
            borderWidth: 7.5,
            borderRadius: 40,
            onTap: () {
              AutoRouter.of(context).push(
                ParticleDetailsRoute(id: item.id),
              );
            },
          ),
        );
      },
    );
  }
}
