import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


// import '../widgets/custom_card_ty.dart';

class CardScreen extends StatelessWidget {
  
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const  Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        children:  const [

        CustomCardTy(),
        SizedBox(height: 20),
        CustomCardTy2(  imageUrl: 'https://acortar.link/elvEaF', name: null),
        SizedBox(height: 20),
        CustomCardTy2( imageUrl: 'https://acortar.link/UzbMil', name: 'Model AddI 2' ),
        SizedBox(height: 20),
        CustomCardTy2( imageUrl: 'https://acortar.link/O3eszY', name: null   ),
        SizedBox(height: 100),


        ],
      )
    );
  }
}
