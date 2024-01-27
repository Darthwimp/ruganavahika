import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TestCard extends StatelessWidget {
  const TestCard({
    super.key,
    required this.iconNo,
    required this.testName,
  });

  final int iconNo;
  final String testName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      margin: EdgeInsets.all(5.sp),
      decoration: BoxDecoration(
        color: const Color(0xfe0075FF),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/shop_icons/shop_icon$iconNo.png"),
          Gap(10.h),
          Text(
            testName,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 11.sp),
          )
        ],
      ),
    );
  }
}
