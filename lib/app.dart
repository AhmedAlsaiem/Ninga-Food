import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ninga/core/functions/custom_localization_delgate.dart';
import 'package:ninga/config/theme/dark_theme.dart';
import 'package:ninga/config/theme/light_theme.dart';
import 'package:ninga/core/utils/styles_manager.dart';

import 'config/routes/app_router.dart';
import 'generated/l10n.dart';

class Ninga extends StatelessWidget {
  const Ninga({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: true,
      builder:
          (context) => ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            enableScaleWH: () {
              return true;
            },
            splitScreenMode: true,
            child: MaterialApp(
              locale: Locale('en'),
              localizationsDelegates: customLocalizationDelegates,
              supportedLocales: S.delegate.supportedLocales,

              debugShowCheckedModeBanner: false,
              theme: lightTheme(),
              darkTheme: darkTheme(),
              themeMode: ThemeMode.system,
              onGenerateRoute: AppRouter.generateRoute,

              home: homwiw(),
            ),
          ),
    );
  }
}

class homwiw extends StatelessWidget {
  const homwiw({super.key});

  @override
  Widget build(BuildContext context) {
    print(200.h);
    print(100.w);

    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.red,
        title: Text(
          S.of(context).appName,
          style: AppTextStyles.textStyleBold16,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 200.h, width: 200.w, color: Colors.orange),
          Row(
            children: [
              Text(S.of(context).appName, style: AppTextStyles.textStyleBold16),
            ],
          ),
          Text(S.of(context).appName, style: AppTextStyles.textStyleBold16),
        ],
      ),
    );
  }
}
