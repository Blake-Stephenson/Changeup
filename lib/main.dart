import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: BaseApp(),
      routes: <String, WidgetBuilder> {
        '/home' : (context) => Homepage(),
        '/start' : (context) => BaseApp()

      }
    );
  }
}


class BaseApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('firstpage'),),
      body: Center(
          child: Column(
              children: <Widget>[
                ElevatedButton(
                  child: Text('go to home'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ],
           ),
      )
    );
  }
}

