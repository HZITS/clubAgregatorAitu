// ignore_for_file: prefer_const_constructors
import 'package:club_agregator/constants.dart';
import 'package:flutter/material.dart';
import 'classes/clubs.dart';
import 'screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Club> clubs = [
    Club(
      name: 'AITU',
      eventTitle: 'Meeting',
      avatarURLHolder: 'assets/images/aitu_logo.png',
    ),
    Club(
      name: '3Ws',
      eventTitle: 'Play',
      avatarURLHolder: 'assets/images/image_2.png',
    ),
    Club(
      name: 'Art',
      eventTitle: 'Deadline',
      avatarURLHolder: 'assets/images/image_1.png',
    ),
    Club(
      name: 'Ds',
      eventTitle: 'Meeting',
      avatarURLHolder: 'assets/images/image_1.png',
    ),
    Club(
      name: '312Ws',
      eventTitle: 'Play',
      avatarURLHolder: 'assets/images/image_2.png',
    ),
    Club(
      name: 'Arfft',
      eventTitle: 'Deadline',
      avatarURLHolder: 'assets/images/aitu_logo.png',
    ),
    Club(
      name: 'AIsddTU',
      eventTitle: 'Meeting',
      avatarURLHolder: 'assets/images/image_1.png',
    ),
    Club(
      name: '3W12s',
      eventTitle: 'Play',
      avatarURLHolder: 'assets/images/image_2.png',
    ),
    Club(
      name: 'Ardft',
      eventTitle: 'Deadline',
      avatarURLHolder: 'assets/images/aitu_logo.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AITU Club Agregator',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(displayColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
