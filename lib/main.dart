import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handson/tasks_cubit.dart';
import 'package:handson/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO Use a BlocProvider to provide the TasksCubit to all descendants

    return MaterialApp(
      title: 'IT Licious Flutter Hands-on',
      theme: ThemeData(),
      home: BlocProvider(
        create: (_) => TasksCubit(),
        child: TasksScreen,
      ),
    );
  }
}
