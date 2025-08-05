import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/features/Home/presentation/widgets/nearest_resturant_item.dart';
import 'package:ninga/features/Home/presentation/widgets/popular_menu_item.dart';
import 'package:ninga/features/Home/presentation/widgets/search_text_field_section.dart';
import 'package:ninga/features/Home/presentation/widgets/title_section.dart';

class PopularMenuViewBody extends StatelessWidget {
  const PopularMenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: context.screenHeight * 0.245,
          width: double.infinity,
          child: SvgPicture.asset(
            AssetsImage.authintactionBackground,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 5, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TitleSection(),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SearchTextFieldSection(),
              ),
              SizedBox(height: 40),
              Text(
                'Popular Menu',
                style: TextStyle(
                  fontFamily: 'BentonSans Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return PopularMenuItem();
                      },
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 90)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
