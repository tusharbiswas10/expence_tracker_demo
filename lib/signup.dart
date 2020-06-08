import 'package:expence_tracker/main.dart';
import 'package:flutter/material.dart';
//import 'dart:js';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black12,
      body: new Stack(
        fit: StackFit.expand,
        children:<Widget>[
          new Image(image: new AssetImage("assets/Login.jpg"),
          fit: BoxFit.cover,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Form(
                  child: Theme(
                    data: new ThemeData(
                      brightness:Brightness.dark,
                      primarySwatch:Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                            color:Colors.teal,fontSize:20,
                          )
                      )
                    ),
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        child: new Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.center,
                        children:<Widget>[
                          new Text('Expense Tracker',textAlign: TextAlign.justify,style: TextStyle(
                            color:Colors.white54,fontSize:40,
                          ),),
                          new TextFormField(
                        decoration:new InputDecoration(
                          labelText:"Enter Phone Number",
                        ),
                        keyboardType: TextInputType.phone,
                    ),
                    new TextFormField(
                        decoration:new InputDecoration(
                          labelText:"Enter Password",
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                    ),
                    new TextFormField(
                        decoration:new InputDecoration(
                          labelText:"Enter Password Again",
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(top:20),
                    ),
                    new MaterialButton(
                      color: Colors.teal,
                     textColor:Colors.white70 ,
                     child: new Text(
                     "Register", style: TextStyle(
                       fontSize:20,
                     ),
                   ),
                    onPressed:() =>{},
                    ),

                    new Padding(
                      padding: const EdgeInsets.only(top:20),
                    ),
                    new MaterialButton(
                      color: Colors.teal,
                     textColor:Colors.white70 ,
                     child: new Text(
                     "Log In", style: TextStyle(
                       fontSize:20,
                     ),
                   ),
                    onPressed:() =>{
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) =>LogInPage()),
                      )
                    },
                    )
                        ]
                    ),
                      ),
                  )
                ),
              ],

          )
        ]
      ),
    );
  }
}