import 'package:earthquake/earthquakelist.dart';
import 'package:earthquake/education_screen.dart';
import 'package:earthquake/mapscreen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentpagenumber = 0;

  void selectedpage(int val) {
    setState(() {
      currentpagenumber = val;
    });
  }

  Widget activepage = const Listofearthquakes();

//use this function to select the right screen
  void activedpage(int currentpagenumber) {
    if (currentpagenumber == 0) {
      activepage = const Listofearthquakes();
    } else if (currentpagenumber == 1) {
      activepage = const Mapscreen();
    } else {
      activepage = const EducationScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryFixedDim,
        title: Title(
            color: Theme.of(context).colorScheme.primaryFixed,
            child: const Text(
              'Earthquake protection',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      drawer: const Drawer(
        child: DrawerHeader(
          child: Text('earthquake protection'),
        ),
      ),
      body: activepage,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryFixedDim,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'list',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined), label: 'map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'education')
        ],
        currentIndex: currentpagenumber,
        onTap: (value) {
          selectedpage(value);
          activedpage(value);
        },
      ),
    );
  }
}
