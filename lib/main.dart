import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touch_app/core/helper_functions/on_generaye_routes.dart';
import 'package:touch_app/core/services/shared_preference_singletone.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/features/splash/presentation/views/splash_view.dart';
import 'package:touch_app/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();

  runApp(const Touch());
}

class Touch extends StatelessWidget {
  const Touch({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          fontFamily: 'FFShamel',
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale('ar'),
        onGenerateRoute: onGenerateRoute,
        initialRoute: SplashView.routeName,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
