// // import 'package:flutter/material.dart';
// // import './mainbody.dart';
// // import './login.dart';
// // import './signup.dart';
// // import './testdb.dart';
// // import './profile.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // class Home extends StatefulWidget{
// //   @override
// //   State<StatefulWidget> createState() {
// //     return new HomeState();
// //   }
// // }

// // class HomeState extends State<Home>{
// //   int i=0;
// //   // void _click() {
// //   //   setState(() {
// //   //     i++;
// //   //       });
// //   // }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.green,
// //                title: Text("PowerGroup"),    
// //                actions: <Widget>[               
// //                  IconButton(
// //                    icon: Icon(Icons.person),
// //                    onPressed: () {
// //                     Navigator.push(context, 
// //                     MaterialPageRoute(builder: (context)=>Login()),
// //                    );
// //                    }
// //                  ),
// //                     IconButton(
// //                    icon: Icon(Icons.remove_circle_outline),
// //                    onPressed: () {
// //                      FirebaseAuth.instance.signOut().then((value){
// //                        Navigator.of(context).pushReplacementNamed('/login');
// //                      }).catchError((e){
// //                        print(e);
// //                      });
// //                    }
// //                  ),
// //                ],                
// //         ),
// //         drawer: Drawer(
// //           child: ListView(
// //             children: <Widget>[
// //               DrawerHeader(
// //                 padding: EdgeInsets.all(0.0),
// //                 child: Stack(
// //                   children: <Widget>[
// //                  Image.asset(
// //                   'builders.jpg',
// //                   height: 900.0,
// //                   fit: BoxFit.cover,
// //                   width: 500.0,
// //                   ),
// //                  new Positioned(
// //                     child: Center(
// //                   child: Text(
// //                     "Fit-Man",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w800,
// //                       fontSize: 26.0,
// //                       color: Colors.black,
// //                     ),
// //                   ),
// //                     ),
// //                  ),
// //                   ],
// //                 ),
// //               ),
// //               ListTile(
// //                 title: Row(
// //                   children: <Widget>[
// //                    Icon(Icons.search),
// //                    Text("Search"),
// //                   ],
// //                 ),
// //               ),
// //               ListTile(
// //                 title: Row(
// //                   children: <Widget>[
// //                    Icon(Icons.headset),
// //                    InkWell(
// //                      child: Text("WorkOut"),
// //                    onTap: () {
// //                     //  Navigator.push(context,
// //                     //  MaterialPageRoute(builder: (context) => Workout()),
// //                     //  );
// //                     print('workout taped');
// //                    }
// //                    ),
// //                   ],
// //                 ),
// //               ),             
// //                ListTile(
// //                 title: Row(
// //                   children: <Widget>[
// //                    Icon(Icons.book),
// //                    InkWell(
// //                    child: Text("Diet Plan"),
// //                    onTap: () {
// //                     //  Navigator.push(context,
// //                     //  MaterialPageRoute(builder: (context) => Diet()),
// //                     //  );
// //                     print('diet taped');
// //                    },
// //                    ),
// //                   ],
// //                 ),
// //               ),
// //                             ListTile(
// //                 title: Row(
// //                   children: <Widget>[
// //                    Icon(Icons.person),
// //                    Text("Account"),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //         floatingActionButton: new FloatingActionButton(
// //           onPressed: () {
// //             Navigator.push(context,
// //             MaterialPageRoute(builder: (context) => Testdb()),
// //             );
// //           },
// //           backgroundColor: Colors.green,
// //           tooltip: 'Adding',
// //           child: new Icon(Icons.add),
// //         ),
// //         body: Body(),
// //         bottomNavigationBar: BottomNavigationBar(items: [
// //           BottomNavigationBarItem(icon: Icon(Icons.notifications), title: Text("Notifications")),
// //           BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
// //           BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile")),
// //         ],),
// //       );
// //   }

// // }



// import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
// //import 'SignUp.dart.';
// //import 'Profile.dart';

// class Product extends StatefulWidget
// {

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return new ProductState();
//   }
// }

// class ProductState extends State <Product>
// {
  
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return new Scaffold(
//       appBar: new AppBar(
//       title: new Text("Products"),
//            centerTitle: true,
//             backgroundColor: Colors.lightGreen,
//       ),
        
//         body:  new Container(
//          //  child: Container(
//              margin: new EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
//              child: new ListView(
//                children: <Widget>[
//                  new Container(

//                   child: Row(
//                 children: <Widget>[ 
//                  new Container(
//                            //margin: const EdgeInsets.only(left: 5.0),
//                            child: new FlatButton(
//                                 onPressed: ()
//                              {
//                                print("Oh yeah");
//                              },
//                               // color: Colors.lightGreen ,
//                              child: new Text ("Exclusive",
//                                style: new TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0
//                                ),
//                            ),
//                          ),
//                          ),

//                          new Container(
//                            margin: const EdgeInsets.only(left: 85.0),
//                            child: new FlatButton(
//                              onPressed: ()
//                              {
//                               // print("Oh yeah");
//                              },
//                              //shape: ShapeBorder.,
//                             // color: Colors.lightGreen ,
//                              child: new Text ("Favourite",
//                                style: new TextStyle(color: Colors.black,
//                                    fontSize: 14.0,
//                                ),
//                              ),
//                            ),
//                          ),                  
//                 ],
//               ),
//                  ),
//             new Padding(padding: new EdgeInsets.all(11.5)),
     
//         new Text("Hello Bitch"),
      
//          new Center( 
//               child:  new SizedBox(
//               height: 200.0,
//               width: 350.0,
//              //   
//               child: new Carousel(
                      
//             images: [
//               new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
//               new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
//              // new ExactAssetImage("assets/images/LaunchImage.jpg")
//             ],
//               dotSize: 4.0,
//               dotSpacing: 15.0,
//               dotColor: Colors.black,
//               indicatorBgPadding: 5.0,
//               dotBgColor: Colors.purple.withOpacity(0.5),
//               borderRadius: true,
//               moveIndicatorFromBottom: 180.0,
//               noRadiusForIndicator: true,
//               overlayShadow: true,
//               overlayShadowColors: Colors.white,
//               overlayShadowSize: 0.7,
//             )
//         ),
//       ),
//                ],
//              ),

          
//         ),
//       );
    
//   }
        
    
      
//   }