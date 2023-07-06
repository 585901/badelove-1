import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final VoidCallback onPressed;

  const HomeButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Image.asset('lib/images/home.png',
            color: const Color.fromARGB(255, 138, 138, 244)),
        onPressed: () {
          Navigator.pushNamed(context,
              '/'); //"/" brukes til å fjerne ruter fra stabelen til den når hjemmesiden
        });
  }
}
