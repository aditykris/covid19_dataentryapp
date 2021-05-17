import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/firebase_database.dart';

class Todo {

  String name;

 // String userId;

  Todo(this.name);

  Todo.fromSnapshot(DataSnapshot snapshot) :

        //userId = snapshot.value["userId"],
       name = snapshot.value["name"];


  toJson() {
    return {
      //"userId": userId,
      "subject": name,

    };
  }
}


