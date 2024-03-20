import 'package:device_preview/device_preview.dart';
import 'package:flutter/services.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/utils/font.dart';

import 'screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: LogisticColors.black,
  ));
  runApp(
    // Help to test responsiveness of apk
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 687),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            title: 'Logistic App',
            theme: ThemeData(
              fontFamily: LogisticFonts.fontFamily,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: const SplashScreen());
  }
}
