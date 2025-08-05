import 'package:flutter/material.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        AppNavigation.pushName(
          rootNavigator: true,
          context: context,
          route: AppRoutes.searchView,
        );
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 15, bottom: 15),
        filled: true,
        hintText: 'What do you want to order?',

        prefixIcon: Icon(Icons.search, size: 32),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
