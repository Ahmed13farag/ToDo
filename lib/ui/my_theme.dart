import 'package:flutter/material.dart';

class MyTheme {
    static const Color primaryLight = Color(0xFF5D9CEC);
    static const Color colorGray = Color(0xFFC8C9CB);


    static const Color scaffoldLightBackgroundColor = Color(0xFFDFECDB);

    static final lightTheme =   ThemeData(
        primaryColor: primaryLight,
        appBarTheme:const AppBarTheme(
            color: primaryLight,
        ),
        scaffoldBackgroundColor: scaffoldLightBackgroundColor,
       bottomNavigationBarTheme:const BottomNavigationBarThemeData(
           backgroundColor: Colors.transparent,
           elevation: 0,
           selectedIconTheme: IconThemeData(
               color: primaryLight,
               size: 36,
           ),
           unselectedIconTheme: IconThemeData(
               color: colorGray,
               size: 24,
           )
       ),
      bottomSheetTheme: const BottomSheetThemeData(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.only(
           topLeft: Radius.circular(20),
           topRight: Radius.circular(20)
         )
       )
      ),
      textTheme: const TextTheme(
         headline4: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,),
        headline5: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,

        ),
        headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,

          )
      )


    );


}