import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods{

  // ignore: missing_return
  Future<void> addData(blogData) async{
    Firestore.instance.collection("blogs").add(blogData).catchError((e){
      print(e);
    });
  }
  getData() async {
    return await Firestore.instance.collection("blogs").snapshots();
  }
}