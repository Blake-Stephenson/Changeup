import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constants.dart';

class EventsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    double deviceW = MediaQuery.of(context).size.width;
    double pad = 10;
    return Scaffold(
        backgroundColor: kBackGroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          title: Center(
            child: Text('Events', style: Theme.of(context).textTheme.headline4),
          )

        ),

        body: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(pad)
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: deviceW-50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Atlanta shooting protestss",style: TextStyle(color: kPrimaryColor, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Gun violence protest to bring awareness to a series of spa shootings in Atlanta",style: Theme.of(context).textTheme.bodyText1,),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Location: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("Franklin County Courthouse",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Date: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("March 16, 2022",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(pad)
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: deviceW-50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Frederick Wilson protests",style: TextStyle(color: kPrimaryColor, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("The community is outrage after the events that occured due to Frederick Wilson",style: Theme.of(context).textTheme.bodyText1,),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Location: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("Franklin County Courthouse",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Date: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("November 1, 2022",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(pad)
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: deviceW-50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Work Strike",style: TextStyle(color: kPrimaryColor, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Workers will will be striking to promote better health conditions",style: Theme.of(context).textTheme.bodyText1,),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Location: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("Niagara Square",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Date: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("January 28, 2022",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(pad)
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: deviceW-50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Liberation Rally",style: TextStyle(color: kPrimaryColor, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Toronto will be coming together to support the people that have suffered",style: Theme.of(context).textTheme.bodyText1,),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Location: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("Nathan Philip Square",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Date: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("March 9, 2022",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(pad)
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: deviceW-50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Anti-Mask Protest",style: TextStyle(color: kPrimaryColor, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("The people of Hamilton are fed up with the barbaric mask laws put in place by our government",style: Theme.of(context).textTheme.bodyText1,),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Location: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("Hamilton city hall",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row (children: [
                              Text("Date: ",style: TextStyle(color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text("February 16, 2022",style: Theme.of(context).textTheme.bodyText1,),
                            ])
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(pad)
                  ),
                ],
              ),
            ),
          ),


        ),

    );
  }
}