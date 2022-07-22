// import 'package:flutter/material.dart';
//
//
// class TaskTile extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text('This is our task'),
//       trailing: TaskCheckbox(),
//     );
//   }
// }
//
// class TaskCheckbox extends StatefulWidget {
//
//   @override
//   State<TaskCheckbox> createState() => _TaskCheckboxState();
// }
//
// class _TaskCheckboxState extends State<TaskCheckbox> {
//
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: isChecked,
//       activeColor: Colors.teal[500],
//       onChanged: (newValue) {
//         setState((){
//           isChecked = newValue!;
//         });
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  TaskTile(this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback);

  final bool isChecked;
  final String taskTitle;
  final dynamic checkboxCallback;
  final dynamic longPressCallback;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[500],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}