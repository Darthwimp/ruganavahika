import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePageTiles extends StatelessWidget {
  const ProfilePageTiles({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
