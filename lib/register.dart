import 'dart:ui';

import 'package:c19/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'package:firebase_database/firebase_database.dart';


class register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _register();
  }
}

class _register extends State<register> {
  final _formKey = GlobalKey<FormState>();

  String name;
  String age;
  String address;
  String arrived;
  DateTime arrival ;
  String phone,ward;
  String morbity;
  String finaldate;
  TextEditingController dateCtl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Register")),
        body: Container(

            padding: const EdgeInsets.symmetric(),
            child: Form(
                key: _formKey,
                child: ListView(children: <Widget>[
                  Column(


                    children: <Widget>[
                      Text(
                        "Enter the details",
                        style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontFamily: 'Unicode',
                            fontSize: 30),
                          // textAlign: TextAlign.left,
                      ),


                   Padding(
                     padding: const EdgeInsets.all(15),
                     child: TextFormField(decoration: InputDecoration(
                          labelText: "Full Name",
                          icon: Icon(Icons.person,color:Colors.black),

                          ),

                        validator: (String value){
                                      if(value.isEmpty) {
                                        return "Name is empty";
                                      }},
                        onSaved:(String value) => setState(() =>name=value),


                      ),
                   ),

                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(decoration: InputDecoration(
                        labelText: "Age",
                      icon: Icon(Icons.perm_contact_calendar,color:Colors.black)

                      ),
                      keyboardType: TextInputType.number,
                      validator: (value){
                      if(value.isEmpty){
                       return "Age is Empty";
                      }},
                      onSaved: (String value){
                      age=value  ;
                      }
                    ),

                  ),


                     Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(decoration: InputDecoration(
                      labelText: "Arrived from",
                    icon: Icon(Icons.airplanemode_active,color: Colors.black,)
                      ),
                    validator: (String value){
                      if(value.isEmpty) {
                        return "Arrival is empty";
                      }},
                    onSaved:(String value) => setState(() =>arrived=value),
                  ),
                ),
                     //Padding(padding: EdgeInsets.all(15), child:),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child:TextFormField(

                          controller: dateCtl,
                          decoration: InputDecoration(
                            labelText: "Arrival Date",
                          icon: Icon(Icons.calendar_today,color: Colors.black,)
                          ),

                          onTap: () async{
                            DateTime date = DateTime(1900);
                            FocusScope.of(context).requestFocus(new FocusNode());

                            arrival = await showDatePicker(
                                context: context,
                                initialDate:DateTime.now(),
                                firstDate:DateTime(2018),
                                lastDate: DateTime(2100));

                            dateCtl.text = date.toIso8601String();



                            },

                        )
                      ),


                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextFormField(decoration: InputDecoration(
                          labelText: "Address",
                          icon: Icon(Icons.home,color:Colors.black)
                        ),

                          validator: (String value){
                            if(value.isEmpty){
                              return "Address is Empty";
                            }},
                          onSaved: (String value) => setState(() => address=value),
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextFormField(decoration: InputDecoration(
                          labelText: "Contact Number",
                          icon: Icon(Icons.contact_phone,color: Colors.black,)
                        ),
                          keyboardType: TextInputType.number,
                          validator: (String value){
                            if(value.isEmpty){
                              return "Enter your phone number";
                            }},
                          onSaved: ( String value) => setState(() =>phone=value),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextFormField(decoration: InputDecoration(
                          labelText: "Ward",
                          icon: Icon(Icons.location_city,color: Colors.black,)

                        ),
                          keyboardType: TextInputType.number,
                          validator: (String value){
                            if(value.isEmpty){
                              return "Enter your Ward";
                            }},
                          onSaved: ( String value) => setState(() =>ward=value ),

                        ),
                      ),
                      Padding(

                        padding: EdgeInsets.all(15),
                        child: TextFormField(decoration: InputDecoration(
                          labelText: "Mention Morbidity if any",
                          icon: Icon(Icons.local_hospital,color: Colors.black)
                        ),

                          onSaved: (String value) => setState(() => morbity=value),
                        ),

                      ),

                      Padding(
                        padding: EdgeInsets.all(15),
                        child: RaisedButton(
                          child: Text("Register"),
                          onPressed: (){
                            //_formKey.currentState.validate();
                            _formKey.currentState.save();
                            //print("$address,$age,$name,$arrived,$phone,$ward");
                            //finaldate ="${arrival.day}-${arrival.month}-${arrival.year}";
                           // print(finaldate);
                              //print(count);
                            FirebaseDatabase.instance.reference().child('1')
                                .set({
                              'name': name,

                            });


                            },

                        ),
                      ),

                    ],
                  ),
                ]),
              ),
            ));
  }
}
