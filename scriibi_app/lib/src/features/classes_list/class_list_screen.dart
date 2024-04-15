import 'package:flutter/material.dart';
import 'package:scriibi_app/constants/colors_app.dart';
import 'package:scriibi_app/src/features/classes_list/widgets/class_app_bar.dart';
import 'package:scriibi_app/src/features/classes_list/widgets/class_labels_widget.dart';
import 'package:scriibi_app/constants/test_class.dart';
import 'package:scriibi_app/src/features/classes_list/widgets/class_widget.dart';
import 'package:scriibi_app/src/features/classes_list/widgets/class_search_box.dart';

class ClassListScreen extends StatefulWidget {
  const ClassListScreen({super.key});

  @override
  State<ClassListScreen> createState() => _ClassListScreenState();
}

class _ClassListScreenState extends State<ClassListScreen> {
  @override
  Widget build(BuildContext context) {
    // get the current screen size
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        // TODO: Add app bar here
        appBar: ClassAppBar(),
        body: Center(
          child: Container(
            height: screenSize.height,
            width: screenSize.width,
            color: Colours.appGrey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // TODO: ADD search box here
                  SearchBox(),
                  // TODO: Add class label here
                  ClassLabels(),
                  // TODO: Add all class cards here
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: sampleClasses.length,
                    itemBuilder: (context, index) {
                      final classData = sampleClasses[index];
                      return ClassCard(
                          classData: classData); // Using the ClassCard widget
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
