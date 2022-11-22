import 'package:airbnbclone/models/services.dart';
import 'package:flutter/material.dart';

/// Item Addition Services widget
class ItemAdditionServices extends StatelessWidget {
  /// Item Addition Services widget constructor
  const ItemAdditionServices({
    super.key,
    required this.additionServices,
  });

  /// Item Addition Services
  final List<Services> additionServices;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: additionServices.length * 60,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 20),
        itemCount: additionServices.length,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(additionServices[index].image),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      additionServices[index].title,
                      style: const TextStyle(
                        fontFamily: 'ManropeRegular',
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      additionServices[index].description,
                      maxLines: 3,
                      style: const TextStyle(
                        fontFamily: 'ManropeRegular',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
