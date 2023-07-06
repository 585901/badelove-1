// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:badelove/pages/badeplasser.dart';
import 'package:badelove/pages/favoritter.dart';
import 'package:badelove/pages/homepage.dart';
import 'package:badelove/pages/profil.dart';
import 'package:badelove/pages/topp10.dart';
import 'package:badelove/pages/vurdering.dart';
//test_homepage er den originale pakken, fungerer ikke bytte den ut med det nye navnet.

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Topp10(),
    const Favoritter(),
    const Vurdering(),
    const Badeplasser(),
    const Profil()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Homepage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                        minWidth: 80,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Topp10();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.asset('lib/images/swimming.png',
                                    color: const Color.fromARGB(
                                        255, 138, 138, 244)),
                              ),
                            ])),
                    MaterialButton(
                        minWidth: 80,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Favoritter();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.asset('lib/images/heart.png',
                                    color: const Color.fromARGB(
                                        255, 138, 138, 244)),
                              ),
                            ])),
                    MaterialButton(
                        minWidth: 80,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Vurdering();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 25,
                                child: Image.asset('lib/images/pen.png',
                                    color: const Color.fromARGB(
                                        255, 138, 138, 244)),
                              ),
                            ])),
                    MaterialButton(
                        minWidth: 80,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Badeplasser();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 25,
                                child: Image.asset('lib/images/ladder.png',
                                    color: const Color.fromARGB(
                                        255, 138, 138, 244)),
                              ),
                            ])),
                    MaterialButton(
                        minWidth: 50,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Profil();
                            currentTab = 4;
                          });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 25,
                                child: Image.asset('lib/images/user.png',
                                    color: const Color.fromARGB(
                                        255, 138, 138, 244)),
                              ),
                            ]))
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
