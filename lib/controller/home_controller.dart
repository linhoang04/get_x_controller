import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:task_todo/repo/home_repo.dart';

class HomeController extends GetxController {
  final RxList<Todo> taskList = <Todo>[
    Todo(
        title: 'linhdeptrai',
        deadline: '11h12',
        deadlineDay: '11/01/2004',
        place: 'nha',
        color: Colors.red),
  ].obs;
  void addTask(Todo newTask) {
    taskList.add(newTask);
  }

  void removeTask(String id) {
    taskList.removeWhere((element) => element.id == id);
  }

  void upDateTask(Todo newTask) {
    final index = taskList.indexWhere((element) => element.id == newTask.id);
    taskList[index] = newTask;
  }
}
