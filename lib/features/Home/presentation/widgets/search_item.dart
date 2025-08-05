import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.item});
  final String item;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 22),
      decoration: BoxDecoration(
        color: Theme.of(context).inputDecorationTheme.fillColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        item,
        style: TextStyle(
          color: Theme.of(context).inputDecorationTheme.prefixIconColor,
          fontFamily: 'BentonSans Bold',
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
    );
  }
}
