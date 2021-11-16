import 'package:flutter/material.dart';
import 'package:club_agregator/classes/club.dart';
import 'package:club_agregator/classes/user_base.dart';

class RecentEvents extends Club {
  final String? eventTypeName, eventTypeIcon;
  final DateTime? date;
  final List<User>? users;

  RecentEvents({
    @required this.users,
    @required this.eventTypeName,
    @required this.eventTypeIcon,
    @required this.date,
    @required name,
    @required image,
  }) : super(name: name, image: image);
}

List<RecentEvents> recentEvents = [
  RecentEvents(
    users: users..shuffle(),
    eventTypeName: "Meeting",
    eventTypeIcon: "assets/images/Red_Mountains.png",
    date: DateTime(2020, 10, 15),
    name: "AITU",
    image: "assets/images/aitu_logo.png",
  ),
  RecentEvents(
    users: users..shuffle(),
    eventTypeName: "Otbor",
    eventTypeIcon: "assets/images/Magical_World.png",
    date: DateTime(2020, 3, 10),
    name: "Art",
    image: "assets/images/image_1.png",
  ),
  RecentEvents(
    users: users..shuffle(),
    eventTypeName: "Performance",
    eventTypeIcon: "assets/images/Red_Mountains.png",
    date: DateTime(2020, 10, 15),
    name: "Music",
    image: "assets/images/image_2.png",
  ),
];

List<User> users = [user1, user2, user3];
