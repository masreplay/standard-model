/// p⁺ → n⁰ + e⁻ + νe⁰
class Emission {
  final List<String> leftParticles;
  final List<String> rightParticles;

  const Emission({
    required this.leftParticles,
    required this.rightParticles,
  });
}