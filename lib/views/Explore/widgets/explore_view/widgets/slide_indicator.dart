import 'package:flutter/material.dart';

/// Slide Indicator widget
class SlideIndicator extends StatelessWidget {
  /// Slide Indicator widget constructor
  const SlideIndicator({
    super.key,
    required this.imageLength,
    required this.pageIndex,
  });

  /// Images count
  final int imageLength;

  /// image index
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      width: imageLength * 15,
      // width: widget.exploreModel.images.length * 15,
      height: 40,
      alignment: Alignment.center,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 8);
        },
        scrollDirection: Axis.horizontal,
        itemCount: imageLength,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.zero,
            child: CircleAvatar(
              radius: pageIndex == index ? 5 : 3,
              backgroundColor: pageIndex == index
                  ? const Color(0xFFFFFFFF)
                  : const Color(0xFFFFFFFF).withOpacity(0.5),
            ),
          );
        },
      ),
    );
  }
}
