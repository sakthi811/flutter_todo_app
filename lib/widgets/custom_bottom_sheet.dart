import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent)),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              TextButton(
                  onPressed: () {},
                  child: Container(
                      padding: EdgeInsets.only(
                          left: 50.0, top: 10.0, right: 50.0, bottom: 10.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Text('Add',
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.0))))
            ],
          )),
    );
  }
}
