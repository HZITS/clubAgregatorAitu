//screens/home/auth.dart
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:club_agregator/screens/components/body.dart';
import 'package:club_agregator/constants.dart';
import 'package:club_agregator/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        elevation: 0,
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
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kIconColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: ClipOval(child: Image.asset("assets/images/aitu_logo.png")),
          onPressed: () {},
        )
      ],
    );
  }
}

// Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Row(
//           children: [
//             GridView.count(
//                 scrollDirection: Axis.horizontal,
//                 mainAxisSpacing: 20.0,
//                 crossAxisSpacing: 30.0,
//                 crossAxisCount: 1,
//                 children: clubs.map((club) => ClubCard(club: club)).toList()),
//             GridView.count(
//                 scrollDirection: Axis.vertical,
//                 mainAxisSpacing: 20.0,
//                 crossAxisSpacing: 30.0,
//                 crossAxisCount: 2,
//                 children: clubs.map((club) => ClubCard(club: club)).toList()),
//           ],
//         ),
//       ),
//       bottomNavigationBar: ClipRRect(
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(15.0),
//           topLeft: Radius.circular(15.0),
//         ),
//         child: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 size: 30.0,
//               ),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.apps,
//                 size: 30.0,
//               ),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.person,
//                 size: 30.0,
//               ),
//               label: 'Home',
//             ),
//           ],
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.black26,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//         ),
//       ),
//     );
