import 'package:ninga/core/api/end_point.dart';

class SucessModel {
  final int status;
  final String sucessMessage;
  String? sucessdata;

  SucessModel({
    required this.status,
    required this.sucessMessage,
    this.sucessdata,
  });
  factory SucessModel.fromJson(Map<String, dynamic> jsonData) {
    return SucessModel(
      status: jsonData[ApiKey.sucess] ?? 'sucess',
      sucessMessage: jsonData[ApiKey.message] ?? 'sucess',
      sucessdata:
          jsonData[ApiKey.sucess] != null
              ? (List<String>.from(jsonData[ApiKey.sucess])).toString()
              : null,
    );
  }
}
