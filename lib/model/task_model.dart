import 'package:uuid/uuid.dart';

class TaskModel {
  String title;
  DateTime dateCreated;
  // DateTime dateCompleted;
  final String id;
  TaskModel({
    required this.title,
    DateTime? dateCreated,
    // required this.dateCompleted,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        dateCreated = dateCreated ?? DateTime.now();
  String get createdDateString =>
      '${dateCreated.day}/${dateCreated.month}/${dateCreated.year}';
}
