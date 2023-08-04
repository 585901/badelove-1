// ignore_for_file: library_private_types_in_public_api

import 'package:badelove/beskrivelser/gamlehaugen.dart';
import 'package:badelove/beskrivelser/helleneset.dart';
import 'package:badelove/beskrivelser/marineholmen_sandstrand.dart';
import 'package:badelove/beskrivelser/nordnes_sjobad.dart';
import 'package:badelove/beskrivelser/sandviken_sjobad.dart';
import 'package:badelove/beskrivelser/sydnes_sjobad.dart';
import 'package:badelove/models/beskrivelse.dart';
import 'package:badelove/pages/dyn_beskrivelser/dynamicPage.dart';
import 'package:badelove/utils/beskrivelse_list.dart';
import 'package:flutter/material.dart';
import 'package:badelove/widgets/homebutton.dart';

class Dyn_favoritter extends StatefulWidget {
  const Dyn_favoritter({super.key});

  @override
  _Dyn_favoritterState createState() => _Dyn_favoritterState();
}

class _Dyn_favoritterState extends State<Dyn_favoritter> {
  //final Beskrivelse beskrivelse = BeskrivelseList.list[0];
  final pageList = BeskrivelseList.list;

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
            'FAVORITTER',
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
        ],
      ),
      body: ListView.builder(
          itemCount: pageList.length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    //lager en kobling mellom bildet på Favorittsiden og Hellenesetsiden
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        //change happended here !
                        builder: (context) => DynamicPage(), settings: RouteSettings(arguments: pageList[index])
                      ),
                    );
                  },
                  child: Image.asset(
                    // legger til bilde
                    pageList[index].imagePath,
                    width: 500,
                    height: 250,
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      //legger til en beskrivende tekst under bildet
                      pageList[index].pageTitle,
                      style: const TextStyle(
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
    );
    /* body: SingleChildScrollView(
        // rullbar visning av innholdet sitt når innholdet ikke får plass på skjermen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (var page in pageList)
              GestureDetector(
                onTap: () {
                  //lager en kobling mellom bildet på Favorittsiden og Hellenesetsiden
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      //change happended here !
                      builder: (context) => const DynamicPage(),
                    ),
                  );
                },
                child: Image.asset(
                  // legger til bilde
                  page.imagePath,
                  //'lib/images/helleneset.png',
                  width: 500,
                  height: 250,
                ),
              ),
            for (var page in pageList) Text(page.pageTitle)
          ],
        ),
      ) */
  }
}
