import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constants.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

        body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: kPrimaryColor,
                    child: Center(
                      child: Text(
                        "Welcome to\nDisrupt",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    )
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(50.0)
                ),
                SizedBox(
                  width: 250,
                  height: 70,
                  child: ElevatedButton(

                    child: Text('View Events',
                      style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.black, fontSize: 30
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/events');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(35.0),),
                      primary: kPrimaryColor,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20.0)
                ),
                SizedBox(
                  width: 250,
                  height: 70,
                  child: ElevatedButton(

                    child: Text('Create Event',
                      style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.black, fontSize: 30
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/createevent');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0),),
                      primary: kPrimaryColor,
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.all(50.0)
                )
              ]
            )
        ));
  }
}

