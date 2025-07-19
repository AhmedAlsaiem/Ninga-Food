// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppStateModelAdapter extends TypeAdapter<AppStateModel> {
  @override
  final int typeId = 0;

  @override
  AppStateModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppStateModel(
      token: fields[0] as String,
      profileImagePath: fields[1] as String,
      email: fields[2] as String,
      themeMode: fields[3] as String,
      language: fields[4] as String,
      isLoggedIn: fields[5] as bool,
      onboardingCompleted: fields[6] as bool,
      isConnected: fields[7] as bool,
      notificationsCount: fields[8] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AppStateModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.profileImagePath)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.themeMode)
      ..writeByte(4)
      ..write(obj.language)
      ..writeByte(5)
      ..write(obj.isLoggedIn)
      ..writeByte(6)
      ..write(obj.onboardingCompleted)
      ..writeByte(7)
      ..write(obj.isConnected)
      ..writeByte(8)
      ..write(obj.notificationsCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppStateModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
