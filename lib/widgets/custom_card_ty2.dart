import 'package:flutter/material.dart';
import 'package:github_flutter_1/theme/app_theme.dart';

class CustomCardTy2 extends StatelessWidget {

  final String imageUrl; //URL Image
  final String? name; //Description
  const CustomCardTy2 ({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.6),

      child: Column(children: [
        FadeInImage(
          image: NetworkImage( imageUrl),
          placeholder: const AssetImage('assets/img/loading2.gif'),
          width: double.infinity,
          height: 400,
          fit: BoxFit.cover,
          fadeInDuration: const  Duration(milliseconds: 100),
        ),

        if (name != null)
        Container(
          alignment: AlignmentDirectional.centerStart,
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Text( name ?? 'NothingTosay'),
        )
      ]),
    );
  }
}
