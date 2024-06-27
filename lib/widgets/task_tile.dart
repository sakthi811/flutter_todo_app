import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool _isChecked = true;

  void _handleCheckboxChange(bool? newValue) {
    setState(() {
      _isChecked = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task',
          style: TextStyle(
            decoration:
                _isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          )),
      trailing: TaskCheckbox(
          checkBoxState: _isChecked,
          toggleCheckBoxState: _handleCheckboxChange),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final ValueChanged<bool?> toggleCheckBoxState;

  TaskCheckbox(
      {required this.checkBoxState, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
