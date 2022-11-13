class Reviews {
  final String name;
  final String time;
  final String image;
  final String description;

  Reviews({
    required this.name,
    required this.time,
    required this.image,
    required this.description,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
        name: json["name"],
        time: json["time"],
        image: json["image"],
        description: json["description"],
      );
}
