import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'constants.dart';
import 'create_event_page.dart';
import 'events_page.dart';
import 'home_page.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';
import 'WelcomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

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
            headline4: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            headline6: TextStyle(
                color: kPrimaryColor,
                fontSize: 23,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic),
            button: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
        home: const WelcomeScreen(),

        //Creating Routes for buttons
        routes: <String, WidgetBuilder>{
          '/signin': (context) => SignInScreen(),
          '/signup': (context) => SignUpScreen(),
        });
  }
}
