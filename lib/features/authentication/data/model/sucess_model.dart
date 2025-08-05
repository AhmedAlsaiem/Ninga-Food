import 'package:ninga/core/api/end_point.dart';
import 'package:ninga/features/authentication/domain/entities/sucess_entity.dart';

class SucessModel extends SucessEntity {
  const SucessModel({required super.message, required super.status});
  factory SucessModel.fromJson({required Map<String, dynamic> jsonData}) {
    return SucessModel(
      message: jsonData[ApiKey.message],
      status: ApiKey.status,
    );
  }
}
