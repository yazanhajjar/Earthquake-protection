import 'package:flutter/material.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: const Text('settings screen'),),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: const Center(child: Text('settings screen')),);
  }
}