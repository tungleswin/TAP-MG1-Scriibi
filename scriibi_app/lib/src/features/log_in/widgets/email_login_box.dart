import 'package:flutter/material.dart';

class EmailLoginBox extends StatelessWidget {
  const EmailLoginBox({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.06,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF1F1F1)),
      ),
      child: Row(
        children: [
          Container(
            width: screenSize.height * 0.06,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
            ),
            child: Icon(
              Icons.credit_card,
              color: Color(0xFFD9D9D9),
              size: screenSize.height * 0.02,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: 'yours@example.com',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  contentPadding: EdgeInsets.only(left: 15)),
            ),
          )
        ],
      ),
    );
  }
}
