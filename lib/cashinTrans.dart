import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class cashIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: StreamBuilder(stream: Firestore.instance.collection('Amountlist').snapshots(),
      builder: (context,snapshot){
        if(!snapshot.hasData){
          const Text('Loading');
        }
        else{
          return ListView.builder(
            itemCount:snapshot.data.documents.length ,
            itemBuilder:(context,index){
                  DocumentSnapshot mysnap=snapshot.data.documents[index];
                  return Stack(
                      children: <Widget>[
                        Container(
                          width:MediaQuery.of(context).size.width,
                          height: 100,
                          child: Padding(
                            padding: EdgeInsets.only(top:10,bottom: 10),
                            child: Material(
                              color: Colors.black12,
                              elevation: 15,
                              shadowColor: Colors.white10,
                              child: Column(
                                children:<Widget>[
                                  Text('${mysnap['Title']}',
                                  style:TextStyle( fontSize:20,fontWeight:FontWeight.bold),
                                  ),
                                  Text('${mysnap['Amount']}',
                                  style:TextStyle( fontSize:20,fontWeight:FontWeight.bold),
                                  ),
                                  Text('${mysnap['Date']}',
                                  style:TextStyle( fontSize:20,fontWeight:FontWeight.bold),
                                  ),
                                ]
                              ),
                            ),
                            
                            ),

                        )
                      ],
                  );
            }
            );
        }
        
      }
      )
      
    );
  }
}