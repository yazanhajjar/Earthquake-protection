import 'package:earthquake/screens/earthquake_education.dart';
import 'package:earthquake/screens/earthquakequiz.dart';
import 'package:earthquake/screens/fire_education.dart';
import 'package:earthquake/screens/firequiz.dart';
import 'package:earthquake/screens/medicaleducation.dart';
import 'package:earthquake/screens/medicalquiz.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.fromLTRB(1,10,1,10),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,childAspectRatio: 2.5/2
        ),
        children: const [
          MyContainer(title: 'الوقاية من الزلزال',screen: EarthquakeEducation(),),
          MyContainer(title: 'اختبار الوقاية من الزلزال',screen: Earthquakequiz()),
          MyContainer(title: 'الوقاية من الحرائق',screen: FireEducation()),
          MyContainer(title: 'اختبار الوقاية من الحرائق',screen: Firequiz()),
          MyContainer(title: 'الإسعافات الأولية',screen: Medicaleducation()),
          MyContainer(title: 'إختبار عن الإسعافات الأولية',screen: Medicalquiz())
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.title,required this.screen});
  final String title;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (ctx) => screen));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(0.7),
        ),
        margin: const EdgeInsets.all(4),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
