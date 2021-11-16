// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'classes/clubs.dart';
import 'widgets/club_card.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.count(
          padding: const EdgeInsets.all(22.0),
          crossAxisCount: 2,
          children: clubs.map((club) => ClubCard(club: club)).toList()),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0),
          topLeft: Radius.circular(15.0),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.apps,
                size: 30.0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30.0,
              ),
              label: 'Home',
            ),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
