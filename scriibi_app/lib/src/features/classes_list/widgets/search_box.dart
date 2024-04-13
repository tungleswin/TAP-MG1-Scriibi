import 'package:flutter/material.dart';
import 'package:scriibi_app/constants/colors_app.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  // Variables
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        margin: EdgeInsets.only(bottom: 30, top: 30),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colours.appGreen),
        ),
        child: TextField(
          decoration: const InputDecoration(
            isDense: true,
            hintText: "search by assessment title",
            hintStyle: TextStyle(
              color: Colours.appLighterGreen,
              fontStyle: FontStyle.italic,
            ),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colours.appGreen),
          ),
          onChanged: (text) {
            setState(() {
              _searchText = text.toLowerCase();
            });
          },
        ),
      ),
    );
  }
}
