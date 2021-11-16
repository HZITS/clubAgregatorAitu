// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../classes/clubs.dart';

class ClubCard extends StatelessWidget {
  final Club club;
  const ClubCard({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(club.avatarURLHolder),
        ),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        color: Colors.black12,
        elevation: 2.0,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 8.0),
              child: ListTile(
                title: Text(
                  club.name.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Roboto',
                  ),
                ),
                subtitle: Text(
                  club.eventTitle,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
