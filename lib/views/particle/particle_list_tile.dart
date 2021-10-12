import 'package:flutter/material.dart';
import 'package:standard_model/models/particle.dart';



class ParticleListTile extends StatelessWidget {
  final VoidCallback onTap;
  final Particle item;

  const ParticleListTile({
    Key? key,
    required this.onTap,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: getPowerColor(item.power),
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              item.symbols.first,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
