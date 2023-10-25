import 'package:flutter/material.dart';
import 'package:scroll/screens/screen_one1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        debugShowCheckedModeBanner: false,

      home: ScreenOne1(),
    );
  }
}

// class MyHomeScreen extends StatefulWidget {
//   const MyHomeScreen({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomeScreen> createState() => MyHomeScreenState();
// }
//
// class MyHomeScreenState extends State<MyHomeScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       Scaffold(
//           body: Center(
//             child: Column(
//               children: [
//                 Container(
//                   width: 500,
//                   height: 710,
//                   decoration: const BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/background_image.png'),
//                         fit: BoxFit.cover,
//                       )),
//                   child: Center(
//                     child: Image.asset("assets/images/text_1.png"),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (_) => LoginScreen()));
//                       },
//                       child: Container(
//                         child: Center(
//                           child: const Text(
//                             "LOG IN",
//                             style: TextStyle(fontSize: 22, color: Colors.black),
//                           ),
//                         ),
//                         height: 52,
//                         width: 167,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(11),
//                             color: Colors.white,
//                             border: Border.all(
//                               color: Colors.black,
//                               width: 2,
//                             )),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (_) => RegisterSccreen()));
//                       },
//                       child: Container(
//                         child: Center(
//                           child: Text(
//                             "REGISTER",
//                             style: TextStyle(fontSize: 22, color: Colors.white),
//                           ),
//                         ),
//                         height: 52,
//                         width: 167,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(11),
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//     );
//   }
// }
