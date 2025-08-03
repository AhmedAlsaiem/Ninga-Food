import 'package:flutter/material.dart';

class NearestResturantItem extends StatelessWidget {
  const NearestResturantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(left: 10),
      width: MediaQuery.sizeOf(context).width * 0.4,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: const Color.fromARGB(31, 255, 0, 0)),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/images/my_image.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Vegan Resto',
            maxLines: 2,
            style: TextStyle(
              fontFamily: 'BentonSans Bold',
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 10),
          Opacity(
            opacity: 0.5,
            child: Text(
              '12 Mins',
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'BentonSans Bold',
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
