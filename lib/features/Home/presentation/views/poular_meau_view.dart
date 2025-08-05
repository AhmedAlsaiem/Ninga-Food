import 'package:flutter/material.dart';
import 'package:ninga/features/Home/presentation/widgets/popular_menu_view_body.dart';

class PopularMenuView extends StatelessWidget {
  const PopularMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopularMenuViewBody(),
    );
  }
}

