import 'package:flutter/material.dart';
import 'package:scroll/screens/chat.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen(
      {Key? key,
      required this.name,
      required this.nickName,
      required this.ava,
      required this.publication})
      : super(key: key);
  final String name;
  final String nickName;
  final String ava;
  final String publication;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
            child: Column(
              children: [
                const SizedBox(height: 32),
                Container(
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ava), fit: BoxFit.cover)),
                ),
                const SizedBox(height: 16),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.w700),
                ),
                Text(
                  nickName,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 32),
                ElevatedButton(onPressed: () {}, child: const Text("Follow")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Chat()));
                    },
                    child: const Text("Message")),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 167,
                          height: 220,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(publication),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(height: 10),
                        const Image(
                            image:
                                AssetImage("assets/images/publication2.png")),
                        const SizedBox(height: 10),
                        const Image(
                            image: AssetImage("assets/images/publication.png")),
                        const SizedBox(height: 10),
                        const Image(
                            image:
                                AssetImage("assets/images/publication2.png")),
                        const SizedBox(height: 10),
                        const Image(
                            image: AssetImage("assets/images/publication.png")),
                        const SizedBox(height: 10),
                        const Image(
                            image:
                                AssetImage("assets/images/publication2.png")),
                        const SizedBox(height: 10),
                        const Image(
                            image: AssetImage("assets/images/publication.png")),
                        const SizedBox(height: 10),
                        const Image(
                            image: AssetImage("assets/images/publication2.png"))
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Image(
                            image:
                                AssetImage("assets/images/publication2.png")),
                        SizedBox(height: 10),
                        Image(
                            image: AssetImage("assets/images/publication.png")),
                        SizedBox(height: 10),
                        Image(
                            image:
                                AssetImage("assets/images/publication2.png")),
                        SizedBox(height: 10),
                        Image(
                            image: AssetImage("assets/images/publication.png")),
                        SizedBox(height: 10),
                        Image(
                            image:
                                AssetImage("assets/images/publication2.png")),
                        SizedBox(height: 10),
                        Image(
                            image: AssetImage("assets/images/publication.png")),
                        SizedBox(height: 10),
                        Image(
                            image:
                                AssetImage("assets/images/publication2.png")),
                        SizedBox(height: 10),
                        Image(
                            image: AssetImage("assets/images/publication.png")),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
