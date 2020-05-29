import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Testdb extends StatefulWidget {
  @override
  _TestdbState createState() => _TestdbState();
}

class _TestdbState extends State<Testdb> {
  String mystring = null;
  String _name;
  String _desc;
  //StreamSubscription<DocumentSnapshot> subscription;
  //Streamsubsciption not added
  final DocumentReference documentReference = Firestore.instance.collection("mydata").document("uid");
  void _add() {
    Map <String, String> data = <String, String>{
      "name": _name,
      "roll": _desc
    };
    Firestore.instance.collection("mydata").add(data)
    //documentReference.setData(data).whenComplete((){
      //print("Data added");
    //}).catchError((e){
      .catchError((e){
      print(e);
    });
  }
  void _delete() {
    documentReference.delete().whenComplete((){
      print("deleted");
      setState(() {
        
      });

    }).catchError((e){
      print(e);
    });
  }
  void _update() {
    Map <String, String> data = <String, String>{
      "name": "Usman Updated",
      "roll": "057"
    };
    documentReference.updateData(data).whenComplete((){
      print("Data added");
    }).catchError((e){
      print(e);
    });
  }
  void _fetch() {
    documentReference.get().then((datasnapshot){
      if(datasnapshot.exists) {
        setState(() {
        mystring =datasnapshot['desc'];          
        });
      }
    });
  }
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("testdb"),
      ),
      body: ListView(
        children: <Widget>[

          TextField(
            decoration: InputDecoration(
              hintText: 'Name',
            ),
            onChanged: (value){
              setState(() {
                _name = value;
              });
            },
          ),
                    TextField(
            decoration: InputDecoration(
              hintText: 'Description',
            ),
            onChanged: (value){
              setState(() {
                _desc = value;
              });
            },
          ),
          FlatButton(
            child: Text("send"),
            onPressed: () {
              _add();
            },
          ),

          RaisedButton(
                   child: Text("Add"),
                   onPressed: () {
                    //  Navigator.push(context,
                    //  MaterialPageRoute(builder: (context) => Diet()),
                    //  );
                    _add();
                   },
                   ),
                   RaisedButton(
                   child: Text("Update"),
                   onPressed: () {
                    //  Navigator.push(context,
                    //  MaterialPageRoute(builder: (context) => Diet()),
                    //  );
                    _update();
                   },
                   ),
                   RaisedButton(
                   child: Text("Delete"),
                   onPressed: () {
                    //  Navigator.push(context,
                    //  MaterialPageRoute(builder: (context) => Diet()),
                    //  );
                    _delete();
                   },
                   ),
                   RaisedButton(
                   child: Text("Fetch"),
                   onPressed: () {
                    //  Navigator.push(context,
                    //  MaterialPageRoute(builder: (context) => Diet()),
                    //  );
                    _fetch();
                   },
                   ),
                   Text("hello"),
                   mystring == null? Container():Text("hello" + mystring),
                   StreamBuilder(
                     stream: Firestore.instance.collection('mydata').snapshots(),
                     builder: (context, snapshot){
                       if(!snapshot.hasData) return Text("loading. . . . ");
                      //           return Column(
                      //    children: <Widget>[
                      //      Text(snapshot.data.documents[1]['name']),
                      //    ],
                      //  );

                               return ListView.builder(
                         itemCount: snapshot.data.documents.length,
                         itemBuilder: (BuildContext context,int index){
                           return Text(snapshot.data.documents[index]['name']);
                         },
                       );
                     },
                   ),
        ],
    ),
    );
    
  }
}


             