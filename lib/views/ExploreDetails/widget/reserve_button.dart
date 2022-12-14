import 'package:airbnbclone/core/contstant/text_styles.dart';
import 'package:flutter/material.dart';

/// Reserve Button widget
class ReserveButton extends StatefulWidget {
  /// Reserve Button widget constructor
  ReserveButton({
    super.key,
    required this.price,
    required this.availableTime,
    required this.isSelected1,
    required this.isSelected2,
  });

  /// Price option
  final String price;

  /// Option time
  final String availableTime;

  /// select option 1
  bool isSelected1;

  /// select option 2
  bool isSelected2;

  @override
  State<ReserveButton> createState() => _ReserveButtonState();
}

class _ReserveButtonState extends State<ReserveButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          border: Border(
            top: BorderSide(color: Colors.black12),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: widget.price,
                        style: const TextStyle(
                          fontFamily: 'ManropeBold',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                          fontSize: 15,
                        ),
                      ),
                      const TextSpan(
                        text: '  night',
                        style: TextStyle(
                          fontFamily: 'ManropeBold',
                          color: Colors.black87,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    widget.availableTime,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'ManropeBold',
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: _modalBottomSheetMenu,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink[400],
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: const Text(
                  'Reserve',
                  style: TextStyle(
                    fontFamily: 'ManropeBold',
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      context: context,
      builder: (builder) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setStater) {
            return Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                            color: Color(0xFF000000),
                            size: 18,
                          ),
                        ),
                        Text(
                          'Choose a cancellation policy',
                          style: smallTitle.copyWith(fontSize: 15),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setStater(() {
                        widget
                          ..isSelected1 = !widget.isSelected1
                          ..isSelected2 = false;
                      });
                    },
                    child: cancellationOptions(
                      'Non-refundable',
                      r'$ 333 /  night - $ 2,003 total',
                      widget.isSelected1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setStater(() {
                        widget
                          ..isSelected2 = !widget.isSelected2
                          ..isSelected1 = false;
                      });
                    },
                    child: cancellationOptions(
                      'Refundable',
                      r'$ 370 /  night - $ 2,254 total',
                      widget.isSelected2,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink[400],
                    ),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: 'ManropeBold',
                        color: Color(0xFFFFFFFF),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget cancellationOptions(String title, String desc, bool isSelect) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: mediumDesc),
              const SizedBox(height: 5),
              Text(desc, style: smallDesc),
            ],
          ),
          if (isSelect)
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                border: Border.all(width: 6),
                shape: BoxShape.circle,
              ),
            )
          else
            const Icon(Icons.circle_outlined, color: Color(0x61000000)),
        ],
      ),
    );
  }
}
