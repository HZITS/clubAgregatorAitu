// ignore_for_file: prefer_const_constructors
import 'package:club_agregator/components/section_title.dart';
import 'package:club_agregator/screens/components/home_header.dart';
import 'package:club_agregator/screens/components/recent_events_comp.dart';
import 'package:club_agregator/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          HomeHeader(),
          VerticalSpacing(),
          RecentEventsComp(),
          SectionTitle(title: "Live events", press: () {})
        ],
      ),
    );
  }
}
