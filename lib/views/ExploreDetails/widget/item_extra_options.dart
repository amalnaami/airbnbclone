import 'package:flutter/material.dart';

/// Item Extra Options widget
class ItemExtraOptions extends StatelessWidget {
  /// Item Extra Options widget constructor
  const ItemExtraOptions({
    super.key,
    required this.title,
    required this.extraDetails,
  });

  /// Extra option title
  final String title;

  /// Extra option details
  final String extraDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'ManropeRegular',
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
                  extraDetails,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'ManropeRegular',
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
