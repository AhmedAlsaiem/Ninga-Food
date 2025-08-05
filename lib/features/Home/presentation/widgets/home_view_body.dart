import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/features/Home/presentation/widgets/nearest_resturant_item.dart';
import 'package:ninga/features/Home/presentation/widgets/popular_menu_item.dart';
import 'package:ninga/features/Home/presentation/widgets/search_text_field_section.dart';
import 'package:ninga/features/Home/presentation/widgets/title_section.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            margin: EdgeInsets.only(left: 12, top: 15),
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
                                'Nearest Restaurant',
                                style: TextStyle(
                                  fontFamily: 'BentonSans Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  AppNavigation.pushName(
                                    context: context,
                                    route: AppRoutes.popularResturantView,
                                  );
                                },
                                child: Text(
                                  'View More',
                                  style: TextStyle(
                                    color: Color(0XFFFF8E4C),
                                    fontFamily: 'BentonSans Bold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(child: SizedBox(height: 15)),

                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return NearestResturantItem();
                            },
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(child: SizedBox(height: 30)),

                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular Menu',
                                style: TextStyle(
                                  fontFamily: 'BentonSans Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: TextButton(
                                  onPressed: () {
                                    AppNavigation.pushName(
                                      context: context,
                                      route: AppRoutes.popularMenuView,
                                    );
                                  },
                                  child: Text(
                                    'View More',
                                    style: TextStyle(
                                      color: Color(0XFFFF8E4C),
                                      fontFamily: 'BentonSans Bold',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(child: SizedBox(height: 15)),

                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return PopularMenuItem();
                        }, childCount: 5),
                      ),

                      SliverToBoxAdapter(child: SizedBox(height: 80)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
