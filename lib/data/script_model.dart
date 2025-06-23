class ScriptModel {
  final String cpm;
  final String exchange;
  final String fireSpreadValue;
  final String performance;
  final String secondSpreadValue;
  final String title;
  final bool isUp;
  ScriptModel({
    required this.cpm,
    required this.exchange,
    required this.fireSpreadValue,
    required this.isUp,
    required this.performance,
    required this.secondSpreadValue,
    required this.title,
  });

  factory ScriptModel.fromjson(Map<String, dynamic> json) {
    return ScriptModel(
      cpm: json['cpm'],
      exchange: json['exchange'],
      fireSpreadValue: json['fireSpreadValue'],
      isUp: json['isUp'],
      performance: json['performance'],
      secondSpreadValue: json['secondSpreadValue'],
      title: json['title'],
    );
  }
}
