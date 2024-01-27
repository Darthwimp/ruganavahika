import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BookTestCard extends StatelessWidget {
  const BookTestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145.w,
      margin: EdgeInsets.only(bottom: 30.sp, right: 5.sp, left: 5.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: const Color(0xfe0075FF),
          width: 2.sp,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 63.h,
            width: 145.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: const Color(0xfe0075FF),
                  width: 2.sp,
                ),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13.r),
                topRight: Radius.circular(13.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(5.h),
                Text(
                  "Complete Blood Count",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  "28 tests included",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Container(
            height: 35.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: const Color(0xfe0075FF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(13.r),
                bottomRight: Radius.circular(13.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Book Now",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
