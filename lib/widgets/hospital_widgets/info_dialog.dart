import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

Future<void> infoDialogBuilder(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.info_outline,
                size: 20.sp,
                color: Colors.white,
              ),
              Gap(5.w),
              Text(
                "Info",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
          content: SizedBox(
            height: 200.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ambulance Type",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Gap(10.h),
                Row(
                  children: [
                    showText(context, "Basic"),
                  ],
                ),
                Gap(20.h),
                showText(context, "Advanced"),
                Gap(20.h),
                showText(context, "Mortuary")
              ],
            ),
          ),
          backgroundColor: Colors.black,
        );
      });
}

Widget showText(BuildContext context, String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.sp),
    child: Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Icon(
          Icons.arrow_drop_down_rounded,
          size: 20.sp,
          color: Colors.white,
        )
      ],
    ),
  );
}
