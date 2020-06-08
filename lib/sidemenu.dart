import 'package:expence_tracker/aboutus.dart';
import 'package:flutter/material.dart';



class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      
       child: Column(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top:50),),
               /* ListTile(
                  leading:Icon(Icons.person),
                  title: Text('Profile',
                  style:TextStyle(
                    fontSize:22
                  )
                  ),
                  onTap: null,
                ),

                ListTile(
                  leading:Icon(Icons.arrow_back),
                  title: Text('Log out',
                  style:TextStyle(
                    fontSize:22
                  )
                  ),
                  onTap: null,
                ),*/

                ListTile(
                  leading:Icon(Icons.question_answer),
                  title: Text('About us',
                  style:TextStyle(
                    fontSize:22
                  )
                  ),
                  onTap:(){
                     Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => aboutUs(),));
                  },
                ),
                
              ],
              ),
      
    
    );
  }
}


