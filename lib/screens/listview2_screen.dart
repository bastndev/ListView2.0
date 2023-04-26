import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Axe','Pudge','Ursa','Mirana','Drow Ranger','Earth Shaker',];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* --- --- --- --- --- AppBar */
        appBar: AppBar(
          title: const Text(
            'Dota 2 Hero',
            style: TextStyle(fontSize: 27),
          ),
          // elevation: 0,
          // backgroundColor: Colors.indigo,
        ),

        /* --- --- --- --- --- --- Body */
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(
              options[i],
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.indigo,
            ),
            onTap:   () {
              final game = options[i];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
