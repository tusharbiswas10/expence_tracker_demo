import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class cashOutTrans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: StreamBuilder(stream: Firestore.instance.collection('Cashout').snapshots(),
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
                                  Text('${mysnap['title']}',
                                  style:TextStyle( fontSize:20,fontWeight:FontWeight.bold),
                                  ),
                                  Text('${mysnap['amount']}',
                                  style:TextStyle( fontSize:20,fontWeight:FontWeight.bold),
                                  ),
                                  Text('${mysnap['date']}',
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