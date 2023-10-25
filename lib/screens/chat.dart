import 'package:flutter/material.dart';
import 'package:scroll/screens/chats.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text("Chats", style: TextStyle(
                fontSize: 30
              ),),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.blueGrey,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Chats(image: "assets/images/ava1.png", name: "James", message: "Thank you! That was very helpful!")));
                  },
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/ava1.png")),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("James", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),),
                          SizedBox(height: 5),
                          Text("Thank you! That was very helpful!", style: TextStyle(
                            color: Colors.black
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.blueGrey,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Chats(image: "assets/images/ava2.png", name: "Will Kenny", message: "I know... I’m trying to get the funds.")));
                  },
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/ava2.png")),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Will Kenny", style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),),
                          SizedBox(height: 5),
                          Text("I know... I’m trying to get the funds.", style: TextStyle(
                            color: Colors.black
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}