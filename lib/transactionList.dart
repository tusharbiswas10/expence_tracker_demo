import 'package:expence_tracker/cashOutTran.dart';
import 'package:expence_tracker/cashinTrans.dart';
import 'package:expence_tracker/credit.dart';
import 'package:expence_tracker/creditList.dart';
import 'package:expence_tracker/debt.dart';
import 'package:expence_tracker/debtList.dart';
import 'package:flutter/material.dart';


class transaction extends StatefulWidget {
  @override
  _transactionState createState() => _transactionState();
}

class _transactionState extends State<transaction>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      
      /*appBar: AppBar(
        title:Text('Transaction List')
      ),*/
      body: /*StreamBuilder(
        stream: Firestore.instance.collection('Amountlist').snapshots(),
        builder: null),*/
         new Container(
           
           child: new Column(
            
             mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Padding(padding: const EdgeInsets.only(left: 11180)),
               new MaterialButton(
                      color: Colors.teal,
                     textColor:Colors.white70 ,
                     child: new Text(
                     "Cash In", style: TextStyle(
                       fontSize:35,
                     ),
                   ),
                    onPressed:() =>{

                       Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => cashIn()),
                      )
                      
                    },
                    ),

                    new Padding(padding: const EdgeInsets.only(top:20)),

                    new MaterialButton(
                      color: Colors.teal,
                     textColor:Colors.white70 ,
                     child: new Text(
                     "Cash Out", style: TextStyle(
                       fontSize:35,
                     ),
                   ),
                    onPressed:() =>{

                       Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => cashOutTrans()),
                      )
                      
                    },
                    ),

                    new Padding(padding: const EdgeInsets.only(top:20)),

                    new MaterialButton(
                      color: Colors.teal,
                     textColor:Colors.white70 ,
                     child: new Text(
                     "Credit List", style: TextStyle(
                       fontSize:35,
                     ),
                   ),
                    onPressed:() =>{

                       Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => creditshow()),
                      )
                      
                    },
                    ),

                    new Padding(padding: const EdgeInsets.only(top:20)),

                    new MaterialButton(
                      color: Colors.teal,
                     textColor:Colors.white70 ,
                     child: new Text(
                     "Debt List", style: TextStyle(
                       fontSize:35,
                     ),
                   ),
                    onPressed:() =>{

                       Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => debtshow()),
                      )
                      
                    },
                    ),
             ],
           ),
         )
      
    );
  }
}