// TODO Extend from Cubit<List<String>> and have add/remove emit new states
// Tip: provide an initial test list in the required super() call to see if your screen is working
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksCubit extends Cubit<List<String>> {
  TasksCubit() : super(['Init']);

  void add(String task) async {
    // TODO Emit a new state based on the current `state`
    // Tip: make sure to create a new list object, not just mutate the existing list
    var newState = state;
    newState.add(task);
    emit(newState);
  }

  void remove(String task) {
    // TODO Emit a new state with the given task removed from the current `state`
    var newState = state;
    newState.remove(task);
    emit(newState);
  }
}
