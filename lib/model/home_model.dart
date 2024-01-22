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
      color: _colorFromJson(json['color']),
      id: json['id']);
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'deadline': deadline,
        'deadlineDay': deadlineDay,
        'color': _colorToJson(color),
        'place': place,
      };
  static String _colorToJson(Color? color) {
    if (color == null) {
      return '';
    }
    return color.value.toRadixString(16).padLeft(8, '0');
  }

  static Color? _colorFromJson(String? colorString) {
    if (colorString == null || colorString.isEmpty) {
      return null;
    }
    return Color(int.parse('0x${colorString.padLeft(8, '0')}'));
  }
}
