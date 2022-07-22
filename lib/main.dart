// import 'package:flutter/material.dart';
// import 'package:todoey/screens/tasks_screen.dart';

/// MaterialApp >> home: TasksScreen() >> Scaffold()
/// Well let's take a look inside Flutter inspector and let's show debug paint to see where everything is.
/// child: ListView( children: <Widget>[ /// Important and Scrollable
/// ListTile Adds a title and trailing lind of dictionary
/// BottomSheet >>So bottom sheets slide up from the bottom to reveal more content.
/// showModalBottomSheet(context: context, builder: requiresFunction)
/// State And State Management
    /// So what exactly is state?
    // Well you can think of it as the values of all the variables that together make up the user interface.
  /// Checks my checkBox

/// Hard... Do it again, it would be better
/// It's all about callBack
/// 14-07-2022

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // theme: ThemeData.dark(),
//       home: TasksScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}