import '../theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTy extends StatelessWidget {
  const CustomCardTy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile (
            leading: Icon(
            Icons.photo,color: AppTheme.primary),
            title: Text('Im Title'),
            subtitle: Text('Anim ex culpa consectetur enim consequat enim excepteur elit esse laboreconsectetur enim consequat enim excepteur elit esse labore.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                    style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
                  child:const Text('Ok'),
                ),
              ],
          
            ),
          )
        ],
      ),
    );
  }
}