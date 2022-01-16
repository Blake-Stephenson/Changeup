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
                  flex: 10,
                  child: Stack(
                      children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                
                                image: AssetImage("assets/images/protest.jpg") as ImageProvider,
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstIn),
                              ),
                            ),
                            
                          ),
                          Container(
                            margin: new EdgeInsets.fromLTRB(30, 15, 30, 0),
                            child: Center(child: Text('"Courage Is The Power To Let Go Of The Familiar"', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic), textAlign: TextAlign.center)),
                          ),
                      ]
                  ),
                ), 
                
                Expanded(
                  
                  flex: 7,
                  child: Container(
                    
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: kPrimaryColor.withOpacity(1)),
                                ),
                                child: Icon(Icons.remove_red_eye,
                                    color: kPrimaryColor.withOpacity(1)),
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
                        ]
                      ),

                      Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: kPrimaryColor.withOpacity(1)),
                                ),
                                child: Icon(Icons.note_add,
                                    color: kPrimaryColor..withOpacity(1)),
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
                                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(35.0),),
                                primary: kPrimaryColor,
                              ),
                            ),
                          ),
                        ]
                      ),

                      Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: kPrimaryColor.withOpacity(1)),
                                ),
                                child: Icon(Icons.exit_to_app,
                                    color: kPrimaryColor.withOpacity(1)),
                              ),
                          SizedBox(
                            width: 250,
                            height: 70,
                            child: ElevatedButton(

                              child: Text('Logout',
                                style: Theme.of(context).textTheme.button!.copyWith(
                                  color: Colors.black, fontSize: 30
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/signin');
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(35.0),),
                                primary: kPrimaryColor,
                              ),
                            ),
                          ),
                        ]
                      ),
                  
                  
                  
                  ],
                  ),
                ),
                )
                
              ]
            )
        ));
  }
}

