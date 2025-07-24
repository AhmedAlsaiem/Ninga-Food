import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ninga/core/functions/custom_localization_delgate.dart';
import 'package:ninga/config/theme/dark_theme.dart';
import 'package:ninga/config/theme/light_theme.dart';
import 'package:ninga/core/widgets/app_wrapper.dart';

import 'config/routes/app_router.dart';
import 'core/functions/network/inital_route_method.dart';
import 'generated/l10n.dart';

class Ninga extends StatelessWidget {
  const Ninga({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: false,
      builder:
          (context) => ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return AppWrapper(
                child: MaterialApp(
                  
                  locale: const Locale('en'),
                  localizationsDelegates: customLocalizationDelegates,
                  supportedLocales: S.delegate.supportedLocales,
                  debugShowCheckedModeBanner: false,
                  theme: lightTheme(),
                  darkTheme: darkTheme(),
                  themeMode: ThemeMode.system,
                  onGenerateRoute: AppRouter.generateRoute,
                  initialRoute:initalRouteMethod() ,
                ),
              );
            },
          ),
    );
  }
}
