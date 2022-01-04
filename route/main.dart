
import 'package:annama/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: FirstPage(),
      initialRoute:'/',
      //onGenerateRoute: (settings) {

      //},
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}



class FirstPage extends StatelessWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),

            RaisedButton(
              child: Text("Go to second"),
              onPressed: (){
                
                Navigator.of(context).pushNamed(
                  '/second', 
                  arguments: 'Hello there from the first page!'
                  );
            
              },
            ),

          ],
        ),
      ),
    );
  }
}



class SecondPage extends StatelessWidget {

  final String data;

  SecondPage({ Key? key,required this.data }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
