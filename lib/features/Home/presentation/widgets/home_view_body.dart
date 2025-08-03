import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ninga/config/theme/light_theme.dart';
import 'package:ninga/features/Home/presentation/widgets/custom_text_field.dart';
import 'package:ninga/features/Home/presentation/widgets/nearest_resturant_item.dart';
import 'package:ninga/features/Home/presentation/widgets/popular_menu_item.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 12, top: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.623,
                      child: Text(
                        'Find Your Favorite Food',
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'BentonSans Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),
                    ),
                    IconButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      iconSize: 29,
                      padding: const EdgeInsets.all(10),
                      onPressed: () {},
                      icon: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Color(0XFFFF5F5F),
                          padding: EdgeInsets.all(4),
                        ),
                        position: badges.BadgePosition.topEnd(top: 0.5, end: 3),
                        child: const Icon(
                          IconlyLight.notification,
                          color: Color(0XFF53E88B),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
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
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      iconSize: 29,
                      padding: const EdgeInsets.all(15),
                      onPressed: () {},
                      icon: Icon(
                        IconlyBold.filter,
                        color:
                            Theme.of(
                              context,
                            ).inputDecorationTheme.prefixIconColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),

              Expanded(
                child: CustomScrollView(
                  slivers: [
                    // Nearest Restaurant Header
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
                            Text(
                              'View More',
                              style: TextStyle(
                                color: Color(0XFFFF8E4C),
                                fontFamily: 'BentonSans Bold',
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
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
      ),
    );
  }
}
