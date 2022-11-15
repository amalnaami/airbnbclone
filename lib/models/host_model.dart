class HostData {
  final String hostBy;
  final String placeType;
  final int guests;
  final int bedRoom;
  final int bed;
  final int sharedBath;
  final List<String> language;
  final String content;
  final String responseTime;
  final double responseRate;
  final String responsePolicy;

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

  factory HostData.fromJson(Map<String, dynamic> json) => HostData(
      hostBy: json["hostBy"],
      placeType: json["placeType"],
      guests: json["guests"],
      bedRoom: json["bedRoom"],
      bed: json["bed"],
      sharedBath: json["sharedBath"],
      language: json["language"],
      content: json["content"],
      responseTime: json["responseTime"],
      responseRate: json["responseRate"],
      responsePolicy: json["responsePolicy"],
      );
}
