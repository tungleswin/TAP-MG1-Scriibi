import 'package:flutter/material.dart';
import 'package:scriibi_app/constants/test_student.dart';
import 'package:scriibi_app/constants/colors_app.dart';
import 'package:scriibi_app/src/features/students_list/widgets/student_app_bar.dart';
import 'package:scriibi_app/src/features/students_list/widgets/student_card_widget.dart';
import 'package:scriibi_app/src/features/students_list/widgets/student_labels_widget.dart';
import 'package:scriibi_app/src/features/students_list/widgets/student_search_box.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  @override
  Widget build(BuildContext context) {
    // get the screen size
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        // TODO: Add app bar here
        appBar: StudentAppBar(),
        body: Center(
          child: Container(
            height: screenSize.height,
            width: screenSize.width,
            color: Colours.appGrey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // TODO: ADD student search box here
                  StudentSearchBox(),
                  // TODO: Add student label here
                  StudentLabels(),
                  // TODO: Add all student cards here
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: sampleStudents.length,
                    itemBuilder: (context, index) {
                      final studentData = sampleStudents[index];
                      return StudentCard(
                          studentData:
                              studentData); // Using the ClassCard widget
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
    ;
  }
}
