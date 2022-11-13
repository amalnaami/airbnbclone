class Services {
  final String title;
  final String image;
  final String description;

  Services({
    required this.title,
    required this.image,
    required this.description,
  });

  factory Services.fromJson(Map<String, dynamic> json) => Services(
        title: json["tilte"],
        image: json["image"],
        description: json["description"],
      );
}
