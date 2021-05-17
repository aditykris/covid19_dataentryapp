import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forms extends StatelessWidget {
  String text ;

  forms(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextFormField(decoration: InputDecoration(
          labelText: text,
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.greenAccent),
            borderRadius:
            BorderRadius.all(Radius.circular(20)),
          )),
      ),
    );
  }
}
class menu extends StatelessWidget {
  String button_name;
  menu(this.button_name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}