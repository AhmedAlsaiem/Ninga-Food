import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ninga/app.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox('');
  runApp(Ninga());
}
