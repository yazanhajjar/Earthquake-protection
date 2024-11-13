import 'package:earthquake/models/education.dart';
import 'package:earthquake/screens/firequiz.dart';
import 'package:earthquake/screens/information_screen.dart';
import 'package:flutter/material.dart';

class FireEducation extends StatelessWidget {
  const FireEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return InformationScreen(
      title: 'Fires Education',
      information: fireInformation, screen: const Firequiz(),
    );
  }
}
