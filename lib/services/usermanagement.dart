import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class UserManagement {
  storeNewUser (user, context) {
    Firestore.instance.collection('/users').add({
      'email': user.email,
      'uid': user.uid
    }).then((value){
      Navigator.of(context).pop();
      print("before navigating");
      Navigator.of(context.pushReplacementNamed('/Login'));
      print("after navigating");
    }).catchError((e){
      print(e);
    });
  }
  
}