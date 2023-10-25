import 'package:flutter/material.dart';
import 'package:scroll/screens/third_screen.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Search",
                    style: TextStyle(fontSize: 36),
                  ),
                  const SizedBox(height: 32),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text("All results"),
                  const SizedBox(height: 32),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/images/yobaniyDog.png")),
                      Image(image: AssetImage("assets/images/yobaniyDog.png"))
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/images/yobaniyDog.png")),
                      Image(image: AssetImage("assets/images/yobaniyDog.png"))
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/images/yobaniyDog.png")),
                      Image(image: AssetImage("assets/images/yobaniyDog.png"))
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/images/yobaniyDog.png")),
                      Image(image: AssetImage("assets/images/yobaniyDog.png"))
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/images/yobaniyDog.png")),
                      Image(image: AssetImage("assets/images/yobaniyDog.png"))
                    ],
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: ElevatedButton(onPressed: (){}, child: const Text("See more")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
