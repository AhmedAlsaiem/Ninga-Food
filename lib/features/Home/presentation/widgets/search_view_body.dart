import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/features/Home/presentation/widgets/custom_search_button.dart';
import 'package:ninga/features/Home/presentation/widgets/custom_text_field.dart';
import 'package:ninga/features/Home/presentation/widgets/search_item.dart';
import 'package:ninga/features/Home/presentation/widgets/title_section.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: context.screenHeight * 0.2,
          width: double.infinity,
          child: SvgPicture.asset(
            AssetsImage.authintactionBackground,
            fit: BoxFit.cover,
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 20, right: 12, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TitleSection(),
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CustomTextField(),
              ),
              SizedBox(height: 20),
              Text(
                'Type',
                style: TextStyle(
                  fontFamily: 'BentonSans Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 30,
                children: [
                  SearchItem(item: 'Restaurant'),
                  SearchItem(item: 'Menu'),
                ],
              ),
              SizedBox(height: 15),

              Text(
                'Location',
                style: TextStyle(
                  fontFamily: 'BentonSans Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 20,
                children: [
                  SearchItem(item: '1 Km'),
                  SearchItem(item: '>10 Km'),
                  SearchItem(item: '<10 Km'),
                ],
              ),
              SizedBox(height: 15),

              Text(
                'Food',
                style: TextStyle(
                  fontFamily: 'BentonSans Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 15),
              Row(
                spacing: 20,
                children: [
                  SearchItem(item: 'Cake'),
                  SearchItem(item: 'Soup'),
                  SearchItem(item: 'Main Course'),
                ],
              ),
              SizedBox(height: 15),
              Row(
                spacing: 20,
                children: [
                  SearchItem(item: 'Appetizer'),
                  SearchItem(item: 'Dessert'),
                ],
              ),
              Spacer(),
              CustomSearchButton(title: 'Search'),
            ],
          ),
        ),
      ],
    );
  }
}


