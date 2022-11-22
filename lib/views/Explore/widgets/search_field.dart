import 'package:airbnbclone/views/Explore/widgets/label_text.dart';
import 'package:flutter/material.dart';

/// Search Field widget
class SearchField extends StatefulWidget {
  /// Search Field widget constructor
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: decoration,
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          label: const LabelText(),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(bottom: 12),
          prefixIcon: const Icon(
            Icons.search_sharp,
            size: 18,
            color: Color(0xFF000000),
          ),
          suffixIcon: Container(
            decoration: decoration,
            width: 30,
            height: 30,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: const Icon(
              Icons.filter_center_focus_sharp,
              size: 15,
              color: Color(0xFF000000),
            ),
          ),
        ),
      ),
    );
  }

  final Decoration decoration = BoxDecoration(
    color: const Color(0xFFFFFFFF),
    borderRadius: BorderRadius.circular(40),
    boxShadow: const [
      BoxShadow(color: Color(0xFFE0E0E0), blurRadius: 10, spreadRadius: 2),
    ],
  );
}
