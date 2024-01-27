import 'package:app_dev_client_project_1/widgets/home_widgets/location_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

AppBar customAppBar(bool showLocationDisplay) {
  return AppBar(
    title: Column(
      children: [
        Image.asset("assets/images/logo.png"),
        Gap(5.h),
        if (showLocationDisplay) const LocationDisplay(),
      ],
    ),
    centerTitle: true,
    leading: Builder(builder: (context) {
      return TextButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        child: Image.asset(
          "assets/icons/app_bar_icons/menu.png",
          height: 20.h,
          width: 20.w,
        ),
      );
    }),
    toolbarHeight: (showLocationDisplay) ? 70.h : 50.h,
    actions: [
      GestureDetector(
        onTap: () {},
        child: Image.asset("assets/icons/app_bar_icons/notification_bell.png"),
      ),
      Gap(10.w),
    ],
  );
}
