/// Host Data class
class HostData {
  /// constructor
  HostData({
    required this.hostBy,
    required this.placeType,
    required this.guests,
    required this.bedRoom,
    required this.bed,
    required this.sharedBath,
    required this.language,
    required this.content,
    required this.responseTime,
    required this.responseRate,
    required this.responsePolicy,
  });

  /// convert from json into Data Map<>
  factory HostData.fromJson(Map<String, dynamic> json) => HostData(
        hostBy: json['hostBy'] as String,
        placeType: json['placeType'] as String,
        guests: json['guests'] as int,
        bedRoom: json['bedRoom'] as int,
        bed: json['bed'] as int,
        sharedBath: json['sharedBath'] as int,
        language: json['language'] as List<String>,
        content: json['content'] as String,
        responseTime: json['responseTime'] as String,
        responseRate: json['responseRate'] as double,
        responsePolicy: json['responsePolicy'] as String,
      );

  /// host name
  final String hostBy;

  /// host type
  final String placeType;

  /// host guests number
  final int guests;

  /// host bedrooms number
  final int bedRoom;

  /// host beds number
  final int bed;

  /// host shared baths bumber
  final int sharedBath;

  /// host languages
  final List<String> language;

  /// host content
  final String content;

  /// host response time
  final String responseTime;

  /// host response rate
  final double responseRate;

  /// host response policy
  final String responsePolicy;
}
