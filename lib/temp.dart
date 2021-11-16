// // ignore_for_file: prefer_const_constructors
// import 'package:flutter/material.dart';
// import 'classes/clubs.dart';

// void main() => runApp(MaterialApp(
//       home: Home(),
//     ));

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<Club> clubs = [
//     Club(name: 'AITU', eventTitle: 'Meeting'),
//     Club(name: '3Ws', eventTitle: 'Play'),
//     Club(name: 'Art', eventTitle: 'Deadline'),
//   ];

//   Widget clubTemplate(club) {
//     return SizedBox(
//       height: 130.0,
//       width: 130.0,
//       child: Image.asset('assets/images/aitu_logo.png'),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: SizedBox(
//                     height: 130.0,
//                     width: 130.0,
//                     child: Image.asset('assets/images/aitu_logo.png'),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: SizedBox(
//                     height: 130.0,
//                     width: 130.0,
//                     child: Image.asset('assets/images/image_1.png'),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: SizedBox(
//                     height: 130.0,
//                     width: 130.0,
//                     child: Image.asset('assets/images/aitu_logo.png'),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: SizedBox(
//                     height: 130.0,
//                     width: 130.0,
//                     child: Image.asset('assets/images/image_1.png'),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: SizedBox(
//                     height: 130.0,
//                     child: Image.asset('assets/images/aitu_logo.png'),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: SizedBox(
//                     height: 130.0,
//                     width: 130.0,
//                     child: Image.asset('assets/images/aitu_logo.png'),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: SizedBox(
//                     height: 130.0,
//                     width: 130.0,
//                     child: Image.asset('assets/images/image_1.png'),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//               size: 30.0,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.apps,
//               size: 30.0,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.person,
//               size: 30.0,
//             ),
//             label: 'Home',
//           ),
//         ],
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black26,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//       ),
//     );
//   }
// }
