import 'package:c19/data.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'package:firebase_database/firebase_database.dart';

import 'data.dart';




class list1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _list1();
  }
}
final mainReference = FirebaseDatabase.instance.reference();


class _list1 extends State<list1>{
  List<Todo> weightSaves = new List();

  _list1() {
    mainReference.onChildAdded.listen(_onEntryAdded);
  }
  _onEntryAdded(Event event) {
    setState(() {
      weightSaves.add(new Todo.fromSnapshot(event.snapshot));
    });
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: new Text(" QUARANTINE LIST",textAlign: TextAlign.center,),


    ),
     body: new ListView.builder(
         itemCount: weightSaves.length,
         itemBuilder: (buildContext, index)
     {
             return Padding(
                 padding:const EdgeInsets.symmetric(),
                 child:new Text('${weightSaves[index].name}')
             );
     }
     )
     );

  }

}


