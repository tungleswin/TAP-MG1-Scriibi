import 'package:flutter/material.dart';
import 'package:scriibi_app/src/features/classes_list/widgets/class_app_bar.dart';
import 'package:scriibi_app/src/features/classes_list/widgets/class_labels_widget.dart';

class ClassListScreen extends StatefulWidget {
  const ClassListScreen({super.key});

  @override
  State<ClassListScreen> createState() => _ClassListScreenState();
}

class _ClassListScreenState extends State<ClassListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClassAppBar(),
      body: Column(
        children: [
          ClassLabels(),
        ],
      ),
    );
  }
}
