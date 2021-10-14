import 'package:flutter/cupertino.dart';
import 'package:standard_model/core/const/colors.dart';
import 'package:standard_model/models/user.dart';

import 'emission.dart';

/// elementary particles
@immutable
class Particle {
  final int id;
  final String name;
  final String speed;
  final List<Interaction> interactions;
  final List<String> otherNames;
  final List<String> symbols;
  final int discoveredYear;
  final bool isAntiparticle;
  final String wikipediaUrl;
  final Statistics statistics;
  final Power power;
  final List<User> theorizedBy;
  final List<String> discoveredBy;
  final int? generation;
  final String? meanLifeTime;
  final String mass;
  final dynamic electricCharge;
  final double spin;

  // TODO(masreplay): handle it as real emission
  final Emission? emission;
  final String? diameter;
  final String description;

  const Particle({
    this.interactions = const [],
    required this.name,
    this.discoveredBy = const [""],
    required this.id,
    required this.speed,
    required this.otherNames,
    required this.symbols,
    required this.discoveredYear,
    required this.isAntiparticle,
    required this.wikipediaUrl,
    required this.statistics,
    this.meanLifeTime = "",
    required this.power,
    required this.theorizedBy,
    required this.generation,
    required this.mass,
    required this.electricCharge,
    required this.spin,
    required this.emission,
    required this.diameter,
    required this.description,
  });
}

enum Power {
  quarks,
  lepton,
  gaugeBosons,
  tensorBosons,
  scalarBosons,
}
enum Statistics {
  fermionic,
  bosonic,
  boseEinstein,
}
enum Interaction {
  strong,
  weak,
  electromagnetic,
  gravity,
  gravitation,
}

List<Color> getPowerColor(Power power) {
  switch (power) {
    case Power.quarks:
      return const [
        AppColors.lightPurple,
        AppColors.purple,
      ];
    case Power.lepton:
      return const [
        AppColors.lightGreen,
        AppColors.green,
      ];
    case Power.gaugeBosons:
      return const [
        AppColors.lightSunglo,
        AppColors.sunglo,
      ];
    case Power.scalarBosons:
      return const [
        AppColors.lightRonchi,
        AppColors.ronchi,
      ];
    case Power.tensorBosons:
      return const [
        AppColors.lightBlue,
        AppColors.blue,
      ];
  }
}
