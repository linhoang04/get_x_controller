import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:task_todo/controller/home_controller.dart';
import 'package:task_todo/presentation/add_page.dart';

class ListTask extends StatelessWidget {
  const ListTask({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    // SharedPreferencesBox sharedPreferencesBox = Get.put(SharedPreferencesBox());
    return Expanded(
      child: GetX<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return ListView.builder(
            itemCount: homeController.taskList.length,
            itemBuilder: (context, index) {
              final hisTask = controller.taskList[index];
              return ListTile(
                title: Container(
                  width: MediaQuery.of(context).size.width * 0.99,
                  height: 150,
                  decoration: BoxDecoration(
                      color: hisTask.color,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // sharedPreferencesBox
                                  //     .savePlaceToPreferences('${hisTask.place}');
                                },
                                style: TextButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.black, width: 0.5)),
                                child: Text(
                                  '${hisTask.place}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          side: const BorderSide(
                                        color: Colors.black,
                                        width: 0.5,
                                      )),
                                      onPressed: () {/*ko có*/},
                                      child: const Text(
                                        'Everyday',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(
                                          MaterialPageRoute(
                                            builder: (context) => AddPage(
                                              task: hisTask,
                                            ),
                                          ),
                                        )
                                        .then((value) =>
                                            homeController.upDateTask(value));
                                  },
                                  icon: const Icon(Icons.edit))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              hisTask.title,
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              const WidgetSpan(
                                  child: Padding(
                                padding: EdgeInsets.only(right: 2, top: 10),
                                child: Icon(
                                  Icons.calendar_today,
                                  size: 15,
                                ),
                              )),
                              TextSpan(
                                  text: hisTask.deadline,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  )),
                            ])),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: RichText(
                                    text: TextSpan(children: [
                                  const WidgetSpan(
                                      child: Padding(
                                    padding: EdgeInsets.only(right: 2),
                                    child: Icon(
                                      Icons.schedule,
                                      size: 15,
                                    ),
                                  )),
                                  TextSpan(
                                      text: '${hisTask.deadlineDay}',
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.black)),
                                ])),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: GestureDetector(
                                onTap: () {
                                  homeController.removeTask(hisTask.id);
                                },
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 0.5,
                                      )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            //
          );
        },
      ),
    );
  }
}
