import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:isalmi_mon_c10/ui/provider/locale_provider.dart';
import 'package:isalmi_mon_c10/ui/provider/theme_provider.dart';
import 'package:isalmi_mon_c10/ui/screens/hadeth_details/hadeth_details.dart';
import 'package:isalmi_mon_c10/ui/screens/home/home_screen.dart';
import 'package:isalmi_mon_c10/ui/screens/splash/splash_screen.dart';
import 'package:isalmi_mon_c10/ui/screens/sura_details/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isalmi_mon_c10/ui/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleProvider provider = Provider.of(context);
    ThemeProvider themeProvider = Provider.of(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(provider.currentLocale),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.currentThemeMode,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
        HadethDetails.routeName: (_) => HadethDetails()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}