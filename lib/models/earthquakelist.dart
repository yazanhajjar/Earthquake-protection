
class Earthquake {
  final DateTime time;
  final double force;
  final String location;
  Earthquake({required this.time, required this.force, required this.location});
}

List<Earthquake> earthquakeList = [
  Earthquake(
      time:
          DateTime.now(),
      force: 2.5,
      location: 'syria-homs'),
  Earthquake(
      time:
        DateTime.now(),
      force: 4,
      location: 'syria-damascuse'),
        Earthquake(
      time:
        DateTime.utc(1940,9,7),
      force: 6.5,
      location: 'syria-damascuse'),
];

