// import 'package:fitman/databasehelp.dart';
// import 'package:fitman/model/user.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './services/usermanagement.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SignUpState();
  }
}

class SignUpState extends State <SignUp>

{
  String _firstname;
  String _lastname;
  String _email;
  String _password;
  String _cpassword;

  final TextEditingController _firstcontroller = new TextEditingController();
  final TextEditingController _lastcontroller = new TextEditingController();
  final TextEditingController _emailcontroller = new TextEditingController();
  final TextEditingController _passcontroller = new TextEditingController();
  final TextEditingController _cpasscontroller = new TextEditingController();
  bool _sel = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
        title: new Text("Sign Up"),
    centerTitle: true,
    backgroundColor: Colors.lightGreen,
    ),

      body: new Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(2.5)),
            new Image.asset(
              'images/POWERGROUPF.png',
              width:170.0,
              height:170.0,
              color:Colors.lightGreen
            ),
            new Center (
            child: Container(
              //padding: new EdgeInsets.all(0.5),
              //color: Colors.white,
              child: new Column(
                children: <Widget>[
                //  new Padding(padding: new EdgeInsets.all(2.5)),
                  //FirstName
                  new TextField(
                    controller: _firstcontroller,
                    decoration: new InputDecoration(
                        hintText: 'First Name',
                        icon: new Icon(Icons.person)
                    ),
                    onChanged: (value){
                    setState(() {
                     _firstname = value; 
                    });
                  }
                    //obscureText: true,
                  ),

                  //LastName
                  new TextField(
                    controller: _lastcontroller,
                    decoration: new InputDecoration(
                        hintText: 'Last Name',
                        icon: new Icon(Icons.person)
                    ),
                                      onChanged: (value){
                    setState(() {
                     _lastname = value; 
                    });
                  }
                  //  obscureText: true,
                  ),

                  //Email
                  new TextField(
                    controller: _emailcontroller,
                    decoration: new InputDecoration(
                        hintText: 'Email',
                        icon: new Icon(Icons.email)
                    ),
                    //obscureText: true,
                     onChanged: (value){
                    setState(() {
                     _email = value; 
                    });
                  }
                  ),

                  //Password
                  new TextField(
                    controller: _passcontroller,
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
                  ),

                    //ConfirmPassword
                  new TextField(
                    controller: _cpasscontroller,
                    decoration: new InputDecoration(
                        hintText: 'Confirm Password',
                        icon: new Icon(Icons.lock)
                    ),
                    obscureText: true,
                     onChanged: (value){
                    setState(() {
                     _cpassword = value; 
                    });
                  }
                  ),

                  new Padding(padding: new EdgeInsets.all(9.5)),

                  new Center(
                    child: new Row(
                      children: <Widget>[

                     new Padding (padding: new EdgeInsets.fromLTRB(5.5,0.0,22.5,0.0)),
                          //margin: const EdgeInsets.only(left: 50.0),
                     new Container(
                       child: new Checkbox(
                         onChanged:  (bool resp)
                         {
                           setState(()
                           {
                             _sel = resp;
                           });
                         },
                         value: _sel,

                       )
                     ),

                        new Text("Accept our "),
                            new InkWell(
                             child: Text(" terms and conditions.",
                            style: new TextStyle(
                           // decoration: ,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: Colors.blueAccent ,
                            )
                          ),

                        ),


                ],
              ),


            ),
                  new Padding(padding: new EdgeInsets.fromLTRB(0.0,0.0,0.0,2.0)),

                      //SigupButton
                      new Container(
                        margin: const EdgeInsets.only(left: 3.0),
                        child: RaisedButton(
                          color: Colors.lightGreen ,
                          child: new Text ("Sign up",
                            style: new TextStyle(color: Colors.white,
                                fontSize: 16.0
                            ),
                          ),
                          onPressed: () async {
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _email,
                      password: _password
                      )
                      .then((signedInUser) {
                        UserManagement().storeNewUser(signedInUser, context);
                    });
                  }
                        ),
                      ),
                     new Text ("OR",
                    style: new TextStyle(
                      color: Colors.black26,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0

                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(left: 3.0),
                    child: RaisedButton(
                      onPressed: (){
                        print("Hello MF");
                      },
                      color: Colors.blueAccent ,
                      child: new Text ("Login with Facebook ",
                        style: new TextStyle(color: Colors.white,
                            fontSize: 16.0
                        ),
                      ),
                    ),
                  ),

                    ],
              ),
      ),
      )
    ],
      )
    )
    );
  }
}