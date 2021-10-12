import 'package:flutter/cupertino.dart';
import 'package:standard_model/models/user.dart';

import 'emission.dart';

/// elementary particles
@immutable
class Particle {
  final int id;
  final String name;
  final String speed;
  final List<String> otherNames;
  final List<String> symbols;
  final int discoveredYear;
  final bool isAntiparticle;
  final String wikipediaUrl;
  final String statistics;
  final Power power;
  final List<User> theorizedBy;
  final int generation;
  final String mass;
  final double electricCharge;
  final double spin;

  // TODO(masreplay): handle it as real emission
  final Emission emission;
  final String diameter;
  final String description;

  const Particle({
    required this.name,
    required this.id,
    required this.speed,
    required this.otherNames,
    required this.symbols,
    required this.discoveredYear,
    required this.isAntiparticle,
    required this.wikipediaUrl,
    required this.statistics,
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
  scalarBosons,
}

List<Color> getPowerColor(Power power) {
  switch (power) {
    case Power.quarks:
      return const [
        Color(0xffeab7fd),
        Color(0xffb784e3),
      ];
    case Power.lepton:
      return const [
        Color(0xffa9ed77),
        Color(0xff73d140),
      ];
    case Power.gaugeBosons:
      return const [
        Color(0xfffd9877),
        Color(0xffe07463),
      ];
    case Power.scalarBosons:
      return const [
        Color(0xfffff67d),
        Color(0xffedc342),
      ];
  }
}

class Seed {
  static const List<Particle> particles = [
    Particle(
      id: 1,
      name: "up",
      speed: "2,200 km/s",
      otherNames: [
        "negaton",
      ],
      symbols: ["u", "β⁻"],
      discoveredYear: 1897,
      isAntiparticle: false,
      wikipediaUrl: "https://en.wikipedia.org/wiki/Electron",
      statistics: "Fermionic",
      power: Power.quarks,
      theorizedBy: [
        User("Richard Laming"),
        User("G.Johnstone Stoney"),
      ],
      generation: 1,
      mass: "0.51099895000(15) MeV/c²",
      electricCharge: -1,
      spin: 1 / 2,
      emission: Emission(
        leftParticles: ["p⁺"],
        rightParticles: ["n⁰", "e⁻", "νe⁰"],
      ),
      diameter: "10⁻¹⁹ m",
      description:
          "Electrons are elementary particles, the negatively charged particles "
          "of our matter. Electrons form the shells of atoms and so define the "
          "chemical properties of the elements. The number of electrons in the "
          "atom is defined by the oppositely charged protons, which attract the "
          "electrons. At the transition of electrons to other shells, "
          "photons are emitted or absorbed. Electric current mostly is the flow "
          "of electrons in a conductive medium (e.g. copper).",
    ),
    Particle(
      id: 2,
      name: "down",
      speed: "2,200 km/s",
      otherNames: [
        "negaton",
      ],
      symbols: ["d", "β⁻"],
      discoveredYear: 1897,
      isAntiparticle: false,
      wikipediaUrl: "https://en.wikipedia.org/wiki/Electron",
      statistics: "Fermionic",
      power: Power.quarks,
      theorizedBy: [
        User("Richard Laming"),
        User("G.Johnstone Stoney"),
      ],
      generation: 1,
      mass: "0.51099895000(15) MeV/c²",
      electricCharge: -1,
      spin: 1 / 2,
      emission: Emission(
        leftParticles: ["p⁺"],
        rightParticles: ["n⁰", "e⁻", "νe⁰"],
      ),
      diameter: "10⁻¹⁹ m",
      description:
          "Electrons are elementary particles, the negatively charged particles "
          "of our matter. Electrons form the shells of atoms and so define the "
          "chemical properties of the elements. The number of electrons in the "
          "atom is defined by the oppositely charged protons, which attract the "
          "electrons. At the transition of electrons to other shells, "
          "photons are emitted or absorbed. Electric current mostly is the flow "
          "of electrons in a conductive medium (e.g. copper).",
    ),
    Particle(
      id: 3,
      name: "electron",
      speed: "2,200 km/s",
      otherNames: [
        "negaton",
      ],
      symbols: ["e⁻", "β⁻"],
      discoveredYear: 1897,
      isAntiparticle: false,
      wikipediaUrl: "https://en.wikipedia.org/wiki/Electron",
      statistics: "Fermionic",
      power: Power.lepton,
      theorizedBy: [
        User("Richard Laming"),
        User("G.Johnstone Stoney"),
      ],
      generation: 1,
      mass: "0.51099895000(15) MeV/c²",
      electricCharge: -1,
      spin: 1 / 2,
      emission: Emission(
        leftParticles: ["p⁺"],
        rightParticles: ["n⁰", "e⁻", "νe⁰"],
      ),
      diameter: "10⁻¹⁹ m",
      description:
          "Electrons are elementary particles, the negatively charged particles "
          "of our matter. Electrons form the shells of atoms and so define the "
          "chemical properties of the elements. The number of electrons in the "
          "atom is defined by the oppositely charged protons, which attract the "
          "electrons. At the transition of electrons to other shells, "
          "photons are emitted or absorbed. Electric current mostly is the flow "
          "of electrons in a conductive medium (e.g. copper).",
    ),
    Particle(
      id: 4,
      name: "electron neutrino",
      speed: "2,200 km/s",
      otherNames: [
        "negaton",
      ],
      symbols: ["e⁻", "β⁻"],
      discoveredYear: 1897,
      isAntiparticle: false,
      wikipediaUrl: "https://en.wikipedia.org/wiki/Electron",
      statistics: "Fermionic",
      power: Power.lepton,
      theorizedBy: [
        User("Richard Laming"),
        User("G.Johnstone Stoney"),
      ],
      generation: 1,
      mass: "0.51099895000(15) MeV/c²",
      electricCharge: -1,
      spin: 1 / 2,
      emission: Emission(
        leftParticles: ["p⁺"],
        rightParticles: ["n⁰", "e⁻", "νe⁰"],
      ),
      diameter: "10⁻¹⁹ m",
      description:
          "Electrons are elementary particles, the negatively charged particles "
          "of our matter. Electrons form the shells of atoms and so define the "
          "chemical properties of the elements. The number of electrons in the "
          "atom is defined by the oppositely charged protons, which attract the "
          "electrons. At the transition of electrons to other shells, "
          "photons are emitted or absorbed. Electric current mostly is the flow "
          "of electrons in a conductive medium (e.g. copper).",
    ),
  ];
}
