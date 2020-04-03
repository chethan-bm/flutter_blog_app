import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods{

  // ignore: missing_return
  Future<void> addData(blogData){
    Firestore.instance.collection("blogs").add(blogData).catchError((e){
      print(e);
    });
  }

}