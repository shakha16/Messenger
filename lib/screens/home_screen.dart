import 'package:flutter/material.dart';
import 'package:scroll/screens/screen_one.dart';
import 'package:scroll/screens/screen_two.dart';
import '../utils/assets.dart';
import '../entity/post_horizontal_entity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final List<PorstHorizontalEntity> horizontalPostList = [
    PorstHorizontalEntity(
      name: "Nordin",
      username: "@nordin",
      avatar: Assets.Tavatar,
      image: Assets.Tphoto_2,
    ),
    PorstHorizontalEntity(
      name: "Nordin",
      username: "@nordin",
      avatar: Assets.Tavatar,
      image: Assets.Tphoto_2,
    ),
    PorstHorizontalEntity(
      name: "Nordin",
      username: "@nordin",
      avatar: Assets.Tavatar,
      image: Assets.Tphoto_2,
    ),
    PorstHorizontalEntity(
      name: "Nordin",
      username: "@nordin",
      avatar: Assets.Tavatar,
      image: Assets.Tphoto_2,
    ),
    PorstHorizontalEntity(
      name: "Nordin",
      username: "@nordin",
      avatar: Assets.Tavatar,
      image: Assets.Tphoto_2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Discover",
                      style: TextStyle(
                        fontSize: 38,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const ScreenTwo()));
                    }, icon: const Icon(Icons.search)),
                    const SizedBox(width: 15,)
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "What’s new today",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Row(children: [
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                        (_) => const ScreenOne(name: "Ridhwan Nordin", image: "assets/images/zaybal.png",  nickName: "@ridzjcob", ava: "assets/images/nordin.png")));
                      },
                      child: Container(
                        height: 345,
                        width: 300,
                        margin: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset("assets/images/zaybal.png"),
                              const SizedBox(height: 16),
                              const Row(
                                children: [
                                  Image(image: AssetImage("assets/images/nordin.png")),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Ridhwan Nordin", style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),),
                                      Text("@ridzjcob", style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black
                                      ),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (_) => const ScreenOne(name: "Clem Onojeghuo", image: "assets/images/photo_2.png",  nickName: "@clemono2", ava: "assets/images/clem.png")));
                      },
                      child: Container(
                        height: 345,
                        width: 300,
                        margin: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset("assets/images/photo_2.png"),
                              const SizedBox(height: 16),
                              const Row(
                                children: [
                                  Image(image: AssetImage("assets/images/clem.png")),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Clem Onojeghuo", style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),),
                                      Text("@clemono2", style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black
                                      ),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (_) => const ScreenOne(name: "Jon Tyson", image: "assets/images/photo_3.png",  nickName: "@jontyson", ava: "assets/images/john.png")));
                      },
                      child: Container(
                        height: 345,
                        width: 300,
                        margin: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset("assets/images/photo_3.png"),
                              const SizedBox(height: 16),
                              const Row(
                                children: [
                                  Image(image: AssetImage("assets/images/john.png")),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Jon Tyson", style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),),
                                      Text("@jontyson", style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black
                                      ),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "BROWSE ALL",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: List.generate(
                        horizontalPostList.length,
                        (index) => Container(
                              height: 400,
                              width: 400,
                              margin: const EdgeInsets.only(top: 7),
                              child: Image.asset("assets/images/photo_2.png"),
                            )),
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
