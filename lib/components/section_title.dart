import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String? title;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultPadding)),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            title!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: press,
            child: const Text("See All"),
          ),
        ],
      ),
    );
  }
}
