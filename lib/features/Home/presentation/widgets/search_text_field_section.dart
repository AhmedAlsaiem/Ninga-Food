import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ninga/features/Home/presentation/widgets/custom_text_field.dart';

class SearchTextFieldSection extends StatelessWidget {
  const SearchTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.79,
          child: CustomTextField(),
        ),
        IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              Theme.of(context).inputDecorationTheme.fillColor,
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          iconSize: 29,
          padding: const EdgeInsets.all(15),
          onPressed: () {},
          icon: Icon(
            IconlyBold.filter,
            color: Theme.of(context).inputDecorationTheme.prefixIconColor,
          ),
        ),
      ],
    );
  }
}
