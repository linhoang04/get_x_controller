import 'dart:core';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Todo {
  String id;
  String? deadline;
  String? deadlineDay;
  String? place;
  String title;
  Color? color;
  Todo({
    required this.title,
    required this.deadline,
    required this.deadlineDay,
    required this.place,
    required this.color,
    String? id,
  }) : id = id ?? const Uuid().v4();
  @override
  String toString() {
    return 'id: $id, title: $title';
  }
}
