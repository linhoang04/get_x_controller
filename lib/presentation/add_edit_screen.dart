import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/add_controller.dart';
import 'package:todo_app/model/task_model.dart';

class AddPage extends StatelessWidget {
  final TaskModel? task;
  const AddPage({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    AddController addController = Get.put(AddController());
    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Edit Task')),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Task Name', style: TextStyle(fontSize: 10))),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    // controller: addController.textNameController,
                    decoration: const InputDecoration(
                        // labelText: 'Task Name',
                        // border: OutlineInputBorder(),
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Color', style: TextStyle(fontSize: 10))),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Color(
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Color(
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Color(
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Color(
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Color(
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Date Time', style: TextStyle(fontSize: 10))),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          initialValue: addController.title,
                          onChanged: addController.onTitleChanged,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                            hintText: 'Hint',
                          ),
                        ),
                      ),
                      const Icon(Icons.calendar_today)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Save Task'))
                ],
              ),
            ),
          ));
    });
  }

  void onAddTask() {
    AddController addController = AddController();
    if (task != null) {
      final newTask = task;
      newTask?.title = addController.title;
      Navigator.of(context as BuildContext).pop(newTask);
      return;
    }
    final newTask = TaskModel(title: addController.title);
    Navigator.of(context as BuildContext).pop(newTask);
  }
}

class Color extends StatelessWidget {
  final color;
  const Color({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: (){},
      child: Container(
        width: 20,
        height: 20,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
