import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constants.dart';

class CreateEventPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kBackGroundColor,

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20.0)
            ),
            Text(

              "Create Event",
              style: Theme.of(context).textTheme.headline4,
            ),
            const Padding(
                padding: EdgeInsets.all(20.0)
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),

                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelStyle: TextStyle(color: kPrimaryColor),

                    labelText: 'Event Name',
                    hintText: 'Enter a name for the event'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: false,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),

                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelStyle: TextStyle(color: kPrimaryColor),
                    labelText: 'Location',
                    hintText: 'Where will the event take place?'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: false,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),

                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelStyle: TextStyle(color: kPrimaryColor),
                    labelText: 'Date',
                    hintText: 'When will the event occur?'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: false,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),

                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelStyle: TextStyle(color: kPrimaryColor),
                    labelText: 'Description',
                    hintText: 'Write a short description of the event'),
              ),
            ),

            const Padding(
                padding: EdgeInsets.all(10.0)
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: kPrimaryColor, borderRadius: BorderRadius.circular(25)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black, fontSize: 25),

                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),),
                  primary: kPrimaryColor,

                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),

          ],
        ),
      ),
    );
  }
}