import 'package:flutter/material.dart';
import 'constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/person.png") as ImageProvider,
                  fit: BoxFit.cover,
                ),
              ),
              
            ),
          ),

          Expanded(
            flex:2,
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Formatting Title Text
                Align(
                  alignment: Alignment.centerLeft, 
                  child: Container(
                    margin: new EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "DISRUPT\n", style: Theme.of(context).textTheme.headline4),
                          TextSpan(text: "START A REVOLUTION", style: Theme.of(context).textTheme.headline6),
                        ],
                      ),
                    ),
                  ),
                ),


                FittedBox(
                  child: GestureDetector(
                    onTap: () {Navigator.pushNamed(context, '/signin');},

                    child: Container(
                      margin: const EdgeInsets.only(bottom: 35),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "CREATE CHANGE",
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  color: Colors.black,
                                ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
          ))
        ],
      ),
    );
  }
}