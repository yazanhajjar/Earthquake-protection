import 'package:earthquake/models/education.dart';
import 'package:earthquake/screens/earthquakequiz.dart';
import 'package:earthquake/screens/information_screen.dart';
import 'package:flutter/material.dart';

class EarthquakeEducation extends StatelessWidget {
  const EarthquakeEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return InformationScreen(
      title: 'Earthquake Education',
      information: earthquakeInformation, screen: const Earthquakequiz(),
    );
  }
}
