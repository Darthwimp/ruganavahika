import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTests extends StatelessWidget {
  const SearchTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.h,
      width: 240.w,
      padding: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        color: const Color(0xfeBBE5ED),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search Tests",
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Colors.black),
          ),
          Container(
            width: 38.w,
            decoration: BoxDecoration(
              color: const Color(0xfe0075FF),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 23.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
