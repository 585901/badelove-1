// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:badelove/widgets/homebutton.dart';

class Badeplasser extends StatefulWidget {
  const Badeplasser({super.key});

  @override
  _BadeplasserState createState() => _BadeplasserState();
}

class _BadeplasserState extends State<Badeplasser> {
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
                'Badeplasser',
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
        ]));
  }
}
