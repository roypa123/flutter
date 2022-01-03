import 'package:annama/home.dart';
import 'package:annama/nextscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:annama/unknownroute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        //GetPage(
        //name: "/nextScreen",
        //page: () => NextScreen(),
        //transition: Transition.leftToRight
        //),
        GetPage(
          name: '/nextScreen/:someValue',
          page: () => NextScreen(),
          transition: Transition.leftToRight,
        ),
      ],
      unknownRoute: GetPage(name:'/notfound',page: ()=> UnKnownRoute()),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Go to home"),
                onPressed: () {
                  Get.toNamed(
                    //"/home",
                    "/x",
                  );
                  //Get.offNamed("/home");
                  //Get.offAllNamed("/home");
                  //Get.toNamed(
                  //   "/home?channel=Ripples Code&content=Flutter GetX",
                  //);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
