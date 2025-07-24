// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppStateModelsAdapter extends TypeAdapter<AppStateModels> {
  @override
  final int typeId = 0;

  @override
  AppStateModels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppStateModels(
      token: fields[0] as String?,
      profileImagePath: fields[1] as String?,
      themeMode: fields[3] as String?,
      language: fields[4] as String?,
      isLoggedIn: fields[5] as bool?,
      onboardingCompleted: fields[6] as bool?,
      isConnected: fields[7] as bool?,
      notificationsCount: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AppStateModels obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.profileImagePath)
      ..writeByte(2)
      ..write(obj.notificationsCount)
      ..writeByte(3)
      ..write(obj.themeMode)
      ..writeByte(4)
      ..write(obj.language)
      ..writeByte(5)
      ..write(obj.isLoggedIn)
      ..writeByte(6)
      ..write(obj.onboardingCompleted)
      ..writeByte(7)
      ..write(obj.isConnected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppStateModelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
