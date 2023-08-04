import 'package:badelove/models/beskrivelse.dart';

class BeskrivelseList {
  static const list = [
    Beskrivelse(
        imagePath: 'lib/images/helleneset.png',
        pageTitle: 'Helleneset',
        rating: 5,
        description:
            'Helleneset ligger på Lønborg, nord for NHH. Her er det tilkomst til sjø via svaberg, sandfjære eller badestige. Det er også et barnevennlig basseng på 10x15 meter med dybde på 0,5-0,9 meter som fylles opp med sjøvann.',
        bulletpoints: ["Toalett", "Flytebrygge", "Stupetårn"],
        skyss:
            'timetype=DEPARTURE&ts=2023-08-03T11:18:00Z&service-modes=airportbus,bus,carferry,expressbus,others,passengerboat,train,tram&min-transfer=2&walk-speed=normal&from=eyJkZXNjIjoiS3JvbnN0YWQsIEJlcmdlbiIsImlkIjoiTlNSOlN0b3BQbGFjZTozMTM3NCIsImxv%0D%0AYyI6IjYwLjM3MDY1OSw1LjM0ODE3MyIsIm1vZGVzIjpbIkxpZ2h0IHJhaWwiXSwidHlwZSI6InN0%0D%0Ab3Bncm91cCJ9&to=eyJkZXNjIjoiSGVsbGViYWtrZW4gNDUsIEJlcmdlbiIsImlkIjoiMjU2ODQzMTUxIiwibG9jIjoi%0D%0ANjAuNDM0NjU5OTA4OTAwNTY0LDUuMjgwNzEzMzk3NzMzMjUzIiwibW9kZXMiOm51bGwsInR5cGUi%0D%0AOiJhZGRyZXNzIn0%3D',
        gmaps:
            'Helleneset/@60.4349507,5.2771309,431m/data=!3m2!1e3!4b1!4m6!3m5!1s0x463cfdb26e3d4b8f:0x5f5d4708bda391d6!8m2!3d60.4349481!4d5.2797058!16s%2Fg%2F1tcxn7q1?entry=ttu',
        gparking:
            'helleneset+parkering/@60.4338534,5.2818148,108m/data=!3m1!1e3!4m6!2m5!3m4!2s60.434039,+5.282810!4m2!1d5.2828099!2d60.4340393?entry=ttu',
        favoritt: true),
    Beskrivelse(
        imagePath: 'lib/images/gamlehaugen.jpg',
        pageTitle: 'Gamlehaugen',
        rating: 1,
        description:
            'Badeplassen ligger i Konsulbukta ved Gamlehaugen. Det er tilkomst til vannet via strand og svaberg.',
        bulletpoints: ['Toalett'],
        skyss: '',
        gmaps: '',
        gparking: '',
        favoritt: false),
    Beskrivelse(
        imagePath: 'lib/images/marineholmen.png',
        pageTitle: 'Marineholmen Sandstrand',
        rating: 1,
        description:
            'Marineholmen Sandstrand er en menneskapt sandstrand som passer til småbarnsfamilier så vel som studentene i området.',
        bulletpoints: ['Toalett', 'Flytebrygge', 'stupebrett'],
        skyss: '',
        gmaps: '',
        gparking: '',
        favoritt: false),
    Beskrivelse(
        imagePath: 'lib/images/nordnessjobad.png',
        pageTitle: 'Nordnes Sjøbad',
        rating: 1,
        description:
            'Nordnes Sjøbad ligger i Nordnesparken, kun et steinkast unna Akvariet og gangavstand til Bergen sentrum. Her er det et utendørs oppvarmet saltvannsbaseng på 25 meter som holder herlige 30 grader.',
        bulletpoints: ['Toalett'],
        skyss: '',
        gmaps: '',
        gparking: '',
        favoritt: false),
    Beskrivelse(
        imagePath: 'lib/images/sandvikensjobad.png',
        pageTitle: 'Sandviken Sjøbad',
        rating: 1,
        description: 'Badeplass',
        bulletpoints: ['Toalett'],
        skyss: '',
        gmaps: '',
        gparking: '',
        favoritt: false),
    Beskrivelse(
        imagePath: 'lib/images/sydnessjobad.png',
        pageTitle: 'Sydnes Sjøbad',
        rating: 1,
        description: 'Badeplass',
        bulletpoints: ['Toalett'],
        skyss: '',
        gmaps: '',
        gparking: '',
        favoritt: false),
  ];
}


/*

skyss:
gmaps:
gparking:

*/