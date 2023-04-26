import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ['Capitan America', 'Chalekon','Lotar', 'Cetro Verde',"Guisante", "Guisante loco", "Divina", "BKB", "MKB", "Buriza", "Basher", "Diffusal", "VG", "Heart", "Arcanes", "PT", "BOT", "Necro", "Manta", "AC", "Skadi", "Sata", "Aegis", "Gem", "Flying"];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar
      (title: const Text('Dota 1 Items')),
      /* --- --- --- --- --- --- Body */
      body: ListView(
        children: [
          

      ...options.map(
          (game)=> ListTile (title: Text(game),
          trailing: const Icon(
          Icons.keyboard_arrow_right_sharp),
          )        
          ).toList(),  

          const Divider(),//linea  Separacion 
        ],
      )  
    );
  }
}