// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:badelove/widgets/homebutton.dart';

class Vurdering extends StatefulWidget {
  const Vurdering({super.key});

  @override
  _VurderingState createState() => _VurderingState();
}

class _VurderingState extends State<Vurdering> {
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
                'Vurdering',
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
