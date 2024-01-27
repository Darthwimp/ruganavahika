import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomePageGridWidget extends StatelessWidget {
  const HomePageGridWidget({
    super.key,
    this.color,
    required this.iconNo,
    this.label,
  });

  final Color? color;
  final int iconNo;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? const Color(0xfe0075FF),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/home_page_icons/home_icon$iconNo.png"),
          Gap(10.h),
          Text(label ?? "", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.white),)
        ],
      ),
    );
  }
}
