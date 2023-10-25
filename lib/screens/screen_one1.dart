import 'package:flutter/material.dart';
import 'package:scroll/screens/login_screen.dart';
import 'package:scroll/screens/register_screen.dart';

class ScreenOne1 extends StatelessWidget {
  const ScreenOne1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 710,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/bgMain.png'),
                fit: BoxFit.cover,
              )),
              child: Center(
                child: Image.asset("assets/images/Group.png"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const LoginScreen(title: "title")));
                  },
                  child: Container(
                    height: 52,
                    width: 167,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    child: const Center(
                      child: Text(
                        "LOG IN",
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const RegisterSccreen()));
                  },
                  child: Container(
                    height: 52,
                    width: 167,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
