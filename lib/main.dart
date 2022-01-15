import 'package:flutter/material.dart';
import 'constants.dart';
import 'create_event_page.dart';
import 'events_page.dart';
import 'home_page.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';
import 'WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        //Colors
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackGroundColor,

        //Text Settings
        textTheme: const TextTheme(
          headline4: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          headline6: TextStyle(color: kPrimaryColor, fontSize: 23, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
          button: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 14),
        ),
        
      ),

      home: const WelcomeScreen(),
      
      //Creating Routes for buttons
      routes: <String, WidgetBuilder> {
        '/signin' : (context) => SignInScreen(),
        '/signup' : (context) => SignUpScreen(),
        '/home' : (context) => HomePage(),
        '/createevent' : (context) => CreateEventPage(),
        '/events' : (context) => EventsPage(),

      }
    );
  }
}
