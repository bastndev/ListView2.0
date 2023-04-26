import 'package:flutter/material.dart';

import 'package:github_flutter_1/router/app_routers.dart';
import 'package:github_flutter_1/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      /* --- --- --- --- App Bar */
      appBar: AppBar(
        title: const Text('Flutter Components'),
        elevation: 0,
      ),

      /*  --- --- --- --- Body - Cuerpo*/
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                leading: Icon( menuOptions [i].icon, color: AppTheme.primary,),
                title: Text( menuOptions[i].name),
                onTap: () {
                  
                  // final route = MaterialPageRoute(
                  //   builder: (context) => const ListView1Screen(),
                  // );
                  // Navigator.pushReplacement(context, route);

                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length
        ),
    );
  }
}
