import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:task_todo/controller/add_controller.dart';

class ColorNew extends StatelessWidget {
  final color;
  const ColorNew({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    AddController addController = Get.put(AddController());
    return InkWell(
      onTap: () {
        addController.onColorChange(this.color);
      },
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
