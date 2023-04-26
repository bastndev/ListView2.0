import 'package:flutter/material.dart';

import 'package:github_flutter_1/models/models.dart';
import '../screens/screens.dart';
// import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOptions(
        route: 'ListView1',
        name: 'ListView tipe 1',
        screen: const ListView1Screen(), 
        icon: Icons.filter_1),
    MenuOptions(
        route: 'ListView2',
        name: 'ListView tipe 2',
        screen: const ListView2Screen(),
        icon: Icons.filter_2),
    MenuOptions(
        route: 'Alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOptions(
        route: 'Card',
        name: 'Tarjetas - Card',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOptions(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: 'Animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOptions(
        route: 'Inputs',
        name: 'Text Input',
        screen: const InputssScreen(),
        icon: Icons.input_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
      appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'ListView1': (BuildContext context) => const ListView1Screen(),
  //   'ListView2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
