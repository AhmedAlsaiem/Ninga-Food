import 'package:flutter/material.dart';

class PopularMenuItem extends StatelessWidget {
  const PopularMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: const Color.fromARGB(31, 255, 0, 0)),

        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/images/my_image2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Herbal Pancake',
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'BentonSans Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Opacity(
                opacity: 0.5,
                child: Text(
                  'Warung Herbal',
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
          Spacer(),
          Text(
            r'$5',
            maxLines: 2,
            style: TextStyle(
              color: Color(0XFFFEAD1D),
              fontFamily: 'BentonSans Bold',
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
