// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../classes/clubs.dart';

class ClubCard extends StatelessWidget {
  final Club club;
  const ClubCard({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(13.0, 0.0, 13.0, 26.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
            fit: BoxFit.scaleDown, image: AssetImage(club.avatarURLHolder)),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.black12,
        elevation: 2.0,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              title: Text(
                club.name,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              ),
              subtitle: Text(
                club.eventTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
