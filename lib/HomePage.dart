import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = "Abhi";
  String error = "";
  final _textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(title),
          ),
        ),
        body: Column(
          children: <Widget>[
            Form(
                child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: _textcontroller,
                onChanged: (value) {
                  if (value != "Abhi") {
                    setState(() {
                      error = "Please Enter Correct data";
                    });
                  } else {
                    setState(() {
                      error = "";
                    });
                  }
                },
                onSubmitted: (text) {
                  setState(() {
                    title = text;
                  });
                },
              ),
            )),
            Text(error),
          ],
        ));
  }
}
