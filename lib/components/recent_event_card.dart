import 'package:club_agregator/classes/recent_events.dart';
import 'package:club_agregator/constants.dart';
import 'package:club_agregator/screens/components/users.dart';
import 'package:club_agregator/size_config.dart';
import 'package:flutter/material.dart';

class RecentEventCard extends StatelessWidget {
  const RecentEventCard({
    Key? key,
    required this.recentEvent,
    required this.press,
  }) : super(key: key);

  final RecentEvents recentEvent;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(recentEvent.image!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [kDefualtShadow],
            ),
            child: Column(
              children: [
                Text(
                  recentEvent.eventTypeName!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const VerticalSpacing(of: 10),
                Participants(
                  users: recentEvent.users!,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
