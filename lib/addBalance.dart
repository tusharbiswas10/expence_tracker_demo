import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class AddBalance extends StatelessWidget {

 
  String title;
  String amount;
  double a;
  String p;

  getTitle(title){
    this.title=title;
    print(title);
  }

  getAmount(amount){
    this.amount=amount;
    a=double.parse(amount);
    print(amount.toString());
  }

  getDate(p){
    this.p=p;
  }

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked =await showDatePicker(context: context, 
    initialDate: DateTime.now(),
     firstDate: DateTime(2000), lastDate: DateTime(2222),);

     if(picked != null ){
       var formatter = new DateFormat('dd-MM-yyyy');
      // print(picked.toString());
       String dt=formatter.format(picked);
       getDate(dt);

     }

     
  }

  createData(){
    DocumentReference ds=Firestore.instance.collection('Amountlist').document(title);
    Map<String,dynamic> list={
      "Title":title,
      "Amount":a,
      "Date":p,
    };
    ds.setData(list).whenComplete((){
      //print("task cmplt");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar:AppBar(
           title:Text("Add Balance"),
           centerTitle: true,
           ),

        body:Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new TextField(
              keyboardType: TextInputType.text,
              decoration:new InputDecoration(
                          labelText:"Enter Title",
                        ),
              onChanged: (String t){
                getTitle(t);
              },
            ),

            new TextField(
              keyboardType: TextInputType.numberWithOptions(),
              decoration:new InputDecoration(
                          labelText:"Enter Amount",
                        ),
              onChanged: (String t){
                getAmount(t);
              },
            ),

            //Text(_dateTime ==null ? 'Please select a date':_dateTime.toString() ),
           
          

            RaisedButton(
                
                child: Text("Pick a date"),

              onPressed: () {
               selectDate(context);
              },
              
              ),

             //Text( picked.toString() )

             RaisedButton(
                
                child: Text("Save"),

              onPressed: () {
               createData();
              },
              
              ),



          ],

        ),
        
        )

       ),
      
    );
  }
}