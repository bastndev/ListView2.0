import 'package:flutter/material.dart';

class AppTheme {
  // AppBar Color and ALL
  static const Color primary = Colors.teal;

// --- --- --- --- --- LightMode - Color
  static final ThemeData lighTheme = ThemeData.light().copyWith(
      
      //primari color
      primaryColor: Colors.indigo,

      //AppBar Theme

      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0
    ),

  // TextButton Theme Esta baina me causa problema pero ya sabes lla solucion es siple- solo pon AppTheme.primary en colores de letras
      // textButtonTheme: TextButtonThemeData(
      //   style: TextButton.styleFrom(foregroundColor:primary),
      // )
  // Aquí puedes definir cualquier otra propiedad que necesites cambiar


    // FloattinActioButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
),
  // ElevatedButtons
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
            backgroundColor: (Colors.teal) ,
            shape: const StadiumBorder(),
            elevation: 0,
          ),   
  ),


  inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: primary),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide( color: primary),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
    ),

    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide( color: primary),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
    ),
    
    border: OutlineInputBorder(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
    ),
    
  )

);

// --- --- --- --- --- Dark Mode - Color
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      
      //primari color
      primaryColor: Colors.indigo,

      //AppBar Theme

      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0
    ),
    scaffoldBackgroundColor: const Color(0xFF1b1c23)
  );
}
