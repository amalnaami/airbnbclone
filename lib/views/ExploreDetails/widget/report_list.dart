import 'package:flutter/material.dart';

/// Report List widget
class ReportList extends StatelessWidget {
  /// Report List widget constructor
  const ReportList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 60),
      child: Row(
        children: const [
          Icon(Icons.flag, size: 20),
          SizedBox(width: 10),
          Text(
            'Report this listing',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontFamily: 'ManropeRegular',
              overflow: TextOverflow.ellipsis,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
