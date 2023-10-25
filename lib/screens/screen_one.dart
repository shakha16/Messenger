import 'package:flutter/material.dart';
import 'package:scroll/screens/third_screen.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key, required this.image, required this.name, required this.nickName, required this.ava}) : super(key: key);
  final String name;
  final String image;
  final String nickName;
  final String ava;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
              onPressed: () {

              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 16,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => ThirdScreen(name: name, nickName: nickName, ava: ava, publication: image)));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: AssetImage(ava)),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name, style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                ),),
                                Text(nickName, style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.close))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}
