import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constants.dart';

class EventsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: kBackGroundColor,
        appBar: AppBar(title: Text('View events', style: Theme.of(context).textTheme.button!.copyWith(
            color: Colors.black, fontSize: 40
        ),),),
        body: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text('Back to start'),
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),),
                  primary: kPrimaryColor,
                ),
              ),
              Container(


                child: Flexible(
                  child: Text("Work Strike"
                      "\nWorkers will will be striking to promote better working conditions"
                      "\nLocation: Time Square"
                      "\nDate: January 28, 2022",

                    style: TextStyle(color: kPrimaryColor, fontSize: 33),),



                ),

              ),

            ],
          ),

        ),

    );
  }
}