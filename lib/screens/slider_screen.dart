import 'package:flutter/material.dart';
import 'package:github_flutter_1/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {

  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _SliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Slider && Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.primary,
            
            onChanged: _SliderEnabled ?
            (value){
              setState(() {
              _sliderValue = value;
              });
            }
            :null
          ),

          // Checkbox(
          //   value: _SliderEnabled, 
          //   onChanged: (value){
          //     _SliderEnabled = value ?? true;
          //     setState(() {});}
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _SliderEnabled, 
            onChanged: (value) => setState(() {_SliderEnabled = value ?? true;})
          ),
          // Switch(
          //   activeColor: AppTheme.primary,
          //   value: _SliderEnabled, 
          //   onChanged: (value) => setState(() {_SliderEnabled = value ?? true;})
          // ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'), 
            value: _SliderEnabled, 
            onChanged: (value) => setState(() {_SliderEnabled = value ?? true;})
          ),
          const AboutListTile(),

      /* --- --- --- --- --- --- -- --- */
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image:const  NetworkImage('https://acortar.link/AWlIV8'),
                fit:BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

        ]
      ),
    );
  }
}