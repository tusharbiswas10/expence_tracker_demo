

import 'package:expence_tracker/addBalance.dart';
import 'package:expence_tracker/addCost.dart';
import 'package:expence_tracker/credit.dart';
import 'package:expence_tracker/debt.dart';
import 'package:expence_tracker/sidemenu.dart';
import 'package:expence_tracker/transactionList.dart';
import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  


  @override
  Widget build(BuildContext context) {

  
    return Scaffold(
      backgroundColor: Colors.black38,
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0,
        
        
        
        
        
      ),
      drawer:Drawer(
          child:MainDrawer(), 

        ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children:<Widget>[
                

            Expanded(child: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    InkWell(
          child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/AddBalance.jpg'),
            fit: BoxFit.fill,
          ),
          
        ),
        
      ),
      onTap: () => {

                       Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => AddBalance()),
                      )
                      
                    },
    ),

    InkWell(
          child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/addCost.jpg'),
            fit: BoxFit.fill,
          ),
          
        ),
        
      ),
      onTap: () => {

                       Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => AddCost()),
                      )
                      
                    },
    ),

    InkWell(
          child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/Transaction.jpg'),
            fit: BoxFit.fill,
          ),
          
        ),
        
      ),
      onTap: () => {
        Navigator.push(context, 
                      MaterialPageRoute(builder: (context) =>transaction()),
                      
      ),
      }
         
    ),

    InkWell(
          child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/debt.jpg'),
            fit: BoxFit.fill,
          ),
          
        ),
        
      ),
      onTap: () => {
         Navigator.push(context, 
                      MaterialPageRoute(builder: (context) =>debtList()),
                      )
      }
       
      
    ),

    InkWell(
          child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/Credit.jpg'),
            fit: BoxFit.fill,
          ),
          
        ),
        
      ),
      onTap: () => {
         Navigator.push(context, 
                      MaterialPageRoute(builder: (context) =>creditList()),
                      )
      },
    ),

    /*InkWell(
          child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/report.jpg'),
            fit: BoxFit.fill,
          ),
          
        ),
        
      ),
      onTap: () => print("report pressed"),
    ),*/
    
  ],
),

            )
            
          



              ]
             
            ),
        ),
      ),
    );
  }
}