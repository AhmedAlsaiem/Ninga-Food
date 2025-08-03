import 'package:equatable/equatable.dart';

class SucessEntity extends Equatable {
  final String message;
  final String status;

  const SucessEntity({required this.message, required this.status});

  @override
  List<Object?> get props => [message, status];
}
