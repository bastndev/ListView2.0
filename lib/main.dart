import 'package:flutter/material.dart';

// import 'package:github_flutter_1/screens/screens.dart';
import 'package:github_flutter_1/router/app_routers.dart';
import 'package:github_flutter_1/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',

      /* --- --- --- --- --- --- Links */
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppTheme.lighTheme,
    );
  }
}
