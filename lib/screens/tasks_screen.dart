import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_bottom_sheet.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  Widget customBottomSheet(BuildContext context) {
    return Container(
      child: Center(child: Text('A custom bottom sheet')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: CustomBottomSheet())));
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 100.0, left: 50.0, right: 50.0, bottom: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                        size: 30.0, color: Colors.lightBlueAccent, Icons.list)),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todo',
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  '4 Tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
