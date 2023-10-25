import 'package:flutter/material.dart';

class RegisterSccreen extends StatelessWidget {
  const RegisterSccreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Center(
         child: Column(
           children: [
             SizedBox(height: 100),
             Text("Register", style: TextStyle(
               fontSize: 36,
               fontWeight: FontWeight.w700
             ),)
           ],
         ),
       ),
    );
  }
}