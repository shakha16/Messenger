import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key, required this.image, required this.name, required this.message}) : super(key: key);
  final String image;
  final String name;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: const Icon(Icons.arrow_back_ios_new)),
                    Text(name, style: const TextStyle(
                        fontSize: 30
                    ),),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.red,
                        image: DecorationImage(image: AssetImage(image))
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.blueGrey,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text("A fast 50mm like f1.8 would help with the bokeh."),
                      SizedBox(height: 10),
                      Text(message),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}