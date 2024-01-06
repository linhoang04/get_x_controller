import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AddController extends GetxController {
  bool isValue = false.obs();
  late String dead;
  late String title;
  late String deadDay;
  late String place;
  late Color color;
  void onTitalChange(String value) {
    title = value;
  }

  void onDeadlineChange(String deadline) {
    dead = deadline;
  }

  void onDeadlineDayChange(String deadlineDay) {
    deadDay = deadlineDay;
  }

  void onPlaceChange(String plce) {
    place = plce;
  }

  void onColorChange(Color clo) {
    color = clo;
  }
}
