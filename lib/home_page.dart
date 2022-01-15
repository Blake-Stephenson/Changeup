import 'package:flutter/material.dart';
import 'main.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('Home Page'),),
        body: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text('Back to start'),
                onPressed: () {
                  Navigator.pushNamed(context, '/start');
                },
              ),
            ],
          ),
        )
    );
  }
}