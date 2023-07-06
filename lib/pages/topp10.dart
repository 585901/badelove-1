// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:badelove/widgets/homebutton.dart';
//import 'package:test_homepage/widgets/homebutton.dart';

class Topp10 extends StatefulWidget {
  const Topp10({Key? key}) : super(key: key);

  @override
  _Topp10State createState() => _Topp10State();
}

class _Topp10State extends State<Topp10> {
  List<String> badeplasser = [
    '1. Badeplass',
    '2. Badeplass',
    '3. Badeplass',
    '4. Badeplass',
    '5. Badeplass',
    '6. Badeplass',
    '7. Badeplass',
    '8. Badeplass',
    '9. Badeplass',
    '10.Badeplass',
  ];

  List<int> starRatings = [5, 4, 3, 4, 3, 3, 3, 2, 2, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false, //fjerner pil i venstre hjørne
            title: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Topp 10',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: [
              HomeButton(onPressed: () {
                Navigator.pushNamed(context, '/');
              }),
            ]),
        body: Container(
            alignment: Alignment.center,
            child: Align(
                alignment: Alignment.center,
                child: ListView.builder(
                    itemCount: badeplasser.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          badeplasser[index],
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Row(
                          children: List.generate(
                              starRatings[index],
                              (starIndex) =>
                                  const Icon(Icons.star, color: Colors.amber)),
                        ),
                      );
                    }))));
  }
}
