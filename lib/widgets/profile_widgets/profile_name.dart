import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileNameCard extends StatelessWidget {
  const ProfileNameCard(
      {super.key,
      required this.name,
      required this.email,
      required this.phone});

  final String name;
  final String email;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 340.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: const Color(0xfe0075FF),
        borderRadius: BorderRadius.circular(17.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(fontSize: 16.spMin),
                ),
                Gap(5.h),
                Text(
                  email,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(fontSize: 14.spMin,),
                ),
                Gap(5.h),
                Text(
                  phone,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(fontSize: 14.spMin),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CircleAvatar(
              maxRadius: 55.r,
              backgroundColor: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(2.r),
                child: Center(
                  child: CircleAvatar(
                    maxRadius: 50.r,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 80.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
