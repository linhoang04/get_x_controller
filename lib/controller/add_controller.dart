import 'package:get/get.dart';
import 'package:todo_app/model/task_model.dart';

class AddController extends GetxController {
  late List<TaskModel> task = [];
  bool isLoading = true.obs();
  late String title;
  void onTitleChanged(String value) {
    title = value;
  }
  void addTask(TaskModel model) {
    task.add(model);
  }

  void _updateTask(TaskModel newTask) {
    final index = task.indexWhere((element) => element.id == newTask.id);
    task[index] = newTask;
  }
}
