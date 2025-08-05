import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.623,
          child: Text(
            'Find Your Favorite Food',
            maxLines: 2,
            style: TextStyle(
              fontFamily: 'BentonSans Bold',
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
        ),
        IconButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
          iconSize: 29,
          padding: const EdgeInsets.all(10),
          onPressed: () {},
          icon: badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Color(0XFFFF5F5F),
              padding: EdgeInsets.all(4),
            ),
            position: badges.BadgePosition.topEnd(top: 0.5, end: 3),
            child: const Icon(
              IconlyLight.notification,
              color: Color(0XFF53E88B),
            ),
          ),
        ),
      ],
    );
  }
}
