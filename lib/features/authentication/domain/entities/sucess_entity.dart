import 'package:equatable/equatable.dart';

class SucessEntity extends Equatable {
  final String message;
  final int statusCode;

  const SucessEntity({required this.message, required this.statusCode});

  @override
  List<Object?> get props => [message, statusCode];
}
