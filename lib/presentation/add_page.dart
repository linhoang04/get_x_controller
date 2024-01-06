import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:task_todo/controller/add_controller.dart';
import 'package:task_todo/presentation/sum_repo.dart';
import 'package:task_todo/repo/home_repo.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    AddController addController = Get.put(AddController());
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Task'),
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
                  onChanged: (value) {
                    if (value != null || value.isNotEmpty) {
                      addController.onTitalChange(value);
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'put your title';
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Task Name',
                    // border: OutlineInputBorder(),
                    hintText: 'title',
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
                    ColorNew(
                      color: Color.fromARGB(255, 117, 160, 195),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ColorNew(
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ColorNew(
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ColorNew(
                      color: Color.fromARGB(255, 40, 228, 134),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ColorNew(
                      color: Color.fromARGB(255, 234, 230, 233),
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
                        onChanged: (value) {
                          if (value != null || value.isNotEmpty) {
                            addController.onDeadlineChange(value);
                          }
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'put your time';
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          hintText: 'Time',
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        onChanged: (value) {
                          if (value != null || value.isNotEmpty) {
                            addController.onDeadlineDayChange(value);
                          }
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'put your day';
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          hintText: 'Day',
                        ),
                      ),
                    ),
                    const Icon(Icons.calendar_today)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Place', style: TextStyle(fontSize: 10))),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onChanged: (value) {
                          if (value != null || value.isNotEmpty) {
                            addController.onPlaceChange(value);
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'put your place';
                          }
                        },
                        decoration: const InputDecoration(
                          labelText: 'Study Place',
                          // border: OutlineInputBorder(),
                          hintText: 'Place',
                        ),
                      ),
                    ),
                    Icon(Icons.location_city),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: onAddTask, child: const Text('Save Task'))
              ],
            ),
          ),
        ));
  }

  void onAddTask() {
    AddController addController = Get.find<AddController>();
    final newTask = Todo(
        title: addController.title,
        deadline: addController.dead,
        deadlineDay: addController.deadDay,
        place: addController.place,
        color: addController.color);
    Navigator.of(context).pop(newTask);
  }
}
