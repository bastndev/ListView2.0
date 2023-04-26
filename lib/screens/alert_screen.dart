import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
/* --- --- --- --- --- IOS Interface */
  void displayDialogIOS(BuildContext context) {
    
    /* --- --- --- --- --- --- IOS Alert  */
    showCupertinoDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title:  const Text('Alert'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
              Text('This is message is, so bad close App please!'),
              SizedBox(height: 10),
              FlutterLogo(
                size: 90,
              )
            ]),
            /*--- --- --- --- --- Butoons Colors IOS*/
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Close',style: TextStyle(color: Colors.red),)
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'))
            ],
          );
        
        }
    );
  }
/* --- --- --- --- --- Android Interface */
  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Alert'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('This is message is, so bad close App please!'),
              SizedBox(height: 10),
              FlutterLogo(
                size: 50,
              )
            ]),
            /*--- --- --- --- --- Butoons Colors Android*/
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Close', style: TextStyle(color: Colors.red),)
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: (Colors.teal) ,
              //   shape: const StadiumBorder(),
              //   elevation: 0,
              // ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Text Here',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              // onPressed: () => displayDialogAndroid(context)
              onPressed: () => !Platform.isAndroid 
              ? displayDialogAndroid (context)
              : displayDialogIOS (context)
              )
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
