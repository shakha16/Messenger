import 'package:flutter/material.dart';
import 'package:scroll/screens/home_screen.dart';
import 'package:scroll/screens/main_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formkey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 200),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 52,
                  width: 342,
                  child: TextFormField(
                    controller: controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) return "Enter email";
                      return null; // Return null for a valid input
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 52,
                  width: 342,
                  child: TextFormField(
                    controller: controllerPassword,
                    validator: (value) {
                      if (value!.isEmpty) return "Enter password";
                      if (value.length < 8) return "At least 8 characters";
                      return null; // Return null for a valid input
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(342, 52)),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(title: "title"),
                          )
                      );

                    }
                  },
                  child: const Text("LOG IN"),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
