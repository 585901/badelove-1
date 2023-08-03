import 'package:flutter/material.dart';

class Beskrivelse {
  final String imagePath;
  //en streng som inneholder banen til brukerens profilbilde. Denne banen peker vanligvis på en nettadresse (URL) eller en lokal filbane til brukerens profilbilde
  final String pageTitle;
  //en streng som inneholder brukerens fulle navn
  final String description;
  //en streng som inneholder brukerens brukernavn (brukernavnet er ofte unikt og brukes for å identifisere brukeren)
  final String bulletpoints;
  //en streng som inneholder en kort biografi eller beskrivelse av brukeren

  const Beskrivelse({
    required this.imagePath,
    required this.pageTitle,
    required this.description,
    required this.bulletpoints,
  });

  Beskrivelse copyWith({
    String? name,
    String? pageTitle,
    String? description,
    String? bulletpoints,
  }) {
    return Beskrivelse(
      pageTitle: pageTitle ?? this.pageTitle,
      description: description ?? this.description,
      bulletpoints: bulletpoints ?? this.bulletpoints,
      imagePath: imagePath ?? this.imagePath,
    );
  }
//Samlet sett gjør copyWith-metoden det enkelt å opprette en ny User-instans med noen eller alle attributtene oppdatert. Dette kan være nyttig når du ønsker å lage kopier av eksisterende User-instanser og gjøre endringer i attributtene uten å endre den opprinnelige instansen
}
