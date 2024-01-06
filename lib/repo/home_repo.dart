import 'dart:core';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
class Todo {
  String id;
  // DateTime dateCreated;
  // DateTime? dateCompleated;
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
    // DateTime? dateCreated,
    // DateTime? dateCompleated,
    String? id,
  }): id = id ?? Uuid().v4();
  // String get createDateString => '${dateCreated.day}/${dateCreated.month}/${dateCreated.year}';
  String toString() {
    return 'id: $id, title: $title';
  }
}