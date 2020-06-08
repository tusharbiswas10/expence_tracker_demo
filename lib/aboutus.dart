import 'package:flutter/material.dart';


class aboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:new Text("This app is built to learn basic flutter app development",textAlign: TextAlign.justify,style: TextStyle(
                            color:Colors.black38,fontSize:40,
                          ),),
      
    );
  }
}