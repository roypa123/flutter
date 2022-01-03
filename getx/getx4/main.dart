import 'package:annama/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(title: Text("Dialog"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Go to Home"),
                onPressed: () async{
                  //Get.to(
                   // Home(),
                   // fullscreenDialog: true,
                    //transition: Transition.zoom,
                   // duration: Duration(milliseconds: 4000),
                    //curve: Curves.bounceInOut,
                   // );

                   //Get.off(Home());
                   //Get.offAll(Home());
                   //Get.to(Home(),arguments: "Data from Main");
                   var data = await Get.to(Home());
                   print("The Received data is $data");
                  
                  
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
