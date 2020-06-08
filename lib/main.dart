
import 'package:expence_tracker/dashboard.dart';
import 'package:expence_tracker/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {

  /*final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn(BuildContext context) async{
    final GoogleSignInAccount googleUser=await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth=await googleUser.authentication;

    final AuthCredential credential=GoogleAuthProvider.getCredential(
      idToken: googleAuth.idToken,

       accessToken: googleAuth.accessToken,
       
       );

       FirebaseUser userDetails= (await _firebaseAuth.signInWithCredential(credential)).user;
       ProviderDetails providerinfo= new ProviderDetails(userDetails.providerId);

       List<ProviderDetails> providerData=new List<ProviderDetails>();
       providerData.add(providerinfo);

       UserDetails details= new UserDetails(userDetails.providerId,userDetails.displayName,userDetails.photoUrl,userDetails.email,providerData);
       
       Navigator.push(context, 
       new MaterialPageRoute(builder: (context) =>DashBoard(detailsUser:details),)
       );
       return userDetails;
  }*/

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();
  Future<FirebaseUser> _signIn(BuildContext context) async{
    final GoogleSignInAccount googleUser=await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth=await googleUser.authentication;

    final AuthCredential credential=GoogleAuthProvider.getCredential(
      idToken: googleAuth.idToken,

       accessToken: googleAuth.accessToken,
       
       );

       FirebaseUser userDetails= (await _firebaseAuth.signInWithCredential(credential)).user;
       ProviderDetails providerinfo= new ProviderDetails(userDetails.providerId);

       List<ProviderDetails> providerData=new List<ProviderDetails>();
       providerData.add(providerinfo);

       UserDetails details= new UserDetails(userDetails.providerId,userDetails.displayName,userDetails.photoUrl,userDetails.email,providerData);
       
       Navigator.push(context, 
       new MaterialPageRoute(builder: (context) =>DashBoard(),)
       );
       return userDetails;
  }


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
                         /* new TextFormField(
                        decoration:new InputDecoration(
                          labelText:"Enter Email",
                        ),
                        keyboardType: TextInputType.emailAddress,
                    ),
                    new TextFormField(
                        decoration:new InputDecoration(
                          labelText:"Enter Password",
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
                     "Log In", style: TextStyle(
                       fontSize:20,
                     ),
                   ),
                    onPressed:() =>{

                       Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => DashBoard()),
                      )
                      
                    },
                    ),

                    new Padding(
                      padding: const EdgeInsets.only(top:20),
                    ),
                    new MaterialButton(
                      color: Colors.teal,
                     textColor:Colors.white70 ,
                     child: new Text(
                     "Sign up", style: TextStyle(
                       fontSize:20,
                     ),
                   ),
                    onPressed:() =>{
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) =>Signup()),
                      )
                    },
                    )*/

                    new Padding(
                      padding: const EdgeInsets.only(top:55),
                    ),

                    new RaisedButton(
                       child: new Text("Sign Up with Google", style: TextStyle(
                       fontSize:25,
                     ),),

                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(30.0),
                      ),
                      onPressed: ()=> _signIn(context)
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

class UserDetails{
  final String providerDetails;
  final String username;
  final String photoUrl;
  final String userEmail;

  final List<ProviderDetails> providerData;
  UserDetails(this.providerDetails,this.username,this.photoUrl,this.userEmail,this.providerData);
}

class ProviderDetails {
 
  ProviderDetails(this.providerDetails);
  final String providerDetails;

}