import 'package:flutter/material.dart';
import 'package:ninga/core/utils/app_color.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.065,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.mainColorStart, AppColors.mainColorEnd],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontFamily: 'BentonSans Bold',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
