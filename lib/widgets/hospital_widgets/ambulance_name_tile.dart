import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HospitalNameTile extends StatelessWidget {
  const HospitalNameTile(
      {super.key,
      required this.title,
      required this.time,
      required this.price,
      required this.ambulanceType});

  final String title;
  final String time;
  final String price;
  final String ambulanceType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      margin: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 5.sp, bottom: 5.sp),
      decoration: BoxDecoration(
        color: const Color(0xfe0075FF),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Container(
            width: 55.w,
            height: 55.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10.sp,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/ambulance.svg"),
                Text(
                  ambulanceType,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: 9.sp,
                        color: const Color(0xfe0075FF),
                      ),
                )
              ],
            ),
          ),
          Gap(10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 14.sp),
              ),
              Text(
                "$time am",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "₹ $price",
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
          Gap(10.w)
        ],
      ),
    );
  }
}
