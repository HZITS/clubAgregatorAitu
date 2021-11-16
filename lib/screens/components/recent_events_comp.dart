import 'package:club_agregator/classes/recent_events.dart';
import 'package:club_agregator/components/recent_event_card.dart';
import 'package:club_agregator/components/section_title.dart';
import 'package:club_agregator/size_config.dart';
import 'package:flutter/material.dart';

class RecentEventsComp extends StatelessWidget {
  const RecentEventsComp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Newest announcements",
          press: () {},
        ),
        const VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                recentEvents.length,
                (index) => Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  child: RecentEventCard(
                    recentEvent: recentEvents[index],
                    press: () {},
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
