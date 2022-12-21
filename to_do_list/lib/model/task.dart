import 'package:flutter/material.dart';

class Task {
  late String nameOfTasks;
  late bool isDone;

  Task({required this.nameOfTasks, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
