import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods{

  // ignore: missing_return
  Future<void> addData(blogData) async{
    Firestore.instance.collection("blogs").add(blogData).catchError((e){
      print(e);
    });
  }
  Future<QuerySnapshot>getData() async {
    return await Firestore.instance.collection("blogs").getDocuments();
  }
}