import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


ThemeData themeData(){
  return ThemeData(
    fontFamily: "Montserrat",
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xfe0075FF),
      selectedIconTheme: IconThemeData(
        size: 30.sp,
      ),
      unselectedIconTheme: IconThemeData(
        size: 25.sp,
      ),
    ),
    textTheme: TextTheme(
      labelLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      labelSmall: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      displayLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      titleMedium: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      titleSmall: TextStyle(
        fontSize: 10.sp,
        color: Colors.black
      ),
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(const Color(0xfe0075FF)),
      thickness: MaterialStateProperty.all(15.sp),
      radius: Radius.circular(4.r),
      interactive: true,
      thumbVisibility: MaterialStateProperty.all(true),
      trackVisibility: MaterialStateProperty.all(true),
      trackColor: MaterialStateProperty.all(Colors.black),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: const Color(0xfe0075FF),
      inactiveTrackColor: Colors.white,
      thumbColor: const Color(0xfe0075FF),
      trackHeight: 5.sp,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.sp),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 20.sp),
      showValueIndicator: ShowValueIndicator.always,
      valueIndicatorTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        height: 17.sp
      ),
      valueIndicatorColor: Colors.transparent
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xfe0075FF)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
        ),
      ),
    )
  );
}