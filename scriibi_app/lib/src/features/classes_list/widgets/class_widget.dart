import 'package:flutter/material.dart';
import 'package:scriibi_app/src/features/students_list/student_list_screen.dart';
import 'package:scriibi_app/src/models/class.dart';
import 'package:scriibi_app/src/utils/date_formatter.dart';

class ClassCard extends StatelessWidget {
  // constructors
  const ClassCard({super.key, required this.classData});

  // variables
  final Class classData;

  // methods
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StudentListScreen()),
        );
      },
      child: Card(
        elevation: 4,
        color: Colors.white,
        margin: const EdgeInsets.all(5.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Text(classData.title),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.center,
                    child: Text(classData.className)),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      customDateFormatter.format(classData.date),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
