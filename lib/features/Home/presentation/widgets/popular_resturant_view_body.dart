import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/features/Home/presentation/widgets/nearest_resturant_item.dart';
import 'package:ninga/features/Home/presentation/widgets/search_text_field_section.dart';
import 'package:ninga/features/Home/presentation/widgets/title_section.dart';

class PopularResturantViewBody extends StatelessWidget {
  const PopularResturantViewBody({super.key});

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
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Restaurant',
                              style: TextStyle(
                                fontFamily: 'BentonSans Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 15)),

                    SliverGrid.builder(
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 200,
                      ),
                      itemBuilder: (context, index) {
                        return NearestResturantItem();
                      },
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 100)),
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
