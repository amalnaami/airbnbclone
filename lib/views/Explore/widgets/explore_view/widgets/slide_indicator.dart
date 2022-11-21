import 'package:flutter/material.dart';

class SlideIndicator extends StatelessWidget {
  final int imageLength, pageIndex;

  const SlideIndicator({
    Key? key,
    required this.imageLength,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10.0),
      width: imageLength * 15,
      // width: widget.exploreModel.images.length * 15,
      height: 40,
      alignment: Alignment.center,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: imageLength,
        // itemCount: widget.exploreModel.images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
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
