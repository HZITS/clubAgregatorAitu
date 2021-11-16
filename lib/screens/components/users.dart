import 'package:club_agregator/classes/recent_events.dart';
import 'package:club_agregator/classes/user_base.dart';
import 'package:club_agregator/constants.dart';
import 'package:flutter/material.dart';
import 'package:club_agregator/size_config.dart';

class Participants extends StatelessWidget {
  const Participants({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: [
          ...List.generate(users.length, (index) {
            totalUser++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildUserAvatar(index),
            );
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ClipOval buildUserAvatar(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image!,
        height: getProportionateScreenHeight(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
