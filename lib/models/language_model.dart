/// Language class model
class Language {
  /// constructor
  Language({
    required this.id,
    required this.name,
    required this.flag,
  });

  /// convert from JSON to Data Map<>
  factory Language.fromJson(Map<String, dynamic> json) => Language(
        id: json['name'] as int,
        name: json['image'] as String,
        flag: json['flag'] as String,
      );

  /// Language ID
  final int id;

  /// Language name
  final String name;

  /// Language flag
  final String flag;
}
