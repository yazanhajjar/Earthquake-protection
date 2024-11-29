import 'dart:convert';
import 'package:earthquake/models/earthquakelist.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Listofearthquakes extends StatefulWidget {
  const Listofearthquakes({super.key});

  @override
  State<Listofearthquakes> createState() => _ListofearthquakesState();
}

class _ListofearthquakesState extends State<Listofearthquakes>
    with SingleTickerProviderStateMixin {
  int filterforce = 1;
  DateTime filtertime = DateTime.utc(2000);
  late TabController _tabController;
  final List<Tab> _ourtabs = [
    const Tab(
      text: 'ALL',
    ),
    const Tab(
      text: 'Force',
    ),
    const Tab(
      text: 'Date',
    ),
  ];

  var url =
      Uri.https('earthquake-438618-default-rtdb.firebaseio.com', 'force.json');
  Map loadedData = {};

  loadinglist() async {
    http.Response respone = await http.get(
      url,
    );
    loadedData = json.decode(respone.body);

    setState(() {
      for (final item in loadedData.entries) {
        earthquakeList.add(Earthquake(
            time: DateTime.parse(item.value['Date']),
            force: double.parse(item.value['theforce']),
            location: item.value['location'].toString()));
      }
    });
  }

  @override
  void initState() {
    loadinglist();
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _selectYear(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: filtertime,
      firstDate: DateTime(1930),
      lastDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.year,
    );
    if (picked != null && picked != filtertime) {
      setState(() {
        filtertime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          labelColor: Theme.of(context).colorScheme.onPrimary,
          tabs: _ourtabs,
          controller: _tabController,
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            Tabwidget(
              myearthquakes: earthquakeList,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Select the force :',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 35,
                        width: 100,
                        child: DropdownButton(focusColor: Colors.white.withOpacity(0),
                            borderRadius: BorderRadius.circular(10),
                            hint: Text('$filterforce+',
                                textAlign: TextAlign.center),
                            // disabledHint: Text('$filterforce'),
                            // value: filterforce,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text(
                                  '1+',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('2+', textAlign: TextAlign.center),
                              ),
                              DropdownMenuItem(
                                value: 3,
                                child: Text('3+', textAlign: TextAlign.center),
                              ),
                              DropdownMenuItem(
                                value: 4,
                                child: Text('4+', textAlign: TextAlign.center),
                              ),
                              DropdownMenuItem(
                                value: 5,
                                child: Text('5+', textAlign: TextAlign.center),
                              ),
                              DropdownMenuItem(
                                value: 6,
                                child: Text('6+', textAlign: TextAlign.center),
                              ),
                            ],
                            onChanged: (newval) {
                              setState(() {
                                if (newval == null) {
                                  return;
                                } else {
                                  filterforce = newval;
                                }
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                Tabwidget(
                  myearthquakes: earthquakeList
                      .where((e) => e.force > filterforce)
                      .toList(),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => _selectYear(context),
                        style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.onPrimaryFixed),
                        child: const Text('Select Year',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Text(
                      "Selected Year: ${filtertime.year}",
                      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Tabwidget(
                  myearthquakes: earthquakeList
                      .where((e) => e.time.year >= filtertime.year)
                      .toList(),
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}

class Tabwidget extends StatelessWidget {
  const Tabwidget({
    super.key,
    required this.myearthquakes,
  });

  final List<Earthquake> myearthquakes;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ...myearthquakes.map((e) => Card(
              color: Theme.of(context).colorScheme.secondaryFixedDim,
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.all(10),
                    width: 40,
                    height: 30,
                    decoration: BoxDecoration(
                        color: e.force < 3.5
                            ? const Color.fromARGB(255, 166, 178, 167)
                            : Theme.of(context).colorScheme.error,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      e.force.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e.time.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e.location,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ])
                ],
              ),
            ))
      ]),
    );
  }
}
