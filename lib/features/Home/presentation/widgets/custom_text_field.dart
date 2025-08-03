import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hoverColor: Colors.black,
        contentPadding: EdgeInsets.only(top: 15, bottom: 15),
        filled: true,
        fillColor: const Color.fromARGB(255, 33, 32, 32),
        hintText: 'What do you want to order?',
        hintStyle: TextStyle(
          color: Color(0XFFAFAFAF),
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Icon(Icons.search, color: Color(0XFFFFFFFF), size: 32),
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
