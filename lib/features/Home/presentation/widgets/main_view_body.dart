import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/features/Home/presentation/views/home_view.dart';
import 'package:ninga/features/Home/presentation/views/popular_resturant_view.dart';
import 'package:ninga/features/Home/presentation/views/poular_meau_view.dart';
import 'package:ninga/features/Home/presentation/views/search_view.dart';
import 'package:ninga/features/chat/presentation/views/chat_view.dart';
import 'package:ninga/features/profile/presentation/views/profile_view.dart';
import 'package:ninga/features/shopping/presentation/views/shopping_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:badges/badges.dart' as badges;

class MainViewBody extends StatefulWidget {
  const MainViewBody({super.key});

  @override
  State<MainViewBody> createState() => _MainViewBodyState();
}

class _MainViewBodyState extends State<MainViewBody> {
  late PersistentTabController controller;

  @override
  void initState() {
    super.initState();
    controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      navBarHeight: MediaQuery.sizeOf(context).height * 0.09,
      context,
      controller: controller,
      screens: screens(),
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.home, color: Color(0XFF53E88B)),
          title: ("Home"),
          textStyle: TextStyle(fontSize: 13, fontFamily: 'BentonSans'),
          activeColorPrimary: AppColors.mainColorStart,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
            routes: {
              "/popularResturantView":
                  ( context) => const PopularResturantView(),
              '/searchView': ( context) => const SearchView(),
               '/popularMenuView': ( context) => const PopularMenuView(),
            },
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.profile, color: Color(0XFF53E88B)),
          title: ("Profile"),
          textStyle: TextStyle(fontSize: 13, fontFamily: 'BentonSans'),
          activeColorPrimary: AppColors.mainColorStart,
        ),
        PersistentBottomNavBarItem(
          icon: badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(6),
            ),
            position: badges.BadgePosition.topEnd(top: -4, end: -4),
            child: const Icon(IconlyBold.buy, color: Color(0XFF53E88B)),
          ),
          title: ("Shop"),
          textStyle: TextStyle(fontSize: 13, fontFamily: 'BentonSans'),
          activeColorPrimary: AppColors.mainColorStart,
        ),
        PersistentBottomNavBarItem(
          icon: badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(6),
            ),
            position: badges.BadgePosition.topEnd(top: -4, end: -4),
            child: const Icon(IconlyBold.chat, color: Color(0XFF53E88B)),
          ),
          title: ("Chat"),
          textStyle: TextStyle(fontSize: 13, fontFamily: 'BentonSans'),
          activeColorPrimary: AppColors.mainColorStart,
        ),
      ],
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 300),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
    );
  }
}

List<Widget> screens() {
  return [HomeView(), ProfileView(), ShoppingView(), ChatView()];
}
