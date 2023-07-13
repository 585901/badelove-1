import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Badeknapp extends StatelessWidget {
  final LatLng position;
  final Function() onPressed;

  const Badeknapp({
    Key? key,
    required this.position,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              'lib/images/swimming.png', //her prøvde jeg å legge inn ikon i
              width: 30, //google maps sin forhåndsdefinerte pin, men uten hell
              height: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
