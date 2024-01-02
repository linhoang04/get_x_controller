import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/add_controller.dart';
import 'package:todo_app/event/add_event.dart';
import 'package:todo_app/model/task_model.dart';
// import 'package:todo_app/controller/add_controller.dart';
import 'package:todo_app/presentation/add_edit_screen.dart';

class ManagerPage extends StatelessWidget {
  const ManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    AddController addController = AddController();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {/*vào profile*/},
                  icon: const Icon(Icons.event)),
              const Align(
                alignment: Alignment.center,
                child: Text('Task Manager'),
              ),
              IconButton(
                  onPressed: () {/*Chuông thông báo*/},
                  icon: const Icon(Icons.notifications)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Here's Update Today",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {/*tìm kiến lịch*/},
                    icon: const Icon(Icons.search_outlined))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {/*trang này!*/},
                  child: const Text(
                    'Today',
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {/*Trang tới lịch các ngày khác*/},
                  child: const Text(
                    'Upcoming',
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {/*trang các mục hoàn thành!*/},
                  child: const Text(
                    'Finished',
                    style: TextStyle(color: Colors.black),
                  )),
              // const AddEvent()
            ],
          ),
          Obx(() {
            return addController.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : addController.task.isEmpty
                    ? const Center(child: Text('No Task To Show'))
                    : const AddEvent().obs();
          }),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push<TaskModel>(
                    MaterialPageRoute<TaskModel>(
                      builder: (context) => const AddPage(),
                    ),
                  )
                      .then(
                    (value) {
                      if (value != null) {
                        addController.addTask(value);
                      }
                    },
                  );
                },
                child: const Text('Add'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
