// import 'package:flutter/material.dart';
// import 'package:todoey/widget/task_tile.dart';
// import '../models/task.dart';
//
// class TaskList extends StatefulWidget {
//   @override
//   State<TaskList> createState() => _TaskListState();
// }
//
// class _TaskListState extends State<TaskList> {
//
//
//   TaskList(this.tasks);
//
//   final List<Task> tasks;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         return TaskTile(widget.tasks[index].isDone, tasks[index].name,
//             (checkBoxState) {setState(() {tasks[index].toggleDone();});}, () {});
//       },
//       itemCount: tasks.length,
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:todoey/widget/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(task.isDone,task.name, (checkboxState) {
                taskData.updateTask(task);
              },() {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}