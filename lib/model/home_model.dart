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

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
      title: json['title'],
      deadline: json['deadline'],
      deadlineDay: json['deadlineDay'],
      place: json['place'],
      color: json['color'],
      id: json['id']);
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'deadline': deadline,
        'deadlineDay': deadlineDay,
        'color': color,
        'place': place,
      };
}
