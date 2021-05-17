import 'package:c19/data.dart';
import 'package:c19/register.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'quarantine.dart';

//void main() {
//runApp(Myapp());

//}
void main() => runApp(app1());

class app1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Unispace',
        primaryColor: Colors.black,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("images/c19.jpg"), fit: BoxFit.cover),
              ),
            ),
          ),




          Padding(

              padding: EdgeInsets.fromLTRB(100,300,20,20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                //rossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        
                        width: 250.0,
                        height: 60.0,
                        child: Row(
                            children : <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon( Icons.person_add,color: Colors.white70,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  elevation: 0,
                                textColor: Colors.white,
                                color: Colors.transparent,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => register()),
                                  );
                                },
                                child: Text(
                                  "Register ",
                                )),
                              ),
                      ]  ),

                         )),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        //color:Colors.red,
                        width: 250.0,
                        height: 60.0,
                        child:Row(
                          children : <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon( Icons.view_list,color: Colors.white70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                elevation: 0,
                              textColor: Colors.white,
                              color: Colors.transparent,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => list1()));
                              },
                              child: Text(
                                "Quarantine List",
                              )),
                            ),
                      ],
                          ),

                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(

                        width: 250.0,
                        height: 60.0,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon( Icons.insert_chart,color: Colors.white70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                textColor: Colors.white,
                                elevation: 0,
                                color: Colors.transparent,
                                onPressed: () {},
                                child: Text(
                                  "Analysis",
                                )),
                            ),
                        ]
                        ),
                      )),
                ],
              )),
        ]));
  }
}
