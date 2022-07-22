// import 'package:flutter/material.dart';
// import 'package:todoey/models/task.dart';
// import 'package:todoey/screens/add_task_screen.dart';
//
// class TasksScreen extends StatefulWidget {
//
//   @override
//   State<TasksScreen> createState() => _TasksScreenState();
// }
//
// class _TasksScreenState extends State<TasksScreen> {
//
//   List<Task> tasks = [
//     Task(name: 'Buy M'),
//     Task(name: 'Buy E'),
//     Task(name: 'Buy B'),
//   ];
//
//   // Widget buildBottomSheet(BuildContext context) => Container(); To make it more shorter
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.teal,
//         onPressed: () {
//           showModalBottomSheet(context: context,
//               isScrollControlled: true, /// Much Better
//               builder: (context) =>
//               // SingleChildScrollView(
//                   // child:Container(
//                   //   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//                   //   child: AddTaskScreen(),
//                   // )
//               // )
//               AddTaskScreen()
//           ); // Even Shorter
//         },
//         child: Icon(Icons.add),
//       ),
//       body: Column(
//         // SafeArea(), it can also be use but can't be modified
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 CircleAvatar(
//                   child: Icon(
//                     Icons.list,
//                     size: 45,
//                     color: Colors.teal,
//                   ),
//                   backgroundColor: Colors.white,
//                   radius: 30,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Todoey',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 50.0,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 Text(
//                   '12 Tasks left',
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.only(left: 28, right: 28),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40),
//                   topRight: Radius.circular(40),
//                 ),
//               ),
//               // child: ListView(
//               //     children: <Widget>[ /// Important
//               //   Padding(
//               //     padding: const EdgeInsets.only(left:30.0, right: 30.0),
//               //     child: Row(
//               //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //       children: [
//               //         Text('Buy Milk', style: TextStyle(fontSize: 20),),
//               //         Icon(Icons.square_outlined),
//               //       ],
//               //     ),
//               //   ),
//               //   Padding(
//               //     padding: const EdgeInsets.only(left:30.0, right: 30.0),
//               //     child: Row(
//               //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //       children: [
//               //         Text('Buy Eggs', style: TextStyle(fontSize: 20),),
//               //         Icon(Icons.square_outlined),
//               //       ],
//               //     ),
//               //   ),
//               //   Padding(
//               //     padding: const EdgeInsets.only(left:30.0, right: 30.0),
//               //     child: Row(
//               //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //       children: [
//               //         Text('B̶u̶y̶ ̶B̶r̶e̶a̶d̶', style: TextStyle(fontSize: 20),),
//               //         Icon(Icons.square_outlined),
//               //       ],
//               //     ),
//               //   ),
//               // ]
//               // ),
//               child: TaskList(),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:todoey/widget/tasks_list.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                    child:Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    )
                )
            );
          }
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 45.0,
                    color: Colors.teal,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  ' ${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
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
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}