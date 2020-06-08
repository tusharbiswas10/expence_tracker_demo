import 'package:expence_tracker/dashboard.dart';

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        
      ),
      body: Container(),
      endDrawer: ClipPath(
            clipper: _DrawerClipper(),
              child: Drawer(
          child:SingleChildScrollView(
                      child: Container(
              padding: const EdgeInsets.only(top:50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new MaterialButton(
                      child:new Text("Dashboard"),
                      
                      onPressed:(){
                         Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => DashBoard()),
                      );

                      },
                    ),
                     new MaterialButton(
                       child:new Text("Profile"),
                      
                      onPressed:(){

                      },
                    ),
                     new MaterialButton(
                       child:new Text("Log out"),
                      onPressed:(){

                      },
                    ),
                     new MaterialButton(
                       child:new Text("About us"),
                      onPressed:(){

                      },
                    ),
                    
                    
                  ],
              ),
            ),
          )
        ),
      ),
      
    );
  }
}


class _DrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(50, 0);
    path.quadraticBezierTo(0, size.height/2, 50, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    
    return true;
  }
  
}