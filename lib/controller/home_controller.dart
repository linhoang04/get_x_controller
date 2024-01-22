import 'dart:convert';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_todo/model/home_model.dart';

class HomeController extends GetxController {
  late final SharedPreferences sharedPreferences;
  @override
  void onInit() {
    super.onInit();
    SharedPreferences.getInstance().then((value) {
      sharedPreferences = value;
      _getLocalData();
    });
  }

  void _getLocalData() {
    final stringData = sharedPreferences.getString('data');
    final json = jsonDecode(stringData!) as List<dynamic>;
    final List<Todo> list = json
        .map((element) => Todo.fromJson(element as Map<String, dynamic>))
        .toList();
    taskList.assignAll(list);
  }

  void saveLocalData() {
    final json = taskList.map((element) => element.toJson()).toList();
    final String stringData = jsonEncode(json);
    sharedPreferences.setString('data', stringData);
  }

  RxInt count = 0.obs;
  final RxList<Todo> taskList = <Todo>[].obs;
  void addTask(Todo newTask) {
    taskList.add(newTask);
    count++;
    saveLocalData();
  }

  void removeTask(String id) {
    taskList.removeWhere((element) => element.id == id);
    saveLocalData();
  }

  void upDateTask(Todo newTask) {
    final index = taskList.indexWhere((element) => element.id == newTask.id);
    taskList[index] = newTask;
    // saveLocalData();
  }
}
