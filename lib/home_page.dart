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
                  flex: 3,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/person.png") as ImageProvider,
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(30.0)
                ),
                ElevatedButton(

                  child: Text('View Events',
                    style: Theme.of(context).textTheme.button!.copyWith(
                      color: Colors.black, fontSize: 40
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/events');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25.0),),
                    primary: kPrimaryColor,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10.0)
                ),
                ElevatedButton(
                  child: Text('Create Event',
                    style: Theme.of(context).textTheme.button!.copyWith(
                      color: Colors.black, fontSize: 40
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/createevent');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),),
                    primary: kPrimaryColor,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(60.0)
                )
              ]
            )
        ));
  }
}

