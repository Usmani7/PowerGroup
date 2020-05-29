import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './home.dart';
import './signup.dart';
import './testdb.dart';
import './mainbody.dart';
class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginState ();
  } }
   class LoginState extends State <Login>
   {
     String _email;
     String _password;
     final TextEditingController _userController = new TextEditingController();
     final TextEditingController _passwordController = new TextEditingController();

     void _clear ()
    {
      setState(() {
        _userController.clear();
        _passwordController.clear();
      });
    }

    void _showWelcome ()
    {
      setState(() {

      });
    }

     @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,

      ),

      body: new Container(
        alignment: Alignment.topCenter,
       padding: new EdgeInsets.all(20.5),
        child: new ListView(
           children: <Widget>[
             //imageprofile
            //  new Image.asset(
            //      'images/POWERGROUPF.png',
            //    width:170.0,
            //   height:170.0,
            //    color:Colors.lightGreen,
            //  ),
             //form
             new Padding(padding: new EdgeInsets.all(5.5)),
             new Container(
               //color: Colors.white,
               child: new Column(
                 children: <Widget>[
                   new TextField(
                     controller: _userController,
                     decoration: new InputDecoration(
                       hintText: 'Email',
                       icon: new Icon(Icons.person)
                     ),
                           onChanged: (value){
                    setState(() {
                     _email = value; 
                    });
                  }
                   ) ,

                   new TextField(
                     controller: _passwordController,
                     decoration: new InputDecoration(
                         hintText: 'Password',
                         icon: new Icon(Icons.lock)
                     ),
                     obscureText: true,
                      onChanged: (value){
                    setState(() {
                     _password = value; 
                    });
                  }
                   ) ,

                   new Padding(padding: new EdgeInsets.all(14.5)),
                   new Center(
                     child: new Row(
                       children: <Widget>[
                         //LoginButton
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child: new RaisedButton(
                               color: Colors.lightGreen ,
                             child: new Text ("Login",
                               style: new TextStyle(
                                   color: Colors.white,
                                   fontSize: 16.0
                               ),
                           ),
                                             onPressed: () {
            //         FirebaseAuth.instance.signInWithEmailAndPassword(
            //           email: _email,
            //           password: _password
            //         ).then((FirebaseUser user) {
            // Navigator.push(context,
            // MaterialPageRoute(builder: (context) => Login()),
            // );                      //Navigator.of(context).pushReplacementNamed('/home');
            //         })
            //         .catchError((e) {
            //           print(e);
            //                       Navigator.push(context,
            // MaterialPageRoute(builder: (context) => Login()),
            // );
            //         });
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Body()));
                  }
                         ),
                         ),

                         new Container(
                           margin: const EdgeInsets.only(left: 80.0),
                           child: new RaisedButton(
                             color: Colors.lightGreen ,
                             child: new Text ("Clear",
                               style: new TextStyle(color: Colors.white,
                                   fontSize: 16.0,
                                   
                               ),
                             ),
                               onPressed: () {
                                 print("clearing");
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Testdb()),
                      // );
                    },
                           ),
                         ),
                         
                         
                         
                       ],
                     ),
                   )
                 ],
               ),
             ),

             new Padding(padding: new EdgeInsets.all(17.5)),
             new Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 new Text("Not Registered? "),
                  new InkWell(
                    child: Text(" Signup",
                      style: new TextStyle(
                      // decoration: ,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      color: Colors.blueAccent ,

                    )
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                  )
               ],
             )
           ],
        ),
      )
    );
  }

   }