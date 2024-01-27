import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationDisplay extends StatelessWidget {
  const LocationDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 23.h,
      decoration: BoxDecoration(
        color: const Color(0xfeBBE5ED),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_pin,
            size: 13.h,
            color: Colors.red,
          ),
          SizedBox(width: 2.w),
          Text(
            "Kolkata, West Bengal",
            style: TextStyle(fontSize: 12.h),
          ),
        ],
      ),
    );
  }
}
