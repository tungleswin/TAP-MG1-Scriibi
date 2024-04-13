import 'package:flutter/material.dart';

class Class {
  // constructors
  const Class({
    required this.term,
    required this.className,
    required this.date,
  });

  // getter
  String get title => '$className $term';

  // variables
  final String term;
  final String className;
  final DateTime date;

  // Samples for displaying purposes
}
