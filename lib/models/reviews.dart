/// Review model class
class Reviews {
  /// constructor
  Reviews({
    required this.name,
    required this.time,
    required this.image,
    required this.description,
  });

  /// convert from JSON to Data Map<>
  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
        name: json['name'] as String,
        time: json['time'] as String,
        image: json['image'] as String,
        description: json['description'] as String,
      );

  /// Review name
  final String name;

  /// Review time
  final String time;

  /// Review image
  final String image;

  /// Review description
  final String description;
}
