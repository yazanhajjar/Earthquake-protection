import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:sensors_plus/sensors_plus.dart';

class MesureScreen extends StatefulWidget {
  const MesureScreen({super.key});

  @override
  State<MesureScreen> createState() => _MesureScreenState();
}

class _MesureScreenState extends State<MesureScreen> {
  static const maxvalue = 30;
  int second = maxvalue;
  Timer? timer;
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;
  double force = 0;
  double maxforce = 0;
  int counter = 0;
StreamSubscription<GyroscopeEvent>? _gyroscopeSubscription;


  void _startTimer() {
    maxforce = 0;
    counter++;
    resetTimer();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (second > 0) {
          second--;
        } else {
          stoptimer(reset: false);
        }
      });
    });
  }

  resetTimer() => setState(() {
        second = maxvalue;
      });

  stoptimer({reset = true}) {
    if (reset) {
      resetTimer();
    }
    timer?.cancel();
  }

  get isrunning {
    bool running = timer == null ? false : timer!.isActive;
    return running;
  }

  double get ourforce {
    setState(() {
      double a = sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2));
      force = 2.6 * a;
      if (maxforce < force && force < 9) {
        maxforce = force;
      }
    });
    return force;
  }

  @override
  void initState() {
    super.initState();
    counter = 0;
    maxforce = 0;
    _gyroscopeSubscription=gyroscopeEventStream(samplingPeriod: Durations.short4)
        .listen((GyroscopeEvent event) {
      setState(() {
        x = event.x;
        y = event.y;
        z = event.z;
      });
    });
  }
  @override
  void dispose() {
    _gyroscopeSubscription?.cancel();
    super.dispose();//اتذكر جرب الكود بعد هادا التعديل
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Earthquake mesuring',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondaryFixedDim,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'To get good result but the phone on solid place and press on Start',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primaryFixed),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 200,
                height: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: second / maxvalue,
                      valueColor: const AlwaysStoppedAnimation(
                          Color.fromARGB(255, 52, 52, 51)),
                      color: const Color.fromARGB(255, 52, 52, 51),
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryFixed,
                      strokeWidth: 12,
                    ),
                    Center(
                        child: isrunning
                            ? Text(
                                second.toString(),
                                style: const TextStyle(
                                    fontSize: 60, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              )
                            : Icon(
                                Icons.done,
                                color:
                                    Theme.of(context).colorScheme.primaryFixed,
                                size: 100,
                              )),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            isrunning
                ? ElevatedButton(
                    onPressed: stoptimer,
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.primaryFixed)),
                    child: Text(
                      'End mesuring',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimaryFixed,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                : ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.primaryFixed)),
                    onPressed: _startTimer,
                    child: Text('Start mesuring',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimaryFixed,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
            const SizedBox(
              height: 15,
            ),
            if (counter > 0 && isrunning)
              Column(
                children: [
                  Text(
                    'X: ${x.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text('Y: ${y.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  Text('Z: ${z.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  Text('Force: ${ourforce.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center)
                ],
              ),
            if (!isrunning && counter != 0)
              Text(
                '''The Forse of earthquake
                 ${maxforce.toStringAsFixed(2)}''',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ],
        ),
      ),
    );
  }
}
