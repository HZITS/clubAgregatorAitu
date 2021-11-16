import 'package:flutter/material.dart';

class Club {
  final String? name, image;

  Club({@required this.name, @required this.image});
}

// Demo List of Top Travelers
List<Club> startClubs = [club1, club2, club3, club4];

// demo user
Club club1 = Club(name: "AITU", image: "assets/images/aitu_logo.png");
Club club2 = Club(name: "Art", image: "assets/images/image_1.png");
Club club3 = Club(name: "Music", image: "assets/images/image_2.png");
Club club4 = Club(name: "Erudit", image: "assets/images/aitu_logo.png");
