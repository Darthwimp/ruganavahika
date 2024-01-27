import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OrderWithPrescription extends StatelessWidget {
  const OrderWithPrescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: const Color(0xfe0075FF),
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.assignment,
                  color: Color(0xfe0075FF),
                  size: 45.sp,
                ),
              ),
            ),
          ),
          Gap(15.w),
          Expanded(
            flex: 2,
            child: Text(
              "Order With Prescription",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
