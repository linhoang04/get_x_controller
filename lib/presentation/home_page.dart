import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:task_todo/controller/home_controller.dart';
import 'package:task_todo/presentation/add_page.dart';
import 'package:task_todo/presentation/list_page.dart';
import 'package:task_todo/presentation/profile_page.dart';
import 'package:task_todo/repo/home_repo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ));
                  },
                  icon: const Icon(Icons.event)),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Task Manager',
                  style: TextStyle(fontSize: 23),
                ),
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
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Here's Update Today",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                    iconSize: 35,
                    onPressed: () {/*tìm kiến lịch*/},
                    icon: const Icon(Icons.search_outlined)),
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
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )),
              TextButton(
                  onPressed: () {/*Trang tới lịch các ngày khác*/},
                  child: const Text(
                    'Upcoming',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )),
              TextButton(
                  onPressed: () {/*trang các mục hoàn thành!*/},
                  child: const Text(
                    'Finished',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )),
              // const AddEvent()
            ],
          ),
          const ListTask(),
          Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push<Todo>(MaterialPageRoute<Todo>(
                  builder: (context) {
                    return const AddPage();
                  },
                )).then((value) => homeController.addTask(value!));
              },
              child: const Text('Add'),
            ),
          ),
        ],
      )),
    );
  }
}
