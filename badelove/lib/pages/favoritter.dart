// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:badelove/widgets/homebutton.dart';

class Favoritter extends StatefulWidget {
  const Favoritter({super.key});

  @override
  _FavoritterState createState() => _FavoritterState();
}

class _FavoritterState extends State<Favoritter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Favoritter',
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
