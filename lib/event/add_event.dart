import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/add_controller.dart';

class AddEvent extends StatelessWidget {
  // final model;
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    AddController addController = Get.find<AddController>();
    return Obx(() {
      return ListView.builder(
        itemCount: addController.task.length,
        itemBuilder: (context, index) {
          late final taskNew = addController.task[index];
          return ListTile(
            title: Container(
              width: MediaQuery.of(context).size.width * 0.99,
              height: 120,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 35, 197, 202),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromARGB(255, 35, 197, 202),
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
                            onPressed: () {/*ko có*/},
                            style: TextButton.styleFrom(
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 152, 152, 155),
                                    width: 0.5)),
                            child: const Text(
                              'School',
                              style: TextStyle(
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
                                    color: Color.fromARGB(255, 152, 152, 155),
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
                              onPressed: () {/*vào Edit Task */},
                              icon: const Icon(Icons.edit))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          taskNew.title,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
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
                            padding: EdgeInsets.only(right: 2),
                            child: Icon(
                              Icons.calendar_today,
                              size: 15,
                            ),
                          )),
                          TextSpan(
                              text: taskNew.createdDateString,
                              style: const TextStyle(fontSize: 10)),
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
                                  text: '${DateTime.now()}',
                                  style: const TextStyle(fontSize: 10)),
                            ])),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: GestureDetector(
                            onTap: () {},
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
                    )
                  ],
                ),
              ),
            ),
          );
        },
        //
      );
    });
  }
}
