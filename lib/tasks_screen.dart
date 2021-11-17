import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handson/tasks_cubit.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO Provide the TasksCubit using a BlocBuilder
    // TODO Show tasks in a ListView
    // TODO Add TextFormField to allow new task entry
    return BlocBuilder<TasksCubit, List<String>>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: state.map((item) {
                  return Text(item);
                }).toList(),
              ),
            ),
            TextFormField(
              onFieldSubmitted: (newTask) {
                context.read<TasksCubit>().add(newTask);
              },
            ),
          ],
        );
      },
    );
  }
}
